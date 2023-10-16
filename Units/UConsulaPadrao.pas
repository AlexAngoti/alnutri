unit UConsulaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Datasnap.DBClient, Datasnap.Provider;

type
  TFrmConsultaPadrao = class(TForm)
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
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dsConsultaPadrao: TDataSource;
    cdsConsultaPadrao: TClientDataSet;
    dspConsultaPadrao: TDataSetProvider;
    procedure btnFecharClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure OpenDataSet;
    { Private declarations }
  public
    procedure FiltrarPorCampo(ACampoFiltro: String);
    procedure OpenScreen; Virtual; Abstract;
    { Public declarations }
  end;

var
  FrmConsultaPadrao: TFrmConsultaPadrao;

implementation

uses
  UMsgConfirmar, UDm, UFuncoes;

{$R *.dfm}

procedure TFrmConsultaPadrao.btnEditarClick(Sender: TObject);
begin
  cdsConsultaPadrao.Edit;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TFrmConsultaPadrao.btnExcluirClick(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja realmente excluir ?',
    'Este registro será completamente excluido') then
  begin
    cdsConsultaPadrao.Delete;
    cdsConsultaPadrao.ApplyUpdates(-1);
  end;
end;

procedure TFrmConsultaPadrao.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmConsultaPadrao.btnInserirClick(Sender: TObject);
begin
  cdsConsultaPadrao.Insert;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TFrmConsultaPadrao.FiltrarPorCampo(ACampoFiltro: String);
begin
  dsConsultaPadrao.DataSet.Filtered := False;
  if edtPesquisa.Text <> EmptyStr then
  begin
    dsConsultaPadrao.DataSet.Filter := 'UPPER('+ACampoFiltro+') LIKE ' +
      QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
    dsConsultaPadrao.DataSet.Filtered := True;
  end;
end;

procedure TFrmConsultaPadrao.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TFrmConsultaPadrao.OpenDataSet;
begin
  cdsConsultaPadrao.Close;
  cdsConsultaPadrao.Open;
end;

end.
