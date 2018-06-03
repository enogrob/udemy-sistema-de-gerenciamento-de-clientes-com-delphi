program SistemaClientes;

uses
  Vcl.Forms,
  U_principal in 'fontes\U_principal.pas' {frm_principal},
  U_dm in 'fontes\U_dm.pas' {dm: TDataModule},
  U_Clientes in 'fontes\U_Clientes.pas' {frm_cad_clientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_cad_clientes, frm_cad_clientes);
  Application.Run;
end.
