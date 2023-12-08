unit uRelatorioRec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppDesignLayer,
  ppParameter, ppStrtch, ppSubRpt, ppModule, raCodMod;

type
  TfrmRelatorioRec = class(TForm)
    pnlCentral: TPanel;
    pnlSubBot: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    pnlSubCentral: TPanel;
    Image1: TImage;
    lblNomeEmpresa: TLabel;
    dtpDataIni: TDateTimePicker;
    dtpDataFin: TDateTimePicker;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;
    rgpTipoRelatorio: TRadioGroup;
    dsRelatorio: TDataSource;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    qryRelatorio: TFDQuery;
    ppRelatorio: TppReport;
    ppDbRelatorio: TppDBPipeline;
    ppParameterList1: TppParameterList;
    cdsRelatoriolancamento: TLargeintField;
    cdsRelatoriodatavencimento: TDateField;
    cdsRelatoriovalor: TBCDField;
    cdsRelatorioformapgto: TWideStringField;
    cdsRelatorioidcliente: TIntegerField;
    cdsRelatorionomecliente: TWideStringField;
    cdsRelatoriodatapgto: TDateField;
    cdsRelatoriosituacao: TWideStringField;
    cdsRelatoriodescricao: TWideStringField;
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
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel10: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
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
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioRec: TfrmRelatorioRec;

implementation

uses
  UDm;

{$R *.dfm}

procedure TfrmRelatorioRec.btnCancelarClick(Sender: TObject);
begin
  dtpDataIni.Date := Date;
  dtpDataFin.Date := Date;
  rgpTipoRelatorio.ItemIndex := 0;
end;

procedure TfrmRelatorioRec.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmRelatorioRec.btnNovoLancamentoClick(Sender: TObject);
begin
  (dsRelatorio.DataSet as TClientDataSet).Close;
  (dsRelatorio.DataSet as TClientDataSet).ParamByName('DATAINI').AsDate
    := dtpDataIni.Date;
  (dsRelatorio.DataSet as TClientDataSet).ParamByName('DATAFIN').AsDate
    := dtpDataFin.Date;
  (dsRelatorio.DataSet as TClientDataSet).Open;

  ppRelatorio.Print;
end;

end.
