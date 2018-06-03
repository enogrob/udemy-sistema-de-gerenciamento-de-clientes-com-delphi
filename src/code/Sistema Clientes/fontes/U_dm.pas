unit U_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, frxClass, frxDBSet;

type
  Tdm = class(TDataModule)
    FDConnection1: TFDConnection;
    Driver: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tb_clientes: TFDTable;
    DataSource1: TDataSource;
    tb_clientescli_id: TFDAutoIncField;
    tb_clientescli_nome: TStringField;
    tb_clientescli_endereco: TStringField;
    tb_clientescli_bairro: TStringField;
    tb_clientescli_cidade: TStringField;
    tb_clientescli_uf: TStringField;
    tb_clientescli_rg: TStringField;
    tb_clientescli_cpf: TStringField;
    tb_clientescli_tel: TStringField;
    tb_clientescli_cel: TStringField;
    tb_clientescli_data_nasc: TDateField;
    tb_clientescli_data_cad: TDateField;
    tb_clientescli_situacao: TStringField;
    tb_clientescli_email: TStringField;
    tb_clientescli_cep: TStringField;
    SQL_con_cliente: TFDQuery;
    DS_con_cliente: TDataSource;
    SQL_imprimir_cliente: TFDQuery;
    SQL_con_clientecli_id: TFDAutoIncField;
    SQL_con_clientecli_nome: TStringField;
    SQL_con_clientecli_endereco: TStringField;
    SQL_con_clientecli_bairro: TStringField;
    SQL_con_clientecli_cidade: TStringField;
    SQL_con_clientecli_uf: TStringField;
    SQL_con_clientecli_cep: TStringField;
    SQL_con_clientecli_rg: TStringField;
    SQL_con_clientecli_cpf: TStringField;
    SQL_con_clientecli_tel: TStringField;
    SQL_con_clientecli_cel: TStringField;
    SQL_con_clientecli_email: TStringField;
    SQL_con_clientecli_data_nasc: TDateField;
    SQL_con_clientecli_data_cad: TDateField;
    SQL_con_clientecli_situacao: TStringField;
    SQL_imprimir_clientecli_id: TFDAutoIncField;
    SQL_imprimir_clientecli_nome: TStringField;
    SQL_imprimir_clientecli_endereco: TStringField;
    SQL_imprimir_clientecli_bairro: TStringField;
    SQL_imprimir_clientecli_cidade: TStringField;
    SQL_imprimir_clientecli_uf: TStringField;
    SQL_imprimir_clientecli_cep: TStringField;
    SQL_imprimir_clientecli_rg: TStringField;
    SQL_imprimir_clientecli_cpf: TStringField;
    SQL_imprimir_clientecli_tel: TStringField;
    SQL_imprimir_clientecli_cel: TStringField;
    SQL_imprimir_clientecli_email: TStringField;
    SQL_imprimir_clientecli_data_nasc: TDateField;
    SQL_imprimir_clientecli_data_cad: TDateField;
    SQL_imprimir_clientecli_situacao: TStringField;
    report_cliente: TfrxReport;
    ds_rel_cliente: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin

  //CONEXAO LOCAL COM LOCALHOST
  {FDConnection1.Params.Database := 'sistema';
  FDConnection1.Params.UserName := 'root';
  FDConnection1.Params.Password := '';     }


   //CONEXAO LOCAL COM LOCALHOST
  FDConnection1.Params.Database := 'sistema';
  FDConnection1.Params.UserName := 'hugosistema';
  FDConnection1.Params.Password := 'hugofreitas';


  FDConnection1.Connected := True;

  Driver.VendorLib := GetCurrentDir + '\lib\libmySQL.dll';
  tb_clientes.TableName := 'clientes';
  tb_clientes.Active := True;

end;

end.
