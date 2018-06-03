unit U_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_cad_clientes = class(TForm)
    PageControl1: TPageControl;
    tb_cadastro: TTabSheet;
    tb_consulta: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    btn_inserir: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_salvar: TSpeedButton;
    btn_excluir: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_fechar: TSpeedButton;
    btn_localizar: TSpeedButton;
    txt_id: TDBEdit;
    txt_nome: TDBEdit;
    txt_endereco: TDBEdit;
    txt_bairro: TDBEdit;
    txt_cidade: TDBEdit;
    cb_uf: TDBComboBox;
    cb_situacao: TDBComboBox;
    txt_cep: TDBEdit;
    txt_rg: TDBEdit;
    txt_cpf: TDBEdit;
    txt_telefone: TDBEdit;
    txt_celular: TDBEdit;
    txt_email: TDBEdit;
    txt_data_nasc: TDBEdit;
    txt_data_cad: TDBEdit;
    btn_voltar: TButton;
    DBGrid1: TDBGrid;
    btn_imprimir: TButton;
    btn_pesquisar: TButton;
    txt_buscar: TEdit;
    lb_buscar: TLabel;
    rg_opcoes: TRadioGroup;
    data_nasc: TDateTimePicker;
    lb_msg: TLabel;
    btn_buscarTudo: TButton;
    txt_impressao: TEdit;
    procedure btn_inserirClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure rg_opcoesClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_buscarTudoClick(Sender: TObject);
    procedure txt_buscarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_imprimirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    procedure ConfigBotoes;
    procedure QuantidadeRegistros;
    procedure BuscarTudo;
    procedure DesativarTxt;
    procedure AtivarTxt;

  public
    { Public declarations }
  end;

var
  frm_cad_clientes: Tfrm_cad_clientes;

implementation

{$R *.dfm}

uses U_dm;



procedure Tfrm_cad_clientes.AtivarTxt;
begin
       txt_id.Enabled := true;
  txt_nome.Enabled := true;
  txt_endereco.Enabled := true;
  txt_bairro.Enabled := true;
  txt_cidade.Enabled := true;
  txt_cep.Enabled := true;
  txt_celular.Enabled := true;
  txt_telefone.Enabled := true;
  txt_data_nasc.Enabled := true;
  txt_data_cad.Enabled := true;
  cb_uf.Enabled := true;
  cb_situacao.Enabled := true;
  txt_cpf.Enabled := true;
  txt_email.Enabled := true;
  txt_rg.Enabled := true;
end;

procedure Tfrm_cad_clientes.btn_buscarTudoClick(Sender: TObject);
begin
  BuscarTudo;
end;

procedure Tfrm_cad_clientes.btn_cancelarClick(Sender: TObject);
begin
    dm.FDConnection1.Connected := True;
    dm.tb_clientes.Cancel;
    ConfigBotoes;
end;

procedure Tfrm_cad_clientes.btn_editarClick(Sender: TObject);
begin
    dm.FDConnection1.Connected := True;
    AtivarTxt;
    dm.tb_clientes.Edit;
    ConfigBotoes;

end;

procedure Tfrm_cad_clientes.btn_excluirClick(Sender: TObject);
begin

  dm.FDConnection1.Connected := True;

  case Application.MessageBox('Deseja Excluir o Cliente', 'Excluir Cliente', MB_YESNO + MB_ICONQUESTION) of
   IDYES:
   begin

     dm.SQL_con_cliente.Close;
     dm.SQL_con_cliente.SQL.Clear;
     dm.SQL_con_cliente.SQL.Add('select * from clientes where cli_id = :codigo');
     dm.SQL_con_cliente.ParamByName('codigo').Value := txt_id.Text;
     dm.SQL_con_cliente.Open;
     dm.SQL_con_cliente.Delete;
     ShowMessage('O Cliente foi excluido!!');
   end;

   IDNO:
   begin
     exit;
   end;
  end;
end;

procedure Tfrm_cad_clientes.btn_fecharClick(Sender: TObject);
begin
  if dm.tb_clientes.State in [dsInsert, dsEdit] then
  begin
    showMessage ('Salve ou Cancele o registro antes de fechar');
    exit;
  end
  else
  begin
    close;
  end;

end;

procedure Tfrm_cad_clientes.btn_imprimirClick(Sender: TObject);
begin
  with dm.SQL_imprimir_cliente do
  begin
    Close;
    Sql.Clear;
    if txt_impressao.Text = '' then
    begin
       SQL.Add('select * from clientes');
    end
    else
    begin
       SQL.Add('select * from clientes where cli_id = :codigo');
       ParamByName('codigo').Value := strtoint(txt_impressao.Text);
    end;



    Open;

    dm.report_cliente.LoadFromFile(GetCurrentDir + '\rel\rel_cliente.fr3');
    dm.report_cliente.ShowReport();

  end;
end;

procedure Tfrm_cad_clientes.btn_inserirClick(Sender: TObject);
begin

  //Iniciando a Inserção na tabela
  dm.FDConnection1.Connected := True;
  dm.tb_clientes.Active := True;
  dm.tb_clientes.Insert;


  //Habilitando e desabilitando botões
  ConfigBotoes;

  //Tratamento prévio dos campos
  dm.tb_clientescli_data_cad.Value := date;
  dm.tb_clientescli_cidade.Value := 'Belo Horizonte';
  dm.tb_clientescli_uf.Value := 'MG';
  dm.tb_clientescli_situacao.Value := 'Ativo';



  txt_nome.SetFocus;
  AtivarTxt;


end;

procedure Tfrm_cad_clientes.btn_localizarClick(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
  tb_consulta.TabVisible := true;
  tb_cadastro.TabVisible := false;

  BuscarTudo;

end;

procedure Tfrm_cad_clientes.btn_pesquisarClick(Sender: TObject);
begin
 if txt_buscar.Text = '' then
  begin
  showMessage ('Digite algo para buscar');
  txt_buscar.SetFocus;
  exit;
  end;

  with  dm.SQL_con_cliente do
  begin
      Close;
      SQL.Clear;
      SQL.Add('select * from clientes');

      case rg_opcoes.ItemIndex of
      0:
      begin
         SQL.Add('where cli_id = :codigo');
         ParamByName('codigo').Value := txt_buscar.Text;
      end;

       1:
      begin
         SQL.Add('where cli_nome like :nome');
         ParamByName('nome').Value := '%' + txt_buscar.Text + '%';

      end;



       2:
      begin
          SQL.Add('where cli_rg = :rg');
         ParamByName('rg').Value := txt_buscar.Text;
      end;


       3:
      begin
         SQL.Add('where cli_cpf = :cpf');
         ParamByName('cpf').Value := txt_buscar.Text;
      end;


       4:
      begin
          SQL.Add('where cli_data_nasc = :data');
         ParamByName('data').AsDate := strToDate(formatDateTime('dd/mm/yyyy' , data_nasc.Date));

      end;

      end;

      Open;

      QuantidadeRegistros;

  end;
end;

procedure Tfrm_cad_clientes.btn_salvarClick(Sender: TObject);
begin
   dm.FDConnection1.Connected := True;

   dm.tb_clientes.Post;
   ShowMessage('Cliente Salvo com Sucesso!!');
   ConfigBotoes;
end;

procedure Tfrm_cad_clientes.btn_voltarClick(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  tb_consulta.TabVisible := false;
  tb_cadastro.TabVisible := true;
end;

procedure Tfrm_cad_clientes.BuscarTudo;
begin
dm.SQL_con_cliente.Close;
 dm.SQL_con_cliente.SQL.Clear;
 dm.SQL_con_cliente.SQL.Add('select * from clientes');
 dm.SQL_con_cliente.Open;
 btn_imprimir.Enabled := True;
  QuantidadeRegistros;
end;

procedure Tfrm_cad_clientes.ConfigBotoes;
begin
  btn_inserir.Enabled := dm.tb_clientes.State in [dsbrowse];
  btn_editar.Enabled := dm.tb_clientes.State in [dsbrowse];
  btn_excluir.Enabled := dm.tb_clientes.State in [dsbrowse];
  btn_salvar.Enabled :=  dm.tb_clientes.State in [dsinsert, dsedit];
  btn_cancelar.Enabled :=  dm.tb_clientes.State in [dsinsert, dsedit];


end;

procedure Tfrm_cad_clientes.DBGrid1CellClick(Column: TColumn);
begin
  txt_impressao.Text := inttostr(dm.SQL_con_clientecli_id.Value);
  btn_imprimir.Enabled := True;
end;

procedure Tfrm_cad_clientes.DBGrid1DblClick(Sender: TObject);
begin
     PageControl1.TabIndex := 0;
  tb_consulta.TabVisible := false;
  tb_cadastro.TabVisible := true;
  txt_id.Text := inttostr(dm.SQL_con_clientecli_id.Value);
  txt_nome.Text := dm.SQL_con_clientecli_nome.Value;
  txt_endereco.Text := dm.SQL_con_clientecli_endereco.Value;
  txt_bairro.Text := dm.SQL_con_clientecli_bairro.Value;
  txt_cidade.Text := dm.SQL_con_clientecli_cidade.Value;
  cb_uf.Text := dm.SQL_con_clientecli_uf.Value;
  txt_cpf.Text := dm.SQL_con_clientecli_cpf.Value;
  txt_rg.Text := dm.SQL_con_clientecli_rg.Value;
  txt_cep.Text := dm.SQL_con_clientecli_cep.Value;
  txt_telefone.Text := dm.SQL_con_clientecli_tel.Value;
  txt_celular.Text := dm.SQL_con_clientecli_cel.Value;
  txt_email.Text := dm.SQL_con_clientecli_email.Value;
  txt_data_nasc.Text := datetostr(dm.SQL_con_clientecli_data_nasc.Value);
  txt_data_cad.Text := datetostr(dm.SQL_con_clientecli_data_cad.Value);
  cb_situacao.Text := dm.SQL_con_clientecli_situacao.Value;
   DesativarTxt;

end;

procedure Tfrm_cad_clientes.DesativarTxt;
begin
  txt_id.Enabled := false;
  txt_nome.Enabled := false;
  txt_endereco.Enabled := false;
  txt_bairro.Enabled := false;
  txt_cidade.Enabled := false;
  txt_cep.Enabled := false;
  txt_celular.Enabled := false;
  txt_telefone.Enabled := false;
  txt_data_nasc.Enabled := false;
  txt_data_cad.Enabled := false;
  cb_uf.Enabled := false;
  cb_situacao.Enabled := false;
  txt_cpf.Enabled := false;
  txt_email.Enabled := false;
  txt_rg.Enabled := false;

end;

procedure Tfrm_cad_clientes.FormCreate(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  tb_consulta.TabVisible := false;

  btn_salvar.Enabled := false;
  btn_cancelar.Enabled := false;

  txt_buscar.Visible := false;
  lb_buscar.Visible := false;
  data_nasc.Visible := false;

  btn_imprimir.Enabled := false;
  btn_pesquisar.Enabled := false;



end;

procedure Tfrm_cad_clientes.QuantidadeRegistros;
begin
      if dm.SQL_con_cliente.RecordCount = 0 then
      begin
        lb_msg.Visible := True;
        lb_msg.Caption := '';
        lb_msg.Caption := 'Nenhum cliente encontrado!!';
        btn_imprimir.Enabled := False;
      end;


      if dm.SQL_con_cliente.RecordCount = 1 then
      begin
        lb_msg.Visible := True;
        lb_msg.Caption := '';
        lb_msg.Caption := 'Foi encontrado ' + intTostr(dm.SQL_con_cliente.RecordCount) + ' Cliente';
        btn_imprimir.Enabled := True;
      end;


      if dm.SQL_con_cliente.RecordCount > 1 then
      begin
        lb_msg.Visible := True;
        lb_msg.Caption := '';
        lb_msg.Caption := 'Foram encontrados ' + intTostr(dm.SQL_con_cliente.RecordCount) + ' Clientes';
        btn_imprimir.Enabled := True;
      end;
end;

procedure Tfrm_cad_clientes.rg_opcoesClick(Sender: TObject);
begin
    case rg_opcoes.ItemIndex of

    0:
    begin
       txt_buscar.Visible := true;
       lb_buscar.Caption := 'Digite o código do Cliente';
       lb_buscar.Visible := true;
       data_nasc.Visible := false;
       txt_buscar.Clear;
       btn_pesquisar.Enabled := true;
       txt_buscar.SetFocus;
    end;

    1:
    begin
      txt_buscar.Visible := true;
       lb_buscar.Caption := 'Digite o nome do Cliente';
       lb_buscar.Visible := true;
       data_nasc.Visible := false;
       txt_buscar.Clear;
       btn_pesquisar.Enabled := true;
       txt_buscar.SetFocus;
    end;


    2:
    begin
      txt_buscar.Visible := true;
       lb_buscar.Caption := 'Digite o RG do Cliente';
       lb_buscar.Visible := true;
       data_nasc.Visible := false;
       txt_buscar.Clear;
       btn_pesquisar.Enabled := true;
       txt_buscar.SetFocus;
    end;


    3:
    begin
      txt_buscar.Visible := true;
       lb_buscar.Caption := 'Digite o CPF do Cliente';
       lb_buscar.Visible := true;
       data_nasc.Visible := false;
       txt_buscar.Clear;
       btn_pesquisar.Enabled := true;
       txt_buscar.SetFocus;
    end;


    4:
    begin
        txt_buscar.Visible := false;
       lb_buscar.Caption := 'Data de nascimento do Cliente';
       lb_buscar.Visible := true;
       data_nasc.Visible := true;
        txt_buscar.Text := 'a';
       btn_pesquisar.Enabled := true;

    end;

    end;
end;

procedure Tfrm_cad_clientes.txt_buscarKeyPress(Sender: TObject; var Key: Char);
begin
  case rg_opcoes.ItemIndex of
  0:
  begin
    if(key in ['0'..'9'] = false ) and (word (key) <> VK_BACK) then
    begin
      ShowMessage ('Digite aqui apenas números');
      key := #0;
    end;
  end;

   2:
  begin
     if(key in ['0'..'9'] = false ) and (word (key) <> VK_BACK) then
    begin
      ShowMessage ('Digite aqui apenas números');
      key := #0;
    end;
  end;



   3:
  begin
     if(key in ['0'..'9'] = false ) and (word (key) <> VK_BACK) then
    begin
      ShowMessage ('Digite aqui apenas números');
      key := #0;
    end;
  end;

  end;
end;

end.
