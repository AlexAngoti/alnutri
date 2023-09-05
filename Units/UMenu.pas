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
    btnConstTitu: TSpeedButton;
    btnAbriTitu: TSpeedButton;
    pnlCadastros: TPanel;
    btnCargos: TSpeedButton;
    btnClientes: TSpeedButton;
    pnlMovimentacao: TPanel;
    pnlMensalidade: TPanel;
    btnConsMens: TSpeedButton;
    btnBaixarMens: TSpeedButton;
    btnAbrirMens: TSpeedButton;
    btnBaixarTitu: TSpeedButton;
    btnAgendamentos: TSpeedButton;
    btnAvaliacao: TSpeedButton;
    btnFuncionarios: TSpeedButton;
    btnCardapios: TSpeedButton;
    btnMensalidade: TSpeedButton;
    pnlRelatorio: TPanel;
    btnRel3: TSpeedButton;
    btnReal2: TSpeedButton;
    btnRel1: TSpeedButton;
    btnAlimentos: TSpeedButton;
    btnUsuarios: TSpeedButton;
    btnTrocarUser: TSpeedButton;
    anvFundo: TApplicationEvents;
    Panel1: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    pnlLinha: TPanel;
    procedure btnCadastrosMouseEnter(Sender: TObject);
    procedure pnlSubCentralMouseEnter(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnMinimizarClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure brnAlimentosClick(Sender: TObject);
    procedure btnAgendamentosClick(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure btnCargosClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnTrocarUserClick(Sender: TObject);
    procedure anvFundoModalBegin(Sender: TObject);
    procedure anvFundoModalEnd(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure prcControlaMenu(botao: TSpeedButton; Ativar: Boolean);
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses
  UDm, UConsultaCliente, UConsultaProd, UAgendamento, UConsultaColab,
  UConsultaCargo, UConsultaUsuario, ULogin, UFundo;

{$R *.dfm}
{ TFrmMenu }

procedure TFrmMenu.btnClientesClick(Sender: TObject);
begin
  FrmConsultaCliente := TFrmConsultaCliente.Create(Self);
  FrmConsultaCliente.Show;
end;

procedure TFrmMenu.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMenu.btnFuncionariosClick(Sender: TObject);
begin
  FrmConsultaColab := TFrmConsultaColab.Create(Self);
  FrmConsultaColab.ShowModal;
end;


procedure TFrmMenu.btnMinimizarClick(Sender: TObject);
begin
  Application.Minimize;
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
          (FrmMenu.Components[i] as TPanel).Left := botao.Left;
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

procedure TFrmMenu.brnAlimentosClick(Sender: TObject);
begin
  FrmConsultaProd := TFrmConsultaProd.Create(Self);
  FrmConsultaProd.ShowModal;
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

procedure TFrmMenu.btnCargosClick(Sender: TObject);
begin
  FrmConsultaCargos := TFrmConsultaCargos.Create(Self);
  FrmConsultaCargos.ShowModal;
end;

end.
