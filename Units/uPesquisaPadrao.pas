unit uPesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesquisaPadrao = class(TForm)
    pnlPrincipal: TPanel;
    dbgdConsulta: TDBGrid;
    pnlPesquisa: TPanel;
    lblPesquisar: TLabel;
    btnPesquisa: TSpeedButton;
    btnInserir: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    edtPesquisa: TEdit;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    dspPadrao: TDataSetProvider;
    qryPadrao: TFDQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

uses
  UDm;

{$R *.dfm}

procedure TfrmPesquisaPadrao.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmPesquisaPadrao.FormShow(Sender: TObject);
begin
  (dsPadrao.DataSet as TClientDataSet).Close;
  (dsPadrao.DataSet as TClientDataSet).Open;
end;

end.
