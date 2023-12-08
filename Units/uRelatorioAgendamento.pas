unit uRelatorioAgendamento;

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
  TForm1 = class(TForm)
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
    cdsRelatoriolancamento: TLargeintField;
    cdsRelatoriodatavencimento: TDateField;
    cdsRelatoriovalor: TBCDField;
    cdsRelatorioformapgto: TWideStringField;
    cdsRelatorioidfornecedor: TIntegerField;
    cdsRelatorionomefornecedor: TWideStringField;
    cdsRelatoriodatapgto: TDateField;
    cdsRelatoriosituacao: TWideStringField;
    cdsRelatoriodescricao: TWideStringField;
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
    ppParameterList1: TppParameterList;
    ppDbRelatorio: TppDBPipeline;
    ppDbRelatorioppField1: TppField;
    ppDbRelatorioppField2: TppField;
    ppDbRelatorioppField3: TppField;
    ppDbRelatorioppField4: TppField;
    ppDbRelatorioppField5: TppField;
    ppDbRelatorioppField6: TppField;
    ppDbRelatorioppField7: TppField;
    ppDbRelatorioppField8: TppField;
    ppDbRelatorioppField9: TppField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
