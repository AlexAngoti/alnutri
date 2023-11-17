unit UManutencaoPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, SWHDBEdit, Data.DB, SWHComboBox, Vcl.ComCtrls,
  Datasnap.DBClient;

type
  TfrmManutencaoPagar = class(TForm)
    pnlCentral: TPanel;
    lblDataVencimento: TLabel;
    lblValor: TLabel;
    lblFormaPgto: TLabel;
    lblDescricao: TLabel;
    lblFornecedor: TLabel;
    btnPesquisa: TSpeedButton;
    pnlSubBot: TPanel;
    pnlNovoLanc: TPanel;
    btnNovoLancamento: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    edtValor: TSWHDBEdit;
    edtDescricao: TSWHDBEdit;
    dtpDataVencimento: TDateTimePicker;
    cbxTipoPgto: TSWHComboBox;
    edtCodCliente: TSWHDBEdit;
    edtNomeCliente: TSWHDBEdit;
    dsMovContasPagar: TDataSource;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
  private
    procedure ConsultaCliente;
    procedure EstadoQuery;
    procedure AlimentaCampo;
    procedure ValidaCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencaoPagar: TfrmManutencaoPagar;

implementation

uses
  uPesquisaPadrao, UFuncoes, uContasPagar, UDm;

{$R *.dfm}

procedure TfrmManutencaoPagar.AlimentaCampo;
begin
  (dsMovContasPagar.DataSet as TClientDataSet).FieldByName('datavencimento').
    AsDateTime := dtpDataVencimento.Date;
  (dsMovContasPagar.DataSet as TClientDataSet).FieldByName('formapgto').
    AsString        := cbxTipoPgto.Text;
  (dsMovContasPagar.DataSet as TClientDataSet).FieldByName('situacao').
    AsString := 'a';
end;

procedure TfrmManutencaoPagar.btnCancelarClick(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja cancelar o processo atual ?',
  'Se cancelar o processo atual não será salvo') then
  begin
    (dsMovContasPagar.DataSet as TClientDataSet).Cancel;
    Self.Close;
  end;
end;

procedure TfrmManutencaoPagar.btnFecharClick(Sender: TObject);
begin
  btnCancelarClick(Self);
end;

procedure TfrmManutencaoPagar.btnNovoLancamentoClick(Sender: TObject);
begin
  Self.ValidaCampo;
  Self.AlimentaCampo;
  (dsMovContasPagar.DataSet as TClientDataSet).Post;
  (dsMovContasPagar.DataSet as TClientDataSet).ApplyUpdates(-1);
  Self.Close;
end;

procedure TfrmManutencaoPagar.btnPesquisaClick(Sender: TObject);
begin
  Self.ConsultaCliente;
end;

procedure TfrmManutencaoPagar.ConsultaCliente;
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(Self);
  try
    frmPesquisaPadrao.qryPadrao.SQL.Clear;
    frmPesquisaPadrao.qryPadrao.SQL.Text := ('SELECT p.id as "Id", p.nomerazaosocial as "Nome" ' +
                                            'FROM pessoa p ' +
                                            'WHERE p.tipopessoa = ''FORNECEDORES'' ' +
                                            'ORDER by p.nomerazaosocial asc');
    frmPesquisaPadrao.ShowModal;
    if frmPesquisaPadrao.ModalResult = 1 then
    begin
      edtCodCliente.Text   := IntToStr(frmPesquisaPadrao.cdsPadrao.FieldByName('Id').AsInteger);
      edtNomeCliente.Text  := frmPesquisaPadrao.cdsPadrao.FieldByName('Nome').AsString;
    end;
  finally
    frmPesquisaPadrao.Free;
  end;
end;

procedure TfrmManutencaoPagar.EstadoQuery;
begin
  if (dsMovContasPagar.DataSet as TClientDataSet).State in [dsEdit] then
  begin
    dtpDataVencimento.Date := (dsMovContasPagar.DataSet as TClientDataSet).
      FieldByName('datavencimento').AsDateTime;
    cbxTipoPgto.Text       := (dsMovContasPagar.DataSet as TClientDataSet).
      FieldByName('formapgto').AsString;
  end;
end;

procedure TfrmManutencaoPagar.FormCreate(Sender: TObject);
begin
  dtpDataVencimento.Date := Date;
  Self.EstadoQuery;
end;

procedure TfrmManutencaoPagar.ValidaCampo;
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
