unit uBaixaPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, SWHComboBox,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, SWHDBEdit, Vcl.Buttons, Vcl.ExtCtrls,
  Datasnap.DBClient;

type
  TfrmBaixaPagar = class(TForm)
    pnlCentral: TPanel;
    lblDataVencimento: TLabel;
    lblValor: TLabel;
    lblFormaPgto: TLabel;
    lblDescricao: TLabel;
    lblDataPagamento: TLabel;
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
    dtpDataPgto: TDateTimePicker;
    dsMovContasPagar: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoLancamentoClick(Sender: TObject);
  private
    procedure EstadoQuery;
    procedure AlimentaCampo;
    procedure ValidaCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaPagar: TfrmBaixaPagar;

implementation

uses
  UDm, UFuncoes, uContasPagar;

{$R *.dfm}

procedure TfrmBaixaPagar.AlimentaCampo;
begin
  (dsMovContasPagar.DataSet as TClientDataSet).FieldByName('datapgto').AsDateTime
    := dtpDataPgto.DateTime;
  (dsMovContasPagar.DataSet as TClientDataSet).FieldByName('datavencimento').AsDateTime
    := dtpDataVencimento.DateTime;
  (dsMovContasPagar.DataSet as TClientDataSet).FieldByName('situacao').AsString
    := 'f';
  (dsMovContasPagar.DataSet as TClientDataSet).FieldByName('formapgto').AsString
    := cbxTipoPgto.Text;
end;

procedure TfrmBaixaPagar.btnCancelarClick(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja cancelar o processo atual ?',
  'Se cancelar o processo atual não será salvo') then
  begin
    (dsMovContasPagar.DataSet as TClientDataSet).Cancel;
    Self.Close;
  end;
end;

procedure TfrmBaixaPagar.btnFecharClick(Sender: TObject);
begin
  btnCancelarClick(Self);
end;

procedure TfrmBaixaPagar.btnNovoLancamentoClick(Sender: TObject);
begin
  Self.ValidaCampo;
  Self.AlimentaCampo;
  (dsMovContasPagar.DataSet as TClientDataSet).Post;
  (dsMovContasPagar.DataSet as TClientDataSet).ApplyUpdates(-1);
  Self.Close;
end;

procedure TfrmBaixaPagar.EstadoQuery;
begin
  if (dsMovContasPagar.DataSet as TClientDataSet).State in [dsEdit] then
  begin
    dtpDataVencimento.Date := (dsMovContasPagar.DataSet as TClientDataSet).
      FieldByName('datavencimento').AsDateTime;
    cbxTipoPgto.Text       := (dsMovContasPagar.DataSet as TClientDataSet).
      FieldByName('formapgto').AsString;
  end;
end;

procedure TfrmBaixaPagar.FormCreate(Sender: TObject);
begin
  dtpDataVencimento.Date := Date;
  dtpDataPgto.Date       := Date;
  Self.EstadoQuery;
end;

procedure TfrmBaixaPagar.ValidaCampo;
begin
  if edtValor.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Favor informar o valor!!',
    'Informar valor do lançamento');
    edtValor.SetFocus;
    Abort;
  end;

  if StrToCurr(edtValor.Text) < (dsMovContasPagar.DataSet as TClientDataSet).FieldByName('valor').AsCurrency then
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
