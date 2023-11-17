unit uAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Datasnap.DBClient,
  Vcl.Imaging.pngimage, SWHDBLookupComboBox, Datasnap.Provider;

type
  TfrmAgendamento = class(TForm)
    pnlCentral: TPanel;
    PnlTop: TPanel;
    pnlNovoAgend: TPanel;
    btnNovoAgend: TSpeedButton;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    imgLogo: TImage;
    pnlSubBot: TPanel;
    dspAgendamento: TDataSetProvider;
    cdsAgendamento: TClientDataSet;
    dsAgendamento: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    btnPesquisa: TSpeedButton;
    SWHDBLookupComboBox1: TSWHDBLookupComboBox;
    Label2: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoAgendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure dbCbxColabEnter(Sender: TObject);
    procedure dbCbxColabClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure OpenScreen;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendamento: TfrmAgendamento;

implementation

uses
  UNovoAgendamento, UDm, UMsgConfirmar, UFuncoes;

{$R *.dfm}

procedure TfrmAgendamento.btnEditarClick(Sender: TObject);
begin
  //dm.cdsAgendamento.Edit;
  Self.OpenScreen;
end;

procedure TfrmAgendamento.btnExcluirClick(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja realmente excluir ?',
    'Este registro será completamente excluido') then
  begin
   // dm.cdsAgendamento.Delete;
   // dm.cdsAgendamento.ApplyUpdates(-1);
  end;
end;

procedure TfrmAgendamento.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmAgendamento.btnNovoAgendClick(Sender: TObject);
begin
  Self.OpenDataSet;
  //dm.cdsAgendamento.Insert;
  Self.OpenScreen;
end;

procedure TfrmAgendamento.dbCbxColabClick(Sender: TObject);
begin
//  dm.cdsAgendamento.Close;
//  dm.cdsAgendamento.ParamByName('DATA').AsDate := dtpData.Date;
//  dm.cdsAgendamento.ParamByName('COLAB').AsInteger :=
//    dm.cdsConsultaColab.FieldByName('id').AsInteger;
//  dm.cdsAgendamento.Open;

 { if dm.cdsAgendamento.FieldByName('diaagendamento').AsDateTime <> dtpData.Date
  then
  begin
    ShowMessage('Não há agendamentos para esse dia!');
  end;}

end;

procedure TfrmAgendamento.dbCbxColabEnter(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmAgendamento.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmAgendamento.FormResize(Sender: TObject);
begin
  pnlTop.Left    := Round(pnlCentral.Width/2 - PnlTop.Width/2);
  pnlSubBot.Left := Round(pnlCentral.Width/2 - pnlSubBot.Width/2);
end;

procedure TfrmAgendamento.OpenDataSet;
begin
//  dm.cdsConsultaColab.Close;
//  dm.cdsConsultaColab.Open;
//
//  dm.cdsConsultaCli.Close;
//  dm.cdsConsultaCli.Open;

 { dm.cdsAgendamento.Close;
  dm.cdsAgendamento.ParamByName('DATA').AsDate := 0;
  dm.cdsAgendamento.ParamByName('COLAB').AsInteger := 0;
  dm.cdsAgendamento.Open; }
end;

procedure TfrmAgendamento.OpenScreen;
begin
  FrmNovoAgendamento := TfrmNovoAgendamento.Create(Self);
  try
    FrmNovoAgendamento.ShowModal;
  finally
    FrmNovoAgendamento.Free;
  end;
end;

procedure TfrmAgendamento.btnPesquisaClick(Sender: TObject);
begin//  dbCbxColab.KeyValue := dm.cdsConsultaColab.FieldByName('id').AsInteger;
//  dbCbxColabClick(Self);
end;

end.
