program AlNutri;

uses
  Vcl.Forms,
  U_login in '..\Units\U_login.pas' {FrmLogin},
  U_Menu in '..\Units\U_Menu.pas' {FrmMenu},
  U_DM in '..\Units\U_DM.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.Run;
end.
