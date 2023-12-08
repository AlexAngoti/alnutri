unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls, MidasLib, StrUtils, Ucadastropadrao, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, SWHMaskEdit, SWHDBEdit, SWHComboBox, REST.Types,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.Imaging.pngimage;

type
  TfrmCadastroCliente = class(TfrmCadastroPadrao)
    spb_endereco: TSpeedButton;
    Label1: TLabel;
    cbxTipoClientes: TSWHComboBox;
    dtpDataInclusao: TDateTimePicker;
    Label4: TLabel;
    pnl_pessoa: TPanel;
    rbFisica: TRadioButton;
    rbJuridica: TRadioButton;
    Label5: TLabel;
    lbl_razao: TLabel;
    edtNomeFantasia: TSWHDBEdit;
    Label8: TLabel;
    edtContato: TSWHDBEdit;
    Label10: TLabel;
    edtTelefone: TSWHDBEdit;
    edtEmail: TSWHDBEdit;
    Label9: TLabel;
    edtCpfCnpj: TSWHMaskEdit;
    lbl_cpf_cnpj: TLabel;
    edtIeRg: TSWHMaskEdit;
    lbl_ie_rg: TLabel;
    edtNome: TSWHDBEdit;
    Label2: TLabel;
    tabEndereço: TTabSheet;
    lblCep: TLabel;
    lblEndereco: TLabel;
    edtEndereco: TSWHDBEdit;
    SWHDBEdit8: TSWHDBEdit;
    lblComplemento: TLabel;
    lblNumero: TLabel;
    SWHDBEdit7: TSWHDBEdit;
    lblEstado: TLabel;
    edtEstado: TSWHDBEdit;
    edtFone3: TSWHDBEdit;
    lblTelefone3: TLabel;
    edtCidade: TSWHDBEdit;
    lblCidade: TLabel;
    lblBairro: TLabel;
    edtBairro: TSWHDBEdit;
    lblTelefone: TLabel;
    edtFone: TSWHDBEdit;
    pnl_cep: TPanel;
    spb_pesquisa: TSpeedButton;
    edtCep: TSWHMaskEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    cdsEndereco: TClientDataSet;
    Image2: TImage;
    procedure spb_enderecoClick(Sender: TObject);
    procedure rbFisicaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spb_pesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ValidaPessoa;
    procedure GravaCampo;
    procedure PesquisaCep;
    procedure AlimentaCampoCep;
    procedure AlimentaCampo;
    procedure ValidaCampo;
    procedure EstadoQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

uses
  UConsultaCliente, UFuncoes, UDm;

{$R *.dfm}


procedure TfrmCadastroCliente.AlimentaCampo;
begin
  cbxTipoClientes.Text := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('tipopessoa').AsString;
  edtcep.text     := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('cep').AsString;
  edtCpfCnpj.text := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('cpfcnpj').AsString;
  edtIeRg.Text    := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('ierg').AsString;
  if (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('datainclusao').AsDateTime > 01/01/2000 then
  begin
    dtpDataInclusao.Date := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('datainclusao').AsDateTime;
  end
  else
  begin
    dtpDataInclusao.Date := Date;
  end;

  if (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('pessoapfpj').AsString = 'PF' then
  begin
    rbFisica.Checked := True;
    rbFisicaClick(Self);
  end
  else
  begin
    rbJuridica.Checked := True;
    rbFisicaClick(Self);
  end;
end;

procedure TfrmCadastroCliente.AlimentaCampoCep;
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('endereco').AsString
    := cdsEndereco.FieldByName('logradouro').AsString;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('complemento').AsString
    := cdsEndereco.FieldByName('complemento').AsString;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('bairro').AsString
    := cdsEndereco.FieldByName('bairro').AsString;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('cidade').AsString
    := cdsEndereco.FieldByName('localidade').AsString;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('uf').AsString
    := cdsEndereco.FieldByName('uf').AsString;
end;

procedure TfrmCadastroCliente.EstadoQuery;
begin
  if dm.qryPessoa.State in [dsInsert] then
  begin
    (dsCadastroPadrao.DataSet as TDataSet).Insert;
  end;

  if dm.qryPessoa.State in [dsEdit] then
  begin
    (dsCadastroPadrao.DataSet as TDataSet).Edit;
  end;
end;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  Self.EstadoQuery;
  Self.AlimentaCampo;
end;

procedure TfrmCadastroCliente.GravaCampo;
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('tipopessoa').AsString
    := cbxTipoClientes.Text;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('datainclusao').AsDateTime
    := dtpDataInclusao.Date;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('cpfcnpj').AsString
    := edtCpfCnpj.Text;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('cep').AsString
    := edtCep.Text;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('ierg').AsString
    := edtIeRg.Text;
  if rbFisica.Checked = True then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('pessoapfpj').AsString := 'PF';
  end
  else
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('pessoapfpj').AsString := 'PJ';
  end;
end;

procedure TfrmCadastroCliente.PesquisaCep;
begin
  RESTRequest1.Params.ParameterByName('cep').Value := edtCep.Text;
  try
    RESTRequest1.Execute;
  except
    UFuncoes.MsgNaoConfirmar('Erro ao consultar cep!',
    'Favor verificar cep informado');
    abort;
  end;
end;

procedure TfrmCadastroCliente.rbFisicaClick(Sender: TObject);
begin
  inherited;
  Self.ValidaPessoa;
end;

procedure TfrmCadastroCliente.spb_enderecoClick(Sender: TObject);
begin
  inherited;
  pgcPessoa.ActivePageIndex := 1;
end;

procedure TfrmCadastroCliente.spb_pesquisaClick(Sender: TObject);
begin
  inherited;
  Self.PesquisaCep;
  Self.AlimentaCampoCep;
end;

procedure TfrmCadastroCliente.SpeedButton1Click(Sender: TObject);
begin
  Self.ValidaCampo;
  Self.GravaCampo;
  inherited;
end;

procedure TfrmCadastroCliente.ValidaCampo;
begin
  if cbxTipoClientes.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Tipo pessoa não pode ser nulo!',
    'Favor escolher tipo do cadastro');
    cbxTipoClientes.SetFocus;
    Abort;
  end;

  if edtNome.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Nome não pode ser nulo!',
    'Favor informar um nome');
    edtNome.SetFocus;
    Abort;
  end;

  if edtCpfCnpj.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Cnpj ou cpf não pode ser nulo!',
    'Favor informar cnpj ou cpf');
    edtCpfCnpj.SetFocus;
    Abort;
  end;

  if edtIeRg.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Rg ou ie não pode ser nulo!',
    'Favor informar rg ou ie');
    edtIeRg.SetFocus;
    Abort;
  end;

  if edtIeRg.Text = EmptyStr then
  begin
    UFuncoes.MsgNaoConfirmar('Rg ou ie não pode ser nulo!',
    'Favor informar rg ou ie');
    edtIeRg.SetFocus;
    Abort;
  end;
end;

procedure TfrmCadastroCliente.ValidaPessoa;
begin
  if rbFisica.Checked then
  begin
    lbl_cpf_cnpj.Caption   := 'CPF *';
    lbl_ie_rg.Caption      := 'RG *';

    edtCpfCnpj.TipoMascara := tmCPF;

    lbl_razao.Visible       := False;
    edtNomeFantasia.Visible := False;
  end;

  if rbJuridica.Checked then
  begin
    lbl_cpf_cnpj.Caption   := 'CNPJ *';
    lbl_ie_rg.Caption      := 'Inscrição Estadual *';

    edtCpfCnpj.TipoMascara := tmCNPJ;

    lbl_razao.Visible       := True;
    edtNomeFantasia.Visible := True;
  end;
end;

end.
