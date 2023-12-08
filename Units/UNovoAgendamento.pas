unit UNovoAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, Datasnap.DBClient,
  Vcl.Imaging.pngimage;

type
  TfrmNovoAgendamento = class(TForm)
    pnlCentral: TPanel;
    dsNovoAgendamento: TDataSource;
    pnlSubTop: TPanel;
    SpeedButton1: TSpeedButton;
    lblEmpresa: TLabel;
    imgLogo: TImage;
    dbCbxCli: TDBLookupComboBox;
    dbCbxColab: TDBLookupComboBox;
    dbEdtEmail: TDBEdit;
    dbEdtHora: TDBEdit;
    dbEdtObservacao: TDBEdit;
    dbEdtTelefone: TDBEdit;
    dtpData: TDateTimePicker;
    lblCliente: TLabel;
    lblData: TLabel;
    lblEmail: TLabel;
    lblHora: TLabel;
    lblObs: TLabel;
    lblTelefone: TLabel;
    lnlProfissional: TLabel;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlConfirmar: TPanel;
    btnConfirmar: TSpeedButton;
    pnlPesquisaCli: TPanel;
    btnPesquisaCli: TSpeedButton;
    pnlPesquisaColab: TPanel;
    btnPesquisaColab: TSpeedButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisaCliClick(Sender: TObject);
    procedure btnPesquisaColabClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure ValidaTela;
    procedure ArredondaPainel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovoAgendamento: TfrmNovoAgendamento;

implementation

uses
  UDm, UFuncoes, uAgendamento, uPesquisaPadrao;

{$R *.dfm}

procedure TfrmNovoAgendamento.ArredondaPainel;
begin
  RoundedPanel(pnlCentral, 12);
  RoundedPanel(pnlConfirmar, 12);
  RoundedPanel(pnlCancelar, 12);
  RoundedPanel(pnlSubTop, 12);
end;

procedure TfrmNovoAgendamento.btnCancelarClick(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Realmente deseja cancelar processo atual ?',
     'Se cancelar o processo atual nenhuma alteração sera salva') then
  begin
    (dsNovoAgendamento.DataSet as TClientDataSet).Cancel;
    Self.Close;
  end;
end;

procedure TfrmNovoAgendamento.btnConfirmarClick(Sender: TObject);
begin
  (dsNovoAgendamento.DataSet as TClientDataSet).FieldByName('diaagendamento').AsDateTime
    := dtpData.Date;
  (dsNovoAgendamento.DataSet as TClientDataSet).Post;
  (dsNovoAgendamento.DataSet as TClientDataSet).ApplyUpdates(-1);
  Self.Close;
end;

procedure TfrmNovoAgendamento.btnFecharClick(Sender: TObject);
begin
  btnCancelarClick(Self);
end;

procedure TfrmNovoAgendamento.btnPesquisaCliClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(Self);
  try
    frmPesquisaPadrao.qryPadrao.SQL.Clear;
    frmPesquisaPadrao.qryPadrao.SQL.Text := ('SELECT p.id as "Id", p.nomerazaosocial as "Nome" ' +
                                            'FROM pessoa p ' +
                                            'WHERE p.tipopessoa = ''CLIENTES'' ' +
                                            'ORDER by p.nomerazaosocial asc');
    frmPesquisaPadrao.ShowModal;
    if frmPesquisaPadrao.ModalResult = 1 then
    begin
      (dsNovoAgendamento.DataSet as TClientDataSet).FieldByName('idcliente').AsInteger
        := frmPesquisaPadrao.cdsPadrao.FieldByName('Id').AsInteger;
    end;
  finally
    frmPesquisaPadrao.Free;
  end;
end;

procedure TfrmNovoAgendamento.btnPesquisaColabClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(Self);
  try
    frmPesquisaPadrao.qryPadrao.SQL.Clear;
    frmPesquisaPadrao.qryPadrao.SQL.Text := ('SELECT p.id as "Id", p.nomerazaosocial as "Nome" ' +
                                            'FROM pessoa p ' +
                                            'WHERE p.tipopessoa = ''FUNCIONARIOS'' ' +
                                            'ORDER by p.nomerazaosocial asc');
    frmPesquisaPadrao.ShowModal;
    if frmPesquisaPadrao.ModalResult = 1 then
    begin
      (dsNovoAgendamento.DataSet as TClientDataSet).FieldByName('idcolaborador').AsInteger
        := frmPesquisaPadrao.cdsPadrao.FieldByName('Id').AsInteger;
    end;
  finally
    frmPesquisaPadrao.Free;
  end;
end;

procedure TfrmNovoAgendamento.FormResize(Sender: TObject);
begin
  Self.ArredondaPainel;
end;

procedure TfrmNovoAgendamento.FormShow(Sender: TObject);
begin
  if (dsNovoAgendamento.DataSet as TClientDataSet).FieldByName('dataagendamento').AsDateTime
    > 01/01/2000 then
  begin
      dtpData.Date := (dsNovoAgendamento.DataSet as TClientDataSet).FieldByName('dataagendamento').AsDateTime;
  end
  else
  begin
    dtpData.Date := Date;
  end;
end;

procedure TfrmNovoAgendamento.ValidaTela;
begin
  if dtpData.Date < 01-01-2000 then
  begin
    ShowMessage('Informe a Data do Agendamento!!');
    Abort;
  end;

  if dtpData.Date < Date then
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
