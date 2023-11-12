unit uContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  TfrmContasPagar = class(TForm)
    pnlCentral: TPanel;
    pnlCentTop: TPanel;
    btnInformacoes: TSpeedButton;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlLinha: TPanel;
    pnlBaixaLanc: TPanel;
    btnBaixarLancamento: TSpeedButton;
    pnlCentBot: TPanel;
    pnlLinha3: TPanel;
    dbgRegistros: TDBGrid;
    pnlSubPesquisa: TPanel;
    pnlPesquisa: TPanel;
    shpPesquisa: TShape;
    spbPesquisa: TSpeedButton;
    edtPesquisa: TEdit;
    pnlLinha4: TPanel;
    pnlCentralInfo: TPanel;
    pnlQuantidade: TPanel;
    lblVlrQuantidade: TLabel;
    lblQuantidade: TLabel;
    pnlPagAtrasado: TPanel;
    lblPagAtrasado: TLabel;
    lblVlrPagAtrasado: TLabel;
    pnlPagHoje: TPanel;
    lblPagHoje: TLabel;
    lblVlrPagHoje: TLabel;
    pnlTotalPag: TPanel;
    lblTotalaPag: TLabel;
    lblTotalPag: TLabel;
    pnlPagFuturos: TPanel;
    lblPagFuturos: TLabel;
    lblVlrPagFuturos: TLabel;
    pnlRodape: TPanel;
    lblExcluir: TLabel;
    lblAlterar: TLabel;
    pnlInformacoes: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    dspContasPagar: TDataSetProvider;
    cdsContasPagar: TClientDataSet;
    cdsContasPagarlancamento: TLargeintField;
    cdsContasPagardatavencimento: TDateField;
    cdsContasPagarvalor: TBCDField;
    cdsContasPagarformapgto: TWideStringField;
    cdsContasPagaridcliente: TIntegerField;
    cdsContasPagarnomecliente: TWideStringField;
    cdsContasPagardatapgto: TDateField;
    cdsContasPagarsituacao: TWideStringField;
    cdsContasPagardescricao: TWideStringField;
    cdsContasPagarnomedesc: TWideStringField;
    dsContasPagar: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure spbPesquisaClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure btnBaixarLancamentoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure btnInformacoesMouseEnter(Sender: TObject);
    procedure btnInformacoesMouseLeave(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure CalculaPainel;
    procedure CentralizaTela;
    procedure ArredondaPanel;
    procedure CentralizaResultado;
    procedure ChamaTelaAbertura;
    procedure ChamaTelaFechar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasPagar: TfrmContasPagar;

implementation

uses
  UDm, UFuncoes;

{$R *.dfm}

{ TfrmContasPagar }

procedure TfrmContasPagar.ArredondaPanel;
begin
  RoundedPanel(pnlInformacoes, 12);
  RoundedPanel(pnlSubTop, 12);
  RoundedPanel(pnlCentral, 12);
  RoundedPanel(pnlNovoLanc, 12);
  RoundedPanel(pnlBaixaLanc, 12);
end;

procedure TfrmContasPagar.btnBaixarLancamentoClick(Sender: TObject);
begin
  cdsContasPagar.Edit;
  Self.ChamaTelaFechar;
  Self.OpenDataSet;
  Self.CalculaPainel;
end;

procedure TfrmContasPagar.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmContasPagar.btnInformacoesMouseEnter(Sender: TObject);
begin
  pnlInformacoes.Visible := True;
end;

procedure TfrmContasPagar.btnInformacoesMouseLeave(Sender: TObject);
begin
  pnlInformacoes.Visible := False;
end;

procedure TfrmContasPagar.btnNovoLancamentoClick(Sender: TObject);
begin
  cdsContasPagar.Insert;
  Self.ChamaTelaAbertura;
  Self.OpenDataSet;
  Self.CalculaPainel;
end;

procedure TfrmContasPagar.CalculaPainel;
var
  cTotalPag, cPagFuturo, cPagHoje, cPagAtrasado, cQuantidade: Currency;
begin
  cTotalPag    := 0;
  cPagFuturo   := 0;
  cPagHoje     := 0;
  cPagAtrasado := 0;
  cQuantidade  := 0;

  with (dsContasPagar.DataSet as TClientDataSet) do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('datavencimento').AsDateTime < Date then
      begin
        cPagAtrasado := cPagAtrasado + FieldByName('valor').AsCurrency;
      end;

      if FieldByName('datavencimento').AsDateTime = Date then
      begin
        cPagHoje := cPagHoje + FieldByName('valor').AsCurrency;
      end;

      if FieldByName('datavencimento').AsDateTime > Date then
      begin
        cPagFuturo := cPagFuturo + FieldByName('valor').AsCurrency;
      end;

      cTotalPag := cTotalPag + FieldByName('valor').AsCurrency;
      cQuantidade       := cQuantidade + 1;
      Next;
    end;
  end;

  lblVlrQuantidade.Caption  := CurrToStr(cQuantidade);
  lblVlrPagAtrasado.Caption := 'R$ ' + FormatFloat('#,##0.00', cPagAtrasado);
  lblVlrPagHoje.Caption     := 'R$ ' + FormatFloat('#,##0.00', cPagHoje);
  lblVlrPagFuturos.Caption  := 'R$ ' + FormatFloat('#,##0.00', cPagFuturo);
  lblTotalPag.Caption       := 'R$ ' + FormatFloat('#,##0.00', cTotalPag);
end;

procedure TfrmContasPagar.CentralizaResultado;
begin
  lblTotalPag.Left       := Round(pnlTotalPag.Width/2 - pnlTotalPag.Width/2);
  lblTotalaPag.Left      := Round(pnlTotalPag.Width/2 - pnlTotalPag.Width/2);
  lblPagAtrasado.Left    := Round(pnlPagAtrasado.Width/2 - pnlPagAtrasado.Width/2);
  lblVlrPagAtrasado.Left := Round(pnlPagAtrasado.Width/2 - pnlPagAtrasado.Width/2);
  lblPagHoje.Left        := Round(pnlPagHoje.Width/2 - pnlPagHoje.Width/2);
  lblVlrPagHoje.Left     := Round(pnlPagHoje.Width/2 - pnlPagHoje.Width/2);
  lblPagFuturos.Left     := Round(pnlPagFuturos.Width/2 - pnlPagFuturos.Width/2);
  lblVlrPagFuturos.Left  := Round(pnlPagFuturos.Width/2 - pnlPagFuturos.Width/2);
end;

procedure TfrmContasPagar.CentralizaTela;
begin
  pnlCentralInfo.left           := Round(pnlCentral.Width/2 - pnlCentralInfo.Width/2);
  pnlCentBot.Top                := (Round(pnlCentral.Height/2 - pnlCentBot.Height/2));
  pnlCentBot.Height             := Screen.Height;
  pnlCentBot.Width              := Screen.Width;
  dbgRegistros.Columns[4].Width := Screen.Width;
end;

procedure TfrmContasPagar.ChamaTelaAbertura;
begin
  frmMovReceber := TfrmMovReceber.Create(Self);
  try
    frmMovReceber.ShowModal;
  finally
    frmMovReceber.Free;
  end;
end;

procedure TfrmContasPagar.ChamaTelaFechar;
begin
  frmMovReceber := TfrmMovReceber.Create(Self);
  try
    frmMovReceber.ShowModal;
  finally
    frmMovReceber.Free;
  end;
end;

procedure TfrmContasPagar.dbgRegistrosDblClick(Sender: TObject);
begin
  cdsContasPagar.Edit;
  Self.ChamaTelaAbertura;
  Self.OpenDataSet;
end;

procedure TfrmContasPagar.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmContasPagar.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DELETE then
  begin
    if UFuncoes.MsgConfirmar('A data de vencimento e menor que data atual. Deseja Continuar ?',
    'Se continuar esse lançamento entrará como atrasado ') then
    begin
      (dsContasPagar.DataSet as TClientDataSet).Delete;
      (dsContasPagar.DataSet as TClientDataSet).ApplyUpdates(-1);
    end;
  end;

  if Key = VK_F2 then
  begin
    btnBaixarLancamentoClick(Self);
  end;

  if Key = VK_F1 then
  begin
    btnNovoLancamentoClick(Self);
  end;
end;

procedure TfrmContasPagar.FormResize(Sender: TObject);
begin
  Self.CentralizaTela;
  Self.ArredondaPanel;
  Self.CentralizaTela;
end;

procedure TfrmContasPagar.FormShow(Sender: TObject);
begin
  Self.CalculaPainel;
end;

procedure TfrmContasPagar.OpenDataSet;
begin
  (dsContasPagar.DataSet as TClientDataSet).Close;
  (dsContasPagar.DataSet as TClientDataSet).Open;
end;

procedure TfrmContasPagar.spbPesquisaClick(Sender: TObject);
begin
  dsContasPagar.DataSet.Filtered := False;
  if edtPesquisa.Text <> EmptyStr then
  begin
    dsContasPagar.DataSet.Filter := 'UPPER(nomedesc) LIKE ' +
      QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
    dsContasPagar.DataSet.Filtered := True;
  end;
end;

end.
