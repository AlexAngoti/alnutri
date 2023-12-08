unit uCadastroCardapio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ucadastropadrao, Data.DB, Vcl.DBCtrls,
  SWHDBLookupComboBox, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  SWHDBEdit, Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider, SWHMaskEdit, SWHEdit, SWHDBComboBox,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter;

type
  TfrmCadastroCardapio = class(TfrmCadastroPadrao)
    dbGdAlimentos: TDBGrid;
    btnPesquisa: TSpeedButton;
    pnlConfirmar: TPanel;
    SpeedButton5: TSpeedButton;
    lblAlimentos: TLabel;
    lblGrupoRefeicao: TLabel;
    lblQuantidade: TLabel;
    lblTotalKcal: TLabel;
    pnlGravarProduto: TPanel;
    btnGravarProduto: TSpeedButton;
    pnlFinalizarGrupo: TPanel;
    btnFinalizarGrupo: TSpeedButton;
    edtNomeCardapio: TSWHDBEdit;
    pnlProximo: TPanel;
    btnProximo: TSpeedButton;
    lblNomeCardapio: TLabel;
    cdsItensCardapio: TClientDataSet;
    dsItensCardapio: TDataSource;
    qryItensCardapio: TFDQuery;
    dspItensCardapio: TDataSetProvider;
    cdsItensCardapioidcardapio: TIntegerField;
    cdsItensCardapioidproduto: TIntegerField;
    cdsItensCardapioquantidade: TBCDField;
    cdsItensCardapiohorario: TWideStringField;
    cdsItensCardapiogruporefeicao: TWideStringField;
    cdsItensCardapiototalkcal: TBCDField;
    cdsItensCardapiotproteina: TBCDField;
    cdsItensCardapiotcalcio: TBCDField;
    cdsItensCardapiofterro: TBCDField;
    cdsItensCardapiotcarboidratos: TBCDField;
    cdsItensCardapiotgordurastotais: TBCDField;
    cdsItensCardapiotfibras: TBCDField;
    cdsItensCardapiotvitaminac: TBCDField;
    cdsItensCardapiotacucares: TBCDField;
    dsAliementos: TDataSource;
    dspAlimentos: TDataSetProvider;
    cdsAlimentos: TClientDataSet;
    cdsAlimentosid: TLargeintField;
    cdsAlimentosporcaotipica: TWideStringField;
    cdsAlimentosgrupoalimentar: TWideStringField;
    cdsAlimentosnome: TWideStringField;
    cdsAlimentoskcal: TBCDField;
    cdsAlimentosproteina: TBCDField;
    cdsAlimentoscalcio: TBCDField;
    cdsAlimentosferro: TBCDField;
    cdsAlimentoscarboidratos: TBCDField;
    cdsAlimentosgordurastotais: TBCDField;
    cdsAlimentosfibras: TBCDField;
    cdsAlimentosvitaminac: TBCDField;
    cdsAlimentosacucares: TBCDField;
    lblHorario: TLabel;
    edtTotalKcal: TSWHMaskEdit;
    cdsAlimentosdivkcal: TBCDField;
    cdsAlimentosdivproteina: TBCDField;
    cdsAlimentosdivcalcio: TBCDField;
    cdsAlimentosdivferro: TBCDField;
    cdsAlimentosdivcarboidratos: TBCDField;
    cdsAlimentosdivgordurastotais: TBCDField;
    cdsAlimentosdivfibras: TBCDField;
    cdsAlimentosdivvitaminac: TBCDField;
    cdsAlimentosdivacucares: TBCDField;
    qryDelete: TFDQuery;
    cdsItensCardapionome: TWideStringField;
    edtGrupoRefeicao: TSWHEdit;
    edtHorario: TSWHEdit;
    edtQuantidade: TSWHEdit;
    qryDeleteItem: TFDQuery;
    qryRelCardapio: TFDQuery;
    dsRelCardapio: TDataSource;
    cdsRelCardapio: TClientDataSet;
    dspRelCardapio: TDataSetProvider;
    cdsRelCardapionome: TWideStringField;
    cdsRelCardapioid: TLargeintField;
    cdsRelCardapioidcardapio: TIntegerField;
    cdsRelCardapioidproduto: TIntegerField;
    cdsRelCardapioquantidade: TBCDField;
    cdsRelCardapiohorario: TWideStringField;
    cdsRelCardapiogruporefeicao: TWideStringField;
    cdsRelCardapiototalkcal: TBCDField;
    cdsRelCardapiotproteina: TBCDField;
    cdsRelCardapiotcalcio: TBCDField;
    cdsRelCardapiofterro: TBCDField;
    cdsRelCardapiotcarboidratos: TBCDField;
    cdsRelCardapiotgordurastotais: TBCDField;
    cdsRelCardapiotfibras: TBCDField;
    cdsRelCardapiotvitaminac: TBCDField;
    cdsRelCardapiotacucares: TBCDField;
    ppRelCardapio: TppReport;
    ppDtaRelCardapio: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel19: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppLabel20: TppLabel;
    ppDBCalc15: TppDBCalc;
    cdsRelCardapioproduto: TWideStringField;
    edtId: TSWHEdit;
    edtNome: TSWHEdit;
    procedure btnProximoClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnGravarProdutoClick(Sender: TObject);
    procedure btnFinalizarGrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnNovoRelatorio(Sender: TObject);
  private
    procedure OpenDataSetSecond;
    procedure CalculaKcal;
    procedure BloqueiaCampo;
    procedure LiberaCampo;
    procedure EstadoQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCardapio: TfrmCadastroCardapio;
  Id: Integer;
  TotalKcal: Currency;

implementation

uses
  UDm, uConsultaCardapio, uPesquisaPadrao, UFuncoes;

{$R *.dfm}

procedure TfrmCadastroCardapio.BloqueiaCampo;
begin
  edtNomeCardapio.Enabled   := True;
  btnProximo.Enabled        := True;
  edtGrupoRefeicao.Enabled  := False;
  btnPesquisa.Enabled       := False;
  edtHorario.Enabled        := False;
  edtQuantidade.Enabled     := False;
  btnGravarProduto.Enabled  := False;
  btnFinalizarGrupo.Enabled := False;
end;

procedure TfrmCadastroCardapio.btnFinalizarGrupoClick(Sender: TObject);
begin
  edtGrupoRefeicao.Clear;
  edtHorario.Clear;
  edtQuantidade.Clear;
end;

procedure TfrmCadastroCardapio.btnGravarProdutoClick(Sender: TObject);
var
  GrupoRefeicao, Horario: String;
begin
  GrupoRefeicao := edtGrupoRefeicao.Text;
  Horario       := edtHorario.Text;

  Self.OpenDataSetSecond;
  (dsItensCardapio.DataSet as TClientDataSet).Insert;
  (dsItensCardapio.DataSet as TClientDataSet).FieldByName('idcardapio').AsInteger   := id;
  (dsItensCardapio.DataSet as TClientDataSet).FieldByName('idproduto').AsInteger    := StrToInt(edtId.Text);
  (dsItensCardapio.DataSet as TClientDataSet).FieldByName('quantidade').AsCurrency  := StrToCurr(edtQuantidade.Text);
  (dsItensCardapio.DataSet as TClientDataSet).FieldByName('horario').AsString       := edtHorario.Text;
  (dsItensCardapio.DataSet as TClientDataSet).FieldByName('gruporefeicao').AsString := edtGrupoRefeicao.Text;

  Self.CalculaKcal;
  (dsItensCardapio.DataSet as TClientDataSet).Post;
  (dsItensCardapio.DataSet as TClientDataSet).ApplyUpdates(-1);

  (dsItensCardapio.DataSet as TClientDataSet).Close;
  (dsItensCardapio.DataSet as TClientDataSet).ParamByName('CARDAPIO').AsInteger := id;
  (dsItensCardapio.DataSet as TClientDataSet).Open;

  edtQuantidade.Clear;
  edtGrupoRefeicao.Text := GrupoRefeicao;
  edtHorario.Text       := Horario;
end;

procedure TfrmCadastroCardapio.btnNovoRelatorio(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja imprimir o cardapio ?',
    'O relatorio aparecera para visualização') then
  begin
    (dsRelCardapio.DataSet as TClientDataSet).Close;
    (dsRelCardapio.DataSet as TClientDataSet).ParamByName('ID').AsInteger := Id;
    (dsRelCardapio.DataSet as TClientDataSet).Open;

    ppRelCardapio.Print;
  end;
end;

procedure TfrmCadastroCardapio.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(Self);
  try
    frmPesquisaPadrao.qryPadrao.SQL.Clear;
    frmPesquisaPadrao.qryPadrao.SQL.Text := ('SELECT p.id as "Id", p.nome as "Nome" ' +
                                            'FROM alimentos p ' +
                                            'ORDER by p.nome asc');
    frmPesquisaPadrao.ShowModal;
    if frmPesquisaPadrao.ModalResult = 1 then
    begin
      edtId.Text   := IntToStr(frmPesquisaPadrao.cdsPadrao.FieldByName('id').AsInteger);
      edtNome.Text := frmPesquisaPadrao.cdsPadrao.FieldByName('Nome').AsString;
    end;
  finally
    frmPesquisaPadrao.Free;
  end;
end;

procedure TfrmCadastroCardapio.btnProximoClick(Sender: TObject);
begin
  id := 0;
  (dsCadastroPadrao.DataSet as TClientDataSet).Post;
  (dsCadastroPadrao.DataSet as TClientDataSet).ApplyUpdates(-1);

  Self.OpenDataSetSecond;

  id := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('id').AsInteger;
  Self.LiberaCampo;
end;

procedure TfrmCadastroCardapio.CalculaKcal;
begin
  cdsItensCardapiototalkcal.AsCurrency
    := cdsAlimentos.FieldByName('divkcal').AsCurrency *
    cdsItensCardapio.FieldByName('quantidade').AsCurrency;

  cdsItensCardapiotproteina.AsCurrency
    := cdsAlimentos.FieldByName('divproteina').AsCurrency *
    cdsItensCardapio.FieldByName('quantidade').AsCurrency;

  cdsItensCardapiotcalcio.AsCurrency
    := cdsAlimentos.FieldByName('divcalcio').AsCurrency *
    cdsItensCardapio.FieldByName('quantidade').AsCurrency;

  cdsItensCardapiotcarboidratos.AsCurrency
    := cdsAlimentos.FieldByName('divcarboidratos').AsCurrency *
    cdsItensCardapio.FieldByName('quantidade').AsCurrency;

  cdsItensCardapiotgordurastotais.AsCurrency
    := cdsAlimentos.FieldByName('divgordurastotais').AsCurrency *
    cdsItensCardapio.FieldByName('quantidade').AsCurrency;

  cdsItensCardapiotfibras.AsCurrency
    := cdsAlimentos.FieldByName('divfibras').AsCurrency *
    cdsItensCardapio.FieldByName('quantidade').AsCurrency;

  cdsItensCardapiotvitaminac.AsCurrency
    := cdsAlimentos.FieldByName('divvitaminac').AsCurrency *
    cdsItensCardapio.FieldByName('quantidade').AsCurrency;

  cdsItensCardapiotacucares.AsCurrency
    := cdsAlimentos.FieldByName('acucares').AsCurrency *
    cdsItensCardapio.FieldByName('quantidade').AsCurrency;

  TotalKcal := TotalKcal + cdsItensCardapiototalkcal.AsCurrency;
  edtTotalKcal.Text := CurrToStr(TotalKcal);
end;

procedure TfrmCadastroCardapio.EstadoQuery;
begin
  id := 0;
  id := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('id').AsInteger;

  if (dsCadastroPadrao.DataSet as TClientDataSet).State in [dsEdit] then
  begin
    Self.LiberaCampo;
    Self.OpenDataSetSecond;
    (dsItensCardapio.DataSet as TClientDataSet).Close;
    (dsItensCardapio.DataSet as TClientDataSet).ParamByName('CARDAPIO').AsInteger := id;
    (dsItensCardapio.DataSet as TClientDataSet).Open;
  end;
end;

procedure TfrmCadastroCardapio.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_DELETE then
  begin
    qryDeleteItem.Close;
    qryDeleteItem.ParamByName('cardapio').AsInteger := id;
    qryDeleteItem.ParamByName('produto').AsInteger  := cdsItensCardapioidproduto.AsInteger;
    qryDeleteItem.ExecSQL;
    TotalKcal := TotalKcal - cdsItensCardapiototalkcal.AsCurrency;
    edtTotalKcal.Text := CurrToStr(TotalKcal);
    Self.OpenDataSetSecond;
  end;
end;

procedure TfrmCadastroCardapio.FormShow(Sender: TObject);
begin
  inherited;
  TotalKcal := 0;
  Self.BloqueiaCampo;
  Self.EstadoQuery;
end;

procedure TfrmCadastroCardapio.LiberaCampo;
begin
  edtNomeCardapio.Enabled   := False;
  btnProximo.Enabled        := False;
  edtGrupoRefeicao.Enabled  := True;
  btnPesquisa.Enabled       := True;
  edtHorario.Enabled        := True;
  edtQuantidade.Enabled     := True;
  btnGravarProduto.Enabled  := True;
  btnFinalizarGrupo.Enabled := True;
end;

procedure TfrmCadastroCardapio.OpenDataSetSecond;
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).Close;
  (dsCadastroPadrao.DataSet as TClientDataSet).Open;

  (dsAliementos.DataSet as TClientDataSet).Close;
  (dsAliementos.DataSet as TClientDataSet).Open;

  (dsItensCardapio.DataSet as TClientDataSet).Close;
  (dsItensCardapio.DataSet as TClientDataSet).ParamByName('CARDAPIO').AsInteger := 0;
  (dsItensCardapio.DataSet as TClientDataSet).Open;
end;

procedure TfrmCadastroCardapio.SpeedButton1Click(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja imprimir o cardapio ?',
    'O relatorio aparecera para visualização') then
  begin
    (dsRelCardapio.DataSet as TClientDataSet).Close;
    (dsRelCardapio.DataSet as TClientDataSet).ParamByName('ID').AsInteger := Id;
    (dsRelCardapio.DataSet as TClientDataSet).Open;

    ppRelCardapio.Print;
  end;
  Self.Close;
end;

procedure TfrmCadastroCardapio.SpeedButton2Click(Sender: TObject);
begin
   if UFuncoes.MsgConfirmar('Deseja cancelar o processo atual ?',
  'Se cancelar o processo atual não será salvo') then
  begin
    qryDelete.Close;
    qryDelete.ParamByName('CARDAPIO').AsInteger := Id;
    qryDelete.ExecSQL;

    (dsCadastroPadrao.DataSet as TClientDataSet).Delete;
    (dsCadastroPadrao.DataSet as TClientDataSet).ApplyUpdates(-1);
    Self.Close;
  end;
end;

end.
