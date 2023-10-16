unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Winapi.ActiveX;

type
  TFrmLogin = class(TForm)
    pnlPrincipal: TPanel;
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
    btnFechar: TSpeedButton;
    procedure FormResize(Sender: TObject);
    procedure btnFecharAplClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
  UMenu, UDm;

{$R *.dfm}

procedure TFrmLogin.btnCancelarClick(Sender: TObject);
begin
  edtUsuario.Clear;
  edtSenha.Clear;
end;

procedure TFrmLogin.btnEntrarClick(Sender: TObject);
begin
  Self.Validalogin;
  Self.fazLogin;
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

  if ((edtUsuario.Text <> dm.cdsLoginlogin.AsString) and (edtSenha.Text <> dm.cdsLoginsenha.AsString)) then
  begin
    ShowMessage('Nome de usuario não existe!!');
    Abort;
  end
  else
  begin
    FrmMenu := TFrmMenu.Create(Self);
    FrmMenu.Show;
  end;
end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Self.btnEntrarClick(Self);
  end;
end;

procedure TFrmLogin.FormResize(Sender: TObject);
begin
  pnlPrincipal.Top  := Round(FrmLogin.Height / 2 - pnlPrincipal.Height / 2);
  pnlPrincipal.Left := Round(FrmLogin.Width / 2 - pnlPrincipal.Width / 2);
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
