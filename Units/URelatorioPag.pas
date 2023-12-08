unit URelatorioPag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ppDB, ppDBPipe,
  ppParameter, ppCtrls, ppBands, ppClass, ppDesignLayer, ppModule, raCodMod,
  ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TfrmRelatorioPag = class(TForm)
    pnlCentral: TPanel;
    pnlSubBot: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    Image1: TImage;
    lblNomeEmpresa: TLabel;
    pnlSubCentral: TPanel;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;
    dtpDataIni: TDateTimePicker;
    dtpDataFin: TDateTimePicker;
    rgpTipoRelatorio: TRadioGroup;
    dsRelatorio: TDataSource;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    qryRelatorio: TFDQuery;
    ppRelatorio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDbRelatorio: TppDBPipeline;
    cdsRelatoriolancamento: TLargeintField;
    cdsRelatoriodatavencimento: TDateField;
    cdsRelatoriovalor: TBCDField;
    cdsRelatorioformapgto: TWideStringField;
    cdsRelatorioidfornecedor: TIntegerField;
    cdsRelatorionomefornecedor: TWideStringField;
    cdsRelatoriodatapgto: TDateField;
    cdsRelatoriosituacao: TWideStringField;
    cdsRelatoriodescricao: TWideStringField;
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioPag: TfrmRelatorioPag;

implementation

uses
  UDm;

{$R *.dfm}

procedure TfrmRelatorioPag.btnCancelarClick(Sender: TObject);
begin
  dtpDataIni.Date := Date;
  dtpDataFin.Date := Date;
  rgpTipoRelatorio.ItemIndex := 0;
end;

procedure TfrmRelatorioPag.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmRelatorioPag.btnNovoLancamentoClick(Sender: TObject);
begin
  (dsRelatorio.DataSet as TClientDataSet).Close;
  (dsRelatorio.DataSet as TClientDataSet).ParamByName('DATAINI').AsDate
    := dtpDataIni.Date;
  (dsRelatorio.DataSet as TClientDataSet).ParamByName('DATAFIN').AsDate
    := dtpDataFin.Date;
  (dsRelatorio.DataSet as TClientDataSet).ParamByName('situacao').AsInteger
    := rgpTipoRelatorio.ItemIndex;
  (dsRelatorio.DataSet as TClientDataSet).Open;

  ppRelatorio.Print;
end;

end.


