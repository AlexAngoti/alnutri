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
  UConsultaUsuario in '..\Units\UConsultaUsuario.pas' {FrmConsultaUsuario},
  UCadastroUsuario in '..\Units\UCadastroUsuario.pas' {frmCadastroUsuario},
  UFuncoes in '..\Units\UFuncoes.pas',
  UMsgConfirmar in '..\Units\UMsgConfirmar.pas' {frmMsgConfirmar},
  UFundo in '..\Units\UFundo.pas' {frmFundo},
  UManutencaoPagar in '..\Units\UManutencaoPagar.pas' {frmManutencaoPagar},
  UContasReceber in '..\Units\UContasReceber.pas' {frmContasReceber},
  uMovContasReceber in '..\Units\uMovContasReceber.pas' {frmMovReceber},
  uMsgNaoConfirmar in '..\Units\uMsgNaoConfirmar.pas' {frmMsgSemConfir},
  uPesquisaPadrao in '..\Units\uPesquisaPadrao.pas' {frmPesquisaPadrao},
  uBaixaReceber in '..\Units\uBaixaReceber.pas' {frmMovBaixaReceber},
  uContasPagar in '..\Units\uContasPagar.pas' {frmContasPagar},
  uBaixaPagar in '..\Units\uBaixaPagar.pas' {frmBaixaPagar},
  uRelatorioRec in '..\Units\uRelatorioRec.pas' {frmRelatorioRec},
  uBackup in '..\Units\uBackup.pas' {frmBackup},
  uConsultaCardapio in '..\Units\uConsultaCardapio.pas' {frmConsultaCardapio},
  uCadastroCardapio in '..\Units\uCadastroCardapio.pas' {frmCadastroCardapio},
  uAvaliacao in '..\Units\uAvaliacao.pas' {frmAvaliacao},
  URelatorioPag in '..\Units\URelatorioPag.pas' {frmRelatorioPag},
  uRelatorioAgendamento in '..\Units\uRelatorioAgendamento.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmFundo, frmFundo);
  Application.Run;
end.
