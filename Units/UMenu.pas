unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.AppEvnts;

type
  TFrmMenu = class(TForm)
    pnlCentral: TPanel;
    pnlSubCentral: TPanel;
    pnlSubTop: TPanel;
    btnMovimentacao: TSpeedButton;
    btnRelatorio: TSpeedButton;
    btnContasPagar: TSpeedButton;
    btnCadastros: TSpeedButton;
    pnlContasPagar: TPanel;
    btnAbriTitu: TSpeedButton;
    pnlCadastros: TPanel;
    btnClientes: TSpeedButton;
    pnlMovimentacao: TPanel;
    pnlMensalidade: TPanel;
    btnAbrirMens: TSpeedButton;
    btnAgendamentos: TSpeedButton;
    btnCardapios: TSpeedButton;
    btnMensalidade: TSpeedButton;
    pnlRelatorio: TPanel;
    btnReal2: TSpeedButton;
    btnRel1: TSpeedButton;
    btnAlimentos: TSpeedButton;
    btnUsuarios: TSpeedButton;
    btnTrocarUser: TSpeedButton;
    pnlTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    pnlLinha: TPanel;
    anvFundo: TApplicationEvents;
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    procedure btnCadastrosMouseEnter(Sender: TObject);
    procedure pnlSubCentralMouseEnter(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnMinimizarClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure brnAlimentosClick(Sender: TObject);
    procedure btnAgendamentosClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnTrocarUserClick(Sender: TObject);
    procedure anvFundoModalBegin(Sender: TObject);
    procedure anvFundoModalEnd(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnAbrirMensClick(Sender: TObject);
    procedure btnAbriTituClick(Sender: TObject);
    procedure btnRel1Click(Sender: TObject);
    procedure btnCardapiosClick(Sender: TObject);
    procedure btnReal2Click(Sender: TObject);
  private
    procedure prcControlaMenu(botao: TSpeedButton; Ativar: Boolean);
    procedure ArredondaPainel;
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses
  UDm, UConsultaCliente, UConsultaProd, UAgendamento,
  UConsultaUsuario, ULogin, UFundo, UFuncoes,
  UContasReceber, uContasPagar, uRelatorioRec, uConsultaCardapio, UCadastroUsuario,
  uRelatorioPag;

{$R *.dfm}
{ TFrmMenu }

procedure TFrmMenu.btnClientesClick(Sender: TObject);
begin
  FrmConsultaCliente := TFrmConsultaCliente.Create(Self);
  FrmConsultaCliente.Show;
end;

procedure TFrmMenu.btnFecharClick(Sender: TObject);
begin
  FrmLogin.Free;
  frmFundo.Free;
  Application.Terminate;
end;

procedure TFrmMenu.btnMinimizarClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFrmMenu.btnReal2Click(Sender: TObject);
begin
  frmRelatorioPag := TfrmRelatorioPag.Create(Self);
  try
    frmRelatorioPag.ShowModal;
  finally
    frmRelatorioPag.Free;
  end;
end;

procedure TFrmMenu.btnRel1Click(Sender: TObject);
begin
  frmRelatorioRec := TfrmRelatorioRec.Create(Self);
  try
    frmRelatorioRec.ShowModal;
  finally
    frmRelatorioRec.Free;
  end;
end;

procedure TFrmMenu.btnUsuariosClick(Sender: TObject);
begin
  FrmConsultaUsuario := TFrmConsultaUsuario.Create(Self);
  FrmConsultaUsuario.Show;
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
begin
  frmFundo.Visible := True;
end;

procedure TFrmMenu.FormResize(Sender: TObject);
begin
  Self.ArredondaPainel;
  Image2.Left := Round(pnlSubCentral.Width/2 - Image2.Width/2);
end;

procedure TFrmMenu.pnlSubCentralMouseEnter(Sender: TObject);
begin
  prcControlaMenu(nil, False);
end;

procedure TFrmMenu.prcControlaMenu(botao: TSpeedButton; Ativar: Boolean);
var
  i: Integer;
begin
  // percorrendo todos os componentes do form
  if Ativar then
  begin
    // verfica se é um panel
    for i := 0 to FrmMenu.ComponentCount - 1 do
    begin
      if (FrmMenu.Components[i] is TPanel) and
        ((FrmMenu.Components[i] as TPanel).Tag <> 0) then
      begin
        if (FrmMenu.Components[i] as TPanel).Tag = botao.Tag then
        begin
          (FrmMenu.Components[i] as TPanel).Visible := True;
          (FrmMenu.Components[i] as TPanel).Left    := botao.Left;
        end
        else
        begin
          (FrmMenu.Components[i] as TPanel).Visible := False;
        end;
      end;
    end;
  end
  else
  begin
    for i := 0 to FrmMenu.ComponentCount - 1 do
    begin
      if (FrmMenu.Components[i] is TPanel) and
        ((FrmMenu.Components[i] as TPanel).Tag <> 0) then
      begin
        (FrmMenu.Components[i] as TPanel).Visible := False;
      end;
    end;
  end;
end;

procedure TFrmMenu.btnTrocarUserClick(Sender: TObject);
begin
  frmFundo.Visible := False;
  FrmLogin.edtUsuario.Clear;
  FrmLogin.edtSenha.Clear;
  Self.Close;
end;

procedure TFrmMenu.anvFundoModalBegin(Sender: TObject);
begin
  frmFundo.Show;
end;

procedure TFrmMenu.anvFundoModalEnd(Sender: TObject);
begin
  frmFundo.Hide;
end;

procedure TFrmMenu.ArredondaPainel;
begin
  RoundedPanel(pnlTop, 12);
  RoundedPanel(pnlCentral, 12);
end;

procedure TFrmMenu.brnAlimentosClick(Sender: TObject);
begin
  FrmConsultaProd := TFrmConsultaProd.Create(Self);
  FrmConsultaProd.Show;
end;

procedure TFrmMenu.btnAbrirMensClick(Sender: TObject);
begin
  frmContasReceber := TfrmContasReceber.Create(Self);
  frmContasReceber.Show;
end;

procedure TFrmMenu.btnAbriTituClick(Sender: TObject);
begin
  frmContasPagar := TfrmContasPagar.Create(Self);
  frmContasPagar.Show;
end;

procedure TFrmMenu.btnAgendamentosClick(Sender: TObject);
begin
  frmAgendamento := TfrmAgendamento.Create(Self);
  frmAgendamento.Show;
end;

procedure TFrmMenu.btnCadastrosMouseEnter(Sender: TObject);
begin
  prcControlaMenu(TComponent(Sender) as TSpeedButton, True);
end;

procedure TFrmMenu.btnCardapiosClick(Sender: TObject);
begin
  frmConsultaCardapio := TfrmConsultaCardapio.Create(Self);
  frmConsultaCardapio.Show;
end;

end.
