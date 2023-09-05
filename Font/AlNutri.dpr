program Alnutri;

uses
  Vcl.Forms,
  ULogin in '..\Units\ULogin.pas' {frmLogin},
  UDm in '..\Units\UDm.pas' {dm: TDataModule},
  UMenu in '..\Units\UMenu.pas' {frmMenu},
  Ucadastropadrao in '..\Units\Ucadastropadrao.pas' {frmCadastroPadrao},
  UConsulaPadrao in '..\Units\UConsulaPadrao.pas' {FrmConsultaPadrao},
  UConsultaCliente in '..\Units\UConsultaCliente.pas' {FrmConsultaCliente},
  uCadastroCliente in '..\Units\uCadastroCliente.pas' {frmCadastroCliente},
  UConsultaProd in '..\Units\UConsultaProd.pas' {FrmConsultaProd},
  UCadastroProd in '..\Units\UCadastroProd.pas' {frmCadastroProd},
  uAgendamento in '..\Units\uAgendamento.pas' {frmAgendamento},
  UNovoAgendamento in '..\Units\UNovoAgendamento.pas' {frmNovoAgendamento},
  UConsultaColab in '..\Units\UConsultaColab.pas' {FrmConsultaColab},
  UCadastroColab in '..\Units\UCadastroColab.pas' {frmCadastroColab},
  UConsultaCargo in '..\Units\UConsultaCargo.pas' {FrmConsultaCargos},
  uCadastroCargo in '..\Units\uCadastroCargo.pas' {frmCadastroCargos},
  UPesquisaColab in '..\Units\UPesquisaColab.pas' {FrmPesquisaColab},
  UConsultaUsuario in '..\Units\UConsultaUsuario.pas' {FrmConsultaUsuario},
  UCadastroUsuario in '..\Units\UCadastroUsuario.pas' {frmCadastroUsuario},
  UFuncoes in '..\Units\UFuncoes.pas',
  UMsgConfirmar in '..\Units\UMsgConfirmar.pas' {frmMsgConfirmar},
  UFundo in '..\Units\UFundo.pas' {frmFundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmFundo, frmFundo);
  Application.Run;

end.
