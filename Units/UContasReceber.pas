unit UContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Datasnap.DBClient,
  Datasnap.Provider;

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
    dbgRegistros: TDBGrid;
    pnlRodape: TPanel;
    lblExcluir: TLabel;
    lblAlterar: TLabel;
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
    dspContasReceber: TDataSetProvider;
    cdsContasReceber: TClientDataSet;
    dsContasReceber: TDataSource;
    cdsContasReceberlancamento: TLargeintField;
    cdsContasReceberdatavencimento: TDateField;
    cdsContasRecebervalor: TBCDField;
    cdsContasReceberformapgto: TWideStringField;
    cdsContasReceberidcliente: TIntegerField;
    cdsContasRecebernomecliente: TWideStringField;
    cdsContasReceberdatapgto: TDateField;
    cdsContasRecebersituacao: TWideStringField;
    cdsContasReceberdescricao: TWideStringField;
    pnlSubPesquisa: TPanel;
    pnlPesquisa: TPanel;
    shpPesquisa: TShape;
    spbPesquisa: TSpeedButton;
    edtPesquisa: TEdit;
    pnlLinha4: TPanel;
    procedure FormResize(Sender: TObject);
    procedure btnInformacoesMouseEnter(Sender: TObject);
    procedure btnInformacoesMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
  private
    procedure ArredondaPainel;
    procedure CentralizandoPanel;
    procedure OpenDataSet;
    procedure CalculaPainel;
    procedure CentralizaResultado;
    procedure ChamaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasReceber: TfrmContasReceber;

implementation

uses
  UDm, UFuncoes, uMovContasReceber;

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

procedure TfrmContasReceber.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmContasReceber.FormResize(Sender: TObject);
begin
  Self.CentralizandoPanel;
  Self.ArredondaPainel;
end;

procedure TfrmContasReceber.FormShow(Sender: TObject);
begin
  Self.CalculaPainel;
end;

procedure TfrmContasReceber.OpenDataSet;
begin
  (dsContasReceber.DataSet as TClientDataSet).Close;
  (dsContasReceber.DataSet as TClientDataSet).Open;
end;

procedure TfrmContasReceber.btnInformacoesMouseEnter(Sender: TObject);
begin
  pnlInformacoes.Visible := True;
end;

procedure TfrmContasReceber.btnInformacoesMouseLeave(Sender: TObject);
begin
  pnlInformacoes.Visible := False;
end;

procedure TfrmContasReceber.btnNovoLancamentoClick(Sender: TObject);
begin
  cdsContasReceber.Insert;
  Self.ChamaTela;
  Self.OpenDataSet;
end;

procedure TfrmContasReceber.CalculaPainel;
var
  cTotalRecebimento, cRecebFuturos, cRecebHoje, cRecebeAtrasado, cQuantidade: Currency;
begin
  cTotalRecebimento := 0;
  cRecebFuturos     := 0;
  cRecebHoje        := 0;
  cRecebeAtrasado   := 0;
  cQuantidade       := 0;

  with (dsContasReceber.DataSet as TClientDataSet) do
  begin
    First;
    try
      while not Eof do
      begin
        if FieldByName('datavencimento').AsDateTime < Date then
        begin
          cRecebeAtrasado := cRecebeAtrasado + FieldByName('valor').AsCurrency;
        end;

        if FieldByName('datavencimento').AsDateTime = Date then
        begin
          cRecebHoje := cRecebHoje + FieldByName('valor').AsCurrency;
        end;

        if FieldByName('datavencimento').AsDateTime > Date then
        begin
          cRecebFuturos := cRecebFuturos + FieldByName('valor').AsCurrency;
        end;

        cTotalRecebimento := cTotalRecebimento + FieldByName('valor').AsCurrency;
        cQuantidade       := cQuantidade + 1;
        Next;
      end;
    except

    end;
  end;

  lblVlrQuantidade.Caption          := CurrToStr(cQuantidade);
  lblVlrRecebimentoAtrasado.Caption := 'R$ ' + FormatFloat('#,##0.00', cRecebeAtrasado);
  lblVlrRecebimentoHoje.Caption     := 'R$ ' + FormatFloat('#,##0.00', cRecebHoje);
  lblVlrRecebimentosFuturos.Caption := 'R$ ' + FormatFloat('#,##0.00', cRecebFuturos);
  lblTotalReceber.Caption           := 'R$ ' + FormatFloat('#,##0.00', cTotalRecebimento);
end;

procedure TfrmContasReceber.CentralizandoPanel;
begin
  pnlCentralInfo.left           := Round(pnlCentral.Width/2 - pnlCentralInfo.Width/2);
  pnlCentBot.Top                := (Round(pnlCentral.Height/2 - pnlCentBot.Height/2));
  pnlCentBot.Height             := Screen.Height;
  pnlCentBot.Width              := Screen.Width;
  dbgRegistros.Columns[4].Width := Screen.Width;
end;

procedure TfrmContasReceber.CentralizaResultado;
begin
  lblTotalReceber.Left           := Round(pnlTotalReceber.Width/2 - pnlTotalReceber.Width/2);
  lblTotalaReceber.Left          := Round(pnlTotalReceber.Width/2 - pnlTotalReceber.Width/2);
  lblRecebimentoAtrasado.Left    := Round(pnlRecebimentoAtrasado.Width/2 - pnlRecebimentoAtrasado.Width/2);
  lblVlrRecebimentoAtrasado.Left := Round(pnlRecebimentoAtrasado.Width/2 - pnlRecebimentoAtrasado.Width/2);
  lblRecebimentoHoje.Left        := Round(pnlRecebimentoHoje.Width/2 - pnlRecebimentoHoje.Width/2);
  lblVlrRecebimentoHoje.Left     := Round(pnlRecebimentoHoje.Width/2 - pnlRecebimentoHoje.Width/2);
  lblRecebimentosFuturos.Left    := Round(pnlRecebimentosFuturos.Width/2 - pnlRecebimentosFuturos.Width/2);
  lblVlrRecebimentosFuturos.Left := Round(pnlRecebimentosFuturos.Width/2 - pnlRecebimentosFuturos.Width/2);
end;

procedure TfrmContasReceber.ChamaTela;
begin
  frmMovReceber := TfrmMovReceber.Create(Self);
  try
    frmMovReceber.ShowModal;
  finally
    frmMovReceber.Free;
  end;
end;

end.
