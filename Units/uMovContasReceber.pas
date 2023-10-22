unit uMovContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, SWHDBEdit, Data.DB, Vcl.ComCtrls, SWHComboBox,
  Datasnap.DBClient;

type
  TfrmMovReceber = class(TForm)
    pnlCentral: TPanel;
    pnlSubBot: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    edtValor: TSWHDBEdit;
    edtDescricao: TSWHDBEdit;
    dsMovContasReceber: TDataSource;
    dtpDataVencimento: TDateTimePicker;
    cbxTipoPgto: TSWHComboBox;
    lblDataVencimento: TLabel;
    lblValor: TLabel;
    lblFormaPgto: TLabel;
    lblDescricao: TLabel;
    lblCliente: TLabel;
    edtCodCliente: TSWHDBEdit;
    btnPesquisa: TSpeedButton;
    edtNomeCliente: TSWHDBEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure EstadoQuery;
    procedure ValidaCampo;
    procedure AlimentaCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovReceber: TfrmMovReceber;

implementation

uses
  UFuncoes, UContasReceber, UDm, uPesquisaPadrao;

{$R *.dfm}

procedure TfrmMovReceber.AlimentaCampo;
begin
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('datavencimento').
    AsDateTime := dtpDataVencimento.Date;
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('formapgto').
    AsString        := cbxTipoPgto.Text;
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('situacao').
    AsString := 'a';
end;

procedure TfrmMovReceber.btnCancelarClick(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja cancelar o processo atual ?',
  'Se cancelar o processo atual não será salvo') then
  begin
    (dsMovContasReceber.DataSet as TClientDataSet).Cancel;
    Self.Close;
  end;
end;

procedure TfrmMovReceber.btnFecharClick(Sender: TObject);
begin
  btnCancelarClick(Self);
end;

procedure TfrmMovReceber.btnNovoLancamentoClick(Sender: TObject);
begin
  Self.ValidaCampo;
  Self.AlimentaCampo;
  (dsMovContasReceber.DataSet as TClientDataSet).Post;
  (dsMovContasReceber.DataSet as TClientDataSet).ApplyUpdates(-1);
  Self.Close;
end;

procedure TfrmMovReceber.btnPesquisaClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(Self);
  try
    frmPesquisaPadrao.qryPadrao.SQL.Clear;
    frmPesquisaPadrao.qryPadrao.SQL.Text := ('SELECT p.id as "Id", p.nomefantasia as "Nome" ' +
                                          'FROM pessoa p ' +
                                          'WHERE p.tipopessoa = ''CLIENTES'' ' +
                                          'ORDER by p.nomefantasia asc');
    frmPesquisaPadrao.ShowModal;
  finally
    frmPesquisaPadrao.Free;
  end;
end;

procedure TfrmMovReceber.EstadoQuery;
begin
  if (dsMovContasReceber.DataSet as TClientDataSet).State in [dsEdit] then
  begin
    dtpDataVencimento.Date := (dsMovContasReceber.DataSet as TClientDataSet).
      FieldByName('datavencimento').AsDateTime;
    cbxTipoPgto.Text       := (dsMovContasReceber.DataSet as TClientDataSet).
      FieldByName('formapgto').AsString;
  end;
end;

procedure TfrmMovReceber.FormCreate(Sender: TObject);
begin
  dtpDataVencimento.Date := Date;
  Self.EstadoQuery;
end;

procedure TfrmMovReceber.ValidaCampo;
begin
  if dtpDataVencimento.Date < Date then
  begin
    if UFuncoes.MsgConfirmar('A data de vencimento e menor que data atual. Deseja Continuar ?',
    'Se continuar esse lançamento entrará como atrasado ') = False then
    begin
      dtpDataVencimento.SetFocus;
      Abort;
    end;
  end;

  if edtValor.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Favor informar o valor!!',
    'Informar valor do lançamento');
    edtValor.SetFocus;
    Abort;
  end;

  if edtDescricao.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Favor informar a descrição!!',
    'Informar uma descrição para o lançamento');
    edtDescricao.SetFocus;
    Abort;
  end;

  if (edtCodCliente.Text = EmptyStr) or (edtNomeCliente.Text = EmptyStr) then
  begin
    UFuncoes.MsgNaoConfirmar('Favor escolher um cliente!!',
    'Informe o cliente referente a esse lançamento');
    edtCodCliente.SetFocus;
    Abort;
  end;

  if cbxTipoPgto.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Favor escolher uma forma de pagamento!!',
    'Favor informar forma de pagamento do lançamento');
    cbxTipoPgto.SetFocus;
    Abort;
  end;

end;

end.
