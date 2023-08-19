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
    dspConsultaCli: TDataSetProvider;
    dsConsultaCli: TDataSource;
    qryConsultaCli: TFDQuery;
    cdsConsultaCli: TClientDataSet;
    dspConsultaProd: TDataSetProvider;
    dsConsultaProd: TDataSource;
    qryConsultaProd: TFDQuery;
    cdsConsultaProd: TClientDataSet;
    dspConsultaColab: TDataSetProvider;
    dsConsultaColab: TDataSource;
    qryConsultaColab: TFDQuery;
    cdsConsultaColab: TClientDataSet;
    dspConsultaCargos: TDataSetProvider;
    dsConsultaCargos: TDataSource;
    qryConsultaCargos: TFDQuery;
    cdsConsultaCargos: TClientDataSet;
    dspAgendamento: TDataSetProvider;
    dsAgendamento: TDataSource;
    qryAgendamento: TFDQuery;
    cdsAgendamento: TClientDataSet;
    dspConsultaUsuario: TDataSetProvider;
    dsConsultaUsuario: TDataSource;
    qryConsultaUsuario: TFDQuery;
    cdsConsultaUsuario: TClientDataSet;
    procedure cdsConsultaCliAfterOpen(DataSet: TDataSet);
    procedure cdsConsultaColabAfterOpen(DataSet: TDataSet);
    procedure cdsAgendamentoAfterOpen(DataSet: TDataSet);
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

procedure Tdm.cdsAgendamentoAfterOpen(DataSet: TDataSet);
begin
  cdsAgendamento.FieldByName('diaagendamento').EditMask := '!99/99/9999;1;_';
  cdsAgendamento.FieldByName('hora').EditMask := '!99:99;1;_';
  cdsAgendamento.FieldByName('telefonecliente').EditMask :=
    '!(99)99999-9999;0;_';
end;

procedure Tdm.cdsConsultaCliAfterOpen(DataSet: TDataSet);
begin
  cdsConsultaCli.FieldByName('cpf').EditMask := '!999.999.999-99;0;_';
  cdsConsultaCli.FieldByName('cep').EditMask := '!99.999-999;0;_';
  cdsConsultaCli.FieldByName('telefone').EditMask := '!(99)99999-9999;0;_';
  cdsConsultaCli.FieldByName('datanasc').EditMask := '!99/99/9999;1;_';
end;

procedure Tdm.cdsConsultaColabAfterOpen(DataSet: TDataSet);
begin
  cdsConsultaColab.FieldByName('cpf').EditMask := '!999.999.999-99;0;_';
end;

end.
