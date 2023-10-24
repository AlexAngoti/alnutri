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
  Data.Bind.ObjectScope;

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
    edtRazaoSocial: TSWHDBEdit;
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
    lblTelefone4: TLabel;
    edtFone4: TSWHDBEdit;
    edtFone3: TSWHDBEdit;
    lblTelefone3: TLabel;
    edtCidade: TSWHDBEdit;
    lblCidade: TLabel;
    lblBairro: TLabel;
    edtBairro: TSWHDBEdit;
    lblTelefone: TLabel;
    edtFone: TSWHDBEdit;
    edtFone2: TSWHDBEdit;
    lblTelefone2: TLabel;
    pnl_cep: TPanel;
    spb_pesquisa: TSpeedButton;
    edtCep: TSWHMaskEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    cdsEndereco: TClientDataSet;
    cdsEnderecocep: TWideStringField;
    cdsEnderecologradouro: TWideStringField;
    cdsEnderecocomplemento: TWideStringField;
    cdsEnderecobairro: TWideStringField;
    cdsEnderecolocalidade: TWideStringField;
    cdsEnderecouf: TWideStringField;
    cdsEnderecoibge: TIntegerField;
    cdsEnderecogia: TWideStringField;
    cdsEnderecoddd: TIntegerField;
    cdsEnderecosiafi: TIntegerField;
    procedure spb_enderecoClick(Sender: TObject);
    procedure rbFisicaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spb_pesquisaClick(Sender: TObject);
  private
    procedure ValidaPessoa;
    procedure GravaCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

uses
  UConsultaCliente;

{$R *.dfm}


procedure TfrmCadastroCliente.GravaCampo;
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('tipopessoa').AsString     := cbxTipoClientes.Text;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('datainclusao').AsDateTime := dtpDataInclusao.Date;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('cpfcnpj').AsString        := edtCpfCnpj.Text;
  if rbFisica.Checked = True then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('pessoapfpj').AsString := 'PF';
  end
  else
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('pessoapfpj').AsString := 'PJ';
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
  RESTRequest1.Params.ParameterByName('cep').Value := edtCep.Text;
  RESTRequest1.Execute;
end;

procedure TfrmCadastroCliente.SpeedButton1Click(Sender: TObject);
begin
  Self.GravaCampo;
  inherited;
end;

procedure TfrmCadastroCliente.ValidaPessoa;
begin
  if rbFisica.Checked then
  begin
    lbl_cpf_cnpj.Caption   := 'CPF *';
    lbl_ie_rg.Caption      := 'RG *';
    edtCpfCnpj.TipoMascara := tmCPF;

    lbl_razao.Visible      := False;
    edtRazaoSocial.Visible := False;

  end;

  if rbJuridica.Checked then
  begin
    lbl_cpf_cnpj.Caption   := 'CNPJ *';
    lbl_ie_rg.Caption      := 'Inscrição Estadual *';

    edtCpfCnpj.TipoMascara := tmCNPJ;

    lbl_razao.Visible      := True;
    edtRazaoSocial.Visible := True;
  end;
end;

end.
