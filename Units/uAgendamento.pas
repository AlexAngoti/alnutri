unit uAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Datasnap.DBClient,
  Vcl.Imaging.pngimage, SWHDBLookupComboBox, Datasnap.Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    dtpDataAgendamento: TDateTimePicker;
    lblDataAgendamento: TLabel;
    dbGrdAgendamento: TDBGrid;
    btnPesquisa: TSpeedButton;
    cbxFuncionario: TSWHDBLookupComboBox;
    lblProfissional: TLabel;
    lblCliente: TLabel;
    cbxCliente: TSWHDBLookupComboBox;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    dsFuncionario: TDataSource;
    cdsFuncionario: TClientDataSet;
    dspFuncionario: TDataSetProvider;
    qryFuncionarioCliente: TFDQuery;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteid: TLargeintField;
    cdsClientenomerazaosocial: TWideStringField;
    cdsFuncionarioid: TLargeintField;
    cdsFuncionarionomerazaosocial: TWideStringField;
    cdsFuncionariotipopessoa: TWideStringField;
    cdsClientetipopessoa: TWideStringField;
    cdsAgendamentoid: TLargeintField;
    cdsAgendamentodiaagendamento: TDateField;
    cdsAgendamentohora: TWideStringField;
    cdsAgendamentoidcliente: TIntegerField;
    cdsAgendamentotelefonecliente: TWideStringField;
    cdsAgendamentoemailcliente: TWideStringField;
    cdsAgendamentoidcolaborador: TIntegerField;
    cdsAgendamentoobservacao: TWideStringField;
    cdsAgendamentosituacao: TWideStringField;
    cdsAgendamentonomerazaosocial: TWideStringField;
    pnlRodape: TPanel;
    lblExcluir: TLabel;
    lblAlterar: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoAgendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cbxFuncionarioClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbGrdAgendamentoDblClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure OpenDataSet;
    procedure OpenScreen;
    procedure FiltraCampo;
    procedure FiltraCampoCli;
    procedure ArredondaPainel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendamento: TfrmAgendamento;

implementation

uses
  UNovoAgendamento, UDm, UMsgConfirmar, UFuncoes, uPesquisaPadrao;

{$R *.dfm}

procedure TfrmAgendamento.ArredondaPainel;
begin
  RoundedPanel(pnlNovoAgend, 12);
  RoundedPanel(pnlCentral, 12);
  RoundedPanel(pnlSubTop, 12);
end;

procedure TfrmAgendamento.btnEditarClick(Sender: TObject);
begin
  (dsAgendamento.DataSet as TClientDataSet).Edit;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TfrmAgendamento.btnExcluirClick(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja realmente excluir ?',
    'Este registro será completamente excluido') then
  begin
    (dsAgendamento.DataSet as TClientDataSet).Delete;
    (dsAgendamento.DataSet as TClientDataSet).ApplyUpdates(-1);
    Self.OpenDataSet;
  end;
end;

procedure TfrmAgendamento.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmAgendamento.btnNovoAgendClick(Sender: TObject);
begin
  (dsAgendamento.DataSet as TClientDataSet).Insert;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TfrmAgendamento.btnPesquisaClick(Sender: TObject);
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
      (dsAgendamento.DataSet as TClientDataSet).Edit;
      (dsAgendamento.DataSet as TClientDataSet).FieldByName('idcolaborador').AsInteger
        := frmPesquisaPadrao.cdsPadrao.FieldByName('Id').AsInteger;
      cbxFuncionarioClick(Self);
    end;
  finally
    frmPesquisaPadrao.Free;
  end;
end;

procedure TfrmAgendamento.FiltraCampo;
begin
  dsFuncionario.DataSet.Filtered := False;
  dsFuncionario.DataSet.Filter := 'UPPER(tipopessoa) LIKE ' +
      QuotedStr('%FUNCIONARIOS%');
  dsFuncionario.DataSet.Filtered := True;
end;

procedure TfrmAgendamento.FiltraCampoCli;
begin
  dsCliente.DataSet.Filtered := False;
  dsCliente.DataSet.Filter := 'UPPER(tipopessoa) LIKE ' +
      QuotedStr('%CLIENTES%');
  dsCliente.DataSet.Filtered := True;
end;

procedure TfrmAgendamento.FormCreate(Sender: TObject);
begin
  Self.OpenDataSet;
end;

procedure TfrmAgendamento.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DELETE then
  begin
    btnExcluirClick(Self);
  end;

  if Key = VK_F2 then
  begin
    btnEditarClick(Self);
  end;

  if Key = VK_F1 then
  begin
    btnNovoAgendClick(Self);
  end;
end;

procedure TfrmAgendamento.FormResize(Sender: TObject);
begin
  pnlTop.Left      := Round(pnlCentral.Width/2 - PnlTop.Width/2);
  pnlSubBot.Top    := (Round(pnlCentral.Height/2 - pnlSubBot.Height/2));
  pnlSubBot.Height := Screen.Height;
  pnlSubBot.Width  := Screen.Width;
  Self.ArredondaPainel;
end;

procedure TfrmAgendamento.OpenDataSet;
begin
  (dsAgendamento.DataSet as TClientDataSet).Close;
  (dsAgendamento.DataSet as TClientDataSet).ParamByName('DATA').AsDate
    := 0;
  (dsAgendamento.DataSet as TClientDataSet).ParamByName('COLAB').AsInteger
    := 0;
  (dsAgendamento.DataSet as TClientDataSet).Open;

  (dsFuncionario.DataSet as TClientDataSet).Close;
  (dsFuncionario.DataSet as TClientDataSet).Open;
  Self.FiltraCampo;

  (dsCliente.DataSet as TClientDataSet).Close;
  (dsCliente.DataSet as TClientDataSet).Open;
  Self.FiltraCampoCli;
end;

procedure TfrmAgendamento.OpenScreen;
begin
  frmNovoAgendamento := TfrmNovoAgendamento.Create(Self);
  try
    frmNovoAgendamento.ShowModal;
  finally
    frmNovoAgendamento.Free;
  end;
end;

procedure TfrmAgendamento.cbxFuncionarioClick(Sender: TObject);
begin
  (dsAgendamento.DataSet as TClientDataSet).Close;
  (dsAgendamento.DataSet as TClientDataSet).ParamByName('DATA').AsDate
    := dtpDataAgendamento.Date;
  (dsAgendamento.DataSet as TClientDataSet).ParamByName('COLAB').AsInteger
    := cdsFuncionarioid.AsInteger;
  (dsAgendamento.DataSet as TClientDataSet).Open;

  if (dsAgendamento.DataSet as TClientDataSet).RecordCount = 0 then
  begin
    UFuncoes.MsgNaoConfirmar('Nenhum agendamento encontrado!',
      'Essa data ou funcionario não possui nenhum agendamento');
    Abort;
  end;
end;

procedure TfrmAgendamento.dbGrdAgendamentoDblClick(Sender: TObject);
begin
  btnEditarClick(Self);
end;

end.
