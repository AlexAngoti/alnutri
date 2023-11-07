unit uBaixaReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, SWHComboBox,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, SWHDBEdit, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.DBClient;

type
  TfrmMovBaixaReceber = class(TForm)
    pnlCentral: TPanel;
    lblDataVencimento: TLabel;
    lblValor: TLabel;
    lblFormaPgto: TLabel;
    lblDescricao: TLabel;
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
    dsMovContasReceber: TDataSource;
    lblDataPagamento: TLabel;
    dtpDataPgto: TDateTimePicker;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ValidaCampo;
    procedure AlimentaCampo;
    procedure EstadoQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovBaixaReceber: TfrmMovBaixaReceber;

implementation

uses
  UContasReceber, UFuncoes;

{$R *.dfm}

procedure TfrmMovBaixaReceber.AlimentaCampo;
begin
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('datapgto').AsDateTime
    := dtpDataPgto.DateTime;
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('datavencimento').AsDateTime
    := dtpDataVencimento.DateTime;
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('situacao').AsString
    := 'f';
  (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('formapgto').AsString
    := cbxTipoPgto.Text;
end;

procedure TfrmMovBaixaReceber.btnCancelarClick(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja cancelar o processo atual ?',
  'Se cancelar o processo atual não será salvo') then
  begin
    (dsMovContasReceber.DataSet as TClientDataSet).Cancel;
    Self.Close;
  end;
end;

procedure TfrmMovBaixaReceber.btnFecharClick(Sender: TObject);
begin
  btnCancelarClick(Self);
end;

procedure TfrmMovBaixaReceber.btnNovoLancamentoClick(Sender: TObject);
begin
  Self.ValidaCampo;
  Self.AlimentaCampo;
  (dsMovContasReceber.DataSet as TClientDataSet).Post;
  (dsMovContasReceber.DataSet as TClientDataSet).ApplyUpdates(-1);
  Self.Close;
end;

procedure TfrmMovBaixaReceber.EstadoQuery;
begin
  if (dsMovContasReceber.DataSet as TClientDataSet).State in [dsEdit] then
  begin
    dtpDataVencimento.Date := (dsMovContasReceber.DataSet as TClientDataSet).
      FieldByName('datavencimento').AsDateTime;
    cbxTipoPgto.Text       := (dsMovContasReceber.DataSet as TClientDataSet).
      FieldByName('formapgto').AsString;
  end;
end;

procedure TfrmMovBaixaReceber.FormCreate(Sender: TObject);
begin
  dtpDataVencimento.Date := Date;
  dtpDataPgto.Date       := Date;
  Self.EstadoQuery;
end;

procedure TfrmMovBaixaReceber.ValidaCampo;
begin
  if edtValor.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Favor informar o valor!!',
    'Informar valor do lançamento');
    edtValor.SetFocus;
    Abort;
  end;

  if StrToCurr(edtValor.Text) < (dsMovContasReceber.DataSet as TClientDataSet).FieldByName('valor').AsCurrency then
  begin
    UFuncoes.MsgNaoConfirmar('Valor da baixa não pode ser menor que o valor original!!',
    'Informar valor cheio do lançamento');
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

  if cbxTipoPgto.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Favor escolher uma forma de pagamento!!',
    'Favor informar forma de pagamento do lançamento');
    cbxTipoPgto.SetFocus;
    Abort;
  end;
end;

end.
