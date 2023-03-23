unit U_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TFrmLogin = class(TForm)
    pnlPrincipal: TPanel;
    btnFecharApl: TSpeedButton;
    shpBorda: TShape;
    pnlVisual: TPanel;
    imLogin: TImage;
    lblLogin: TLabel;
    lblDescricao: TLabel;
    pnlUsuario: TPanel;
    lblName: TLabel;
    edtUsuario: TEdit;
    pnlSoUsuario: TPanel;
    pnlSenha: TPanel;
    lblSenha: TLabel;
    edtSenha: TEdit;
    pnlSoSenha: TPanel;
    pnlEntrar: TPanel;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    btnEntrar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure btnFecharAplClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure fazLogin;
    procedure Validalogin;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses
  U_Menu, U_DM;

{$R *.dfm}

procedure TFrmLogin.btnCancelarClick(Sender: TObject);
begin
  edtUsuario.Clear;
  edtSenha.Clear;
end;

procedure TFrmLogin.btnEntrarClick(Sender: TObject);
begin
  Self.Validalogin;
  self.fazLogin;
end;

procedure TFrmLogin.btnFecharAplClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.fazLogin;
begin
  dm.cdsLogin.Close;
  dm.cdsLogin.ParamByName('LOGIN').AsString := edtUsuario.Text;
  dm.cdsLogin.ParamByName('SENHA').AsString := edtSenha.Text;
  dm.cdsLogin.Open;

  if ((dm.cdsLoginlogin.AsString = EmptyStr) or (dm.cdsLoginsenha.AsString = EmptyStr)) then
  begin
    ShowMessage('Nome de usuario ou senha não existem!!');
    Abort
  end
  else
  begin
    FrmMenu.ShowModal;

  end;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmLogin.FormResize(Sender: TObject);
begin
  PnlPrincipal.Top  := Round (FrmLogin.Height / 2 - PnlPrincipal.Height / 2);
  PnlPrincipal.Left := Round (FrmLogin.Width / 2 - PnlPrincipal.Width / 2);
end;

procedure TFrmLogin.Validalogin;
begin
  if edtUsuario.Text = EmptyStr then
  begin
    ShowMessage('Nome de usuario invalido!!');
    Abort;
  end;

  if edtSenha.Text = EmptyStr then
  begin
    ShowMessage('Senha invalida!!');
    Abort;
  end;
end;

end.
