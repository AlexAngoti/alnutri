unit UContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage;

type
  TfrmContasReceber = class(TForm)
    pnlCentral: TPanel;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    pnlCentTop: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlLinha: TPanel;
    pnlCentBot: TPanel;
    pnlTotalReceber: TPanel;
    pnlRecebimentoHoje: TPanel;
    pnlRecebimentoAtrasado: TPanel;
    pnlQuantidade: TPanel;
    lblVlrQuantidade: TLabel;
    lblQuantidade: TLabel;
    lblRecebimentoAtrasado: TLabel;
    lblVlrRecebimentoAtrasado: TLabel;
    lblRecebimentoHoje: TLabel;
    lblVlrRecebimentoHoje: TLabel;
    lblTotalaReceber: TLabel;
    lblTotalReceber: TLabel;
    pnlCentralInfo: TPanel;
    pnlRecebimentosFuturos: TPanel;
    lblRecebimentosFuturos: TLabel;
    lblVlrRecebimentosFuturos: TLabel;
    pnlLinha3: TPanel;
    pnlPesquisa: TPanel;
    shpPesquisa: TShape;
    spbPesquisa: TSpeedButton;
    edtPesquisa: TEdit;
    dbgRegistros: TDBGrid;
    pnlRodape: TPanel;
    lblExcluir: TLabel;
    lblAlterar: TLabel;
    pnlLinha4: TPanel;
    pnlBaixaLanc: TPanel;
    btnBaixarLancamento: TSpeedButton;
    pnlInformacoes: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    btnInformacoes: TSpeedButton;
    procedure FormResize(Sender: TObject);
    procedure btnInformacoesMouseEnter(Sender: TObject);
    procedure btnInformacoesMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    procedure ArredondaPainel;
    procedure CentralizandoPanel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasReceber: TfrmContasReceber;

implementation

uses
  UDm, UFuncoes;

{$R *.dfm}

procedure TfrmContasReceber.ArredondaPainel;
begin
  RoundedPanel(pnlInformacoes, 12);
  RoundedPanel(pnlSubTop, 12);
  RoundedPanel(pnlCentral, 12);
  RoundedPanel(pnlNovoLanc, 12);
  RoundedPanel(pnlBaixaLanc, 12);
end;

procedure TfrmContasReceber.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmContasReceber.FormResize(Sender: TObject);
begin
  Self.CentralizandoPanel;
  Self.ArredondaPainel;
end;

procedure TfrmContasReceber.btnInformacoesMouseEnter(Sender: TObject);
begin
  pnlInformacoes.Visible := True;
end;

procedure TfrmContasReceber.btnInformacoesMouseLeave(Sender: TObject);
begin
  pnlInformacoes.Visible := False;
end;

procedure TfrmContasReceber.CentralizandoPanel;
begin
  pnlCentralInfo.left           := Round(pnlCentral.Width/2 - pnlCentralInfo.Width/2);
  pnlCentBot.Top                := Round(pnlCentral.Height/2.2 - pnlCentBot.Height/2.2);
  pnlCentBot.Height             := Screen.Height;
  pnlCentBot.Width              := Screen.Width;
  dbgRegistros.Columns[4].Width := Screen.Width;
end;

end.
