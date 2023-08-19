unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls, MidasLib, StrUtils, Ucadastropadrao;

type
  TfrmCadastroCliente = class(TfrmCadastroPadrao)
    lblName: TLabel;
    lblCpf: TLabel;
    lblCep: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblNumero: TLabel;
    lblTelefone: TLabel;
    lblDataNasc: TLabel;
    lblEmail: TLabel;
    pnlSubTop1: TPanel;
    pnlSegunraça: TPanel;
    pnlMensalidade: TPanel;
    SpeedButton1: TSpeedButton;
    dbEdtName: TDBEdit;
    dbEdtCpf: TDBEdit;
    dbEdtCep: TDBEdit;
    dbEdtEndereco: TDBEdit;
    dbEdtBairro: TDBEdit;
    dbEdtNumero: TDBEdit;
    dbEdtTelefone: TDBEdit;
    dbEdtEmail: TDBEdit;
    dbEdtData: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure ValidaTela;
    procedure InsertReg;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

uses
  UDm, UConsultaCliente;

{$R *.dfm}

procedure TfrmCadastroCliente.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Self.ValidaTela;
  Self.InsertReg;
  Self.Close;
end;

procedure TfrmCadastroCliente.InsertReg;
begin
  dm.cdsConsultaCli.Post;
  dm.cdsConsultaCli.ApplyUpdates(-1);
end;

procedure TfrmCadastroCliente.ValidaTela;
begin
  if dbEdtName.Text = EmptyStr then
  begin
    ShowMessage('Nome não pode ser vazio!!');
  end;

  if dm.cdsConsultaCli.FieldByName('cpf').AsString = EmptyStr then
  begin
    ShowMessage('Cpf não pode ser vazio!!');
  end;

  if dm.cdsConsultaCli.FieldByName('cep').AsString = EmptyStr then
  begin
    ShowMessage('Cep não pode ser vazio!!');
  end;

  if dm.cdsConsultaCli.FieldByName('telefone').AsString = EmptyStr then
  begin
    ShowMessage('Telefone não pode ser vazio!!');
  end;

  if dbEdtEndereco.Text = EmptyStr then
  begin
    ShowMessage('Endereço não pode ser vazio!!');
  end;

  if dbEdtBairro.Text = EmptyStr then
  begin
    ShowMessage('Bairro não pode ser vazio!!');
  end;
end;

end.
