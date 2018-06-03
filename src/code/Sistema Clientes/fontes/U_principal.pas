unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage;

type
  Tfrm_principal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Salvar1: TMenuItem;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Sair1: TMenuItem;
    pnl_topo: TPanel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_Clientes;

procedure Tfrm_principal.Clientes1Click(Sender: TObject);
begin
 // frm_cad_clientes := frm_cad_clientes.Create(self);
  frm_cad_clientes.ShowModal;

end;

procedure Tfrm_principal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[3].Text := 'Data: ' + FormatDateTime('dddd, dd " de " mmmm " de " yyyy', Now);
  StatusBar1.Panels[4].Text := FormatDateTime('hh:mm:ss', Now);
end;

end.
