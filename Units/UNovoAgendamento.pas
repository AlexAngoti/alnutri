unit UNovoAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmNovoAgendamento = class(TForm)
    pnlCentral: TPanel;
    btnFechar: TSpeedButton;
    lnlProfissional: TLabel;
    lblData: TLabel;
    lblHora: TLabel;
    pnlConfirmar: TPanel;
    btnConfirmar: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    lblCliente: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    lblObs: TLabel;
    dbCbxColab: TDBLookupComboBox;
    dbCbxCli: TDBLookupComboBox;
    dbEdtHora: TDBEdit;
    dbEdtTelefone: TDBEdit;
    dbEdtEmail: TDBEdit;
    dbEdtObservacao: TDBEdit;
    dbEdtData: TDBEdit;
    pnlPesquisaColab: TPanel;
    btnPesquisaColab: TSpeedButton;
    pnlPesquisaCli: TPanel;
    btnPesquisaCli: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisaColabClick(Sender: TObject);
    procedure btnPesquisaCliClick(Sender: TObject);
  private
    procedure ClearDataSet;
    procedure SaveReg;
    procedure ValidaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovoAgendamento: TfrmNovoAgendamento;

implementation

uses
  UDm;

{$R *.dfm}

procedure TfrmNovoAgendamento.btnCancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Realmente Deseja Cancelar esse Processo ?',
    'Excluir', MB_YESNO + MB_ICONWARNING) = idYes then
  begin
    Self.ClearDataSet;
    Self.Close;
  end;
end;

procedure TfrmNovoAgendamento.btnConfirmarClick(Sender: TObject);
begin
  Self.ValidaTela;
  Self.SaveReg;
  Self.ClearDataSet;

  ShowMessage('Agendamento Feito Com Sucesso!!');

  Self.Close;
end;

procedure TfrmNovoAgendamento.btnFecharClick(Sender: TObject);
begin
  if Application.MessageBox('Ao Sair Poderá Perder o Processo ?', 'Excluir',
    MB_YESNO + MB_ICONWARNING) = idYes then
  begin
    Self.Close;
  end;
end;

procedure TfrmNovoAgendamento.ClearDataSet;
begin

end;

procedure TfrmNovoAgendamento.SaveReg;
begin
//  dm.cdsAgendamento.FieldByName('nomecliente').AsString :=
//    dm.cdsConsultaCli.FieldByName('name').AsString;
//  dm.cdsAgendamento.FieldByName('nomecolaborador').AsString :=
//    dm.cdsConsultaColab.FieldByName('name').AsString;
//  dm.cdsAgendamento.FieldByName('situacao').AsString := 'A';
//  dm.cdsAgendamento.Post;
//  dm.cdsAgendamento.ApplyUpdates(-1);
end;

procedure TfrmNovoAgendamento.btnPesquisaColabClick(Sender: TObject);
begin
//  dm.cdsAgendamento.FieldByName('idcolaborador').AsInteger :=
//    dm.cdsConsultaColab.FieldByName('id').AsInteger;
end;

procedure TfrmNovoAgendamento.btnPesquisaCliClick(Sender: TObject);
begin
//  FrmPesquisaColab := TFrmPesquisaColab.Create(Self);
//  try
//    FrmPesquisaColab.dbgdConsulta.DataSource := dm.dsConsultaCli;
//    FrmPesquisaColab.ShowModal;
//  finally
//    FrmPesquisaColab.Free;
//  end;
//
//  dm.cdsAgendamento.FieldByName('idcliente').AsInteger :=
//    dm.cdsConsultaCli.FieldByName('id').AsInteger;
end;

procedure TfrmNovoAgendamento.ValidaTela;
begin
  if dbEdtData.Text = EmptyStr then
  begin
    ShowMessage('Informe a Data do Agendamento!!');
    Abort;
  end;

  if StrToDate(dbEdtData.Text) < Date then
  begin
    ShowMessage('Data do Agendamento não Pode ser Menor que a Data de Hoje!!');
    Abort;
  end;

  if dbEdtHora.Text = '  :  ' then
  begin
    ShowMessage('Informe a Hora do Agendamento!!');
    Abort;
  end;

  if dbEdtTelefone.Text = EmptyStr then
  begin
    ShowMessage('Informe um Telefone!!');
    Abort;
  end;

  if dbCbxColab.Text = EmptyStr then
  begin
    ShowMessage('Informe um Profissional!!');
    Abort;
  end;

  if dbCbxCli.Text = EmptyStr then
  begin
    ShowMessage('Informe um Cliente!!');
    Abort;
  end;
end;

end.
