unit UDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdm = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    qryLogin: TFDQuery;
    cdsLogin: TClientDataSet;
    cdsLoginid: TLargeintField;
    cdsLoginlogin: TWideStringField;
    cdsLoginsenha: TWideStringField;
    dspLogin: TDataSetProvider;
    dsLogin: TDataSource;
    qryPessoa: TFDQuery;
    qryConsultaProd: TFDQuery;
    dspAgendamento: TDataSetProvider;
    dsAgendamento: TDataSource;
    qryAgendamento: TFDQuery;
    cdsAgendamento: TClientDataSet;
    qryContasReceber: TFDQuery;
    qryContasPagar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses
  UConsultaCliente;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
