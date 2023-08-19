unit UCadastroProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, Ucadastropadrao;

type
  TfrmCadastroProd = class(TfrmCadastroPadrao)
    lblNameProd: TLabel;
    lblQtdCalorias: TLabel;
    lblQtdGorduras: TLabel;
    lblCarboidratos: TLabel;
    lblQtdProteinas: TLabel;
    lblQtdFibras: TLabel;
    dbRgrpTipo: TDBRadioGroup;
    edtName: TDBEdit;
    dbEdtQtdCalorias: TDBEdit;
    dbEdtQtdCarbo: TDBEdit;
    dbEdtQtdProteinas: TDBEdit;
    dbEdtQtdGorduras: TDBEdit;
    dbEdtQtdFribas: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure ValidaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProd: TfrmCadastroProd;

implementation

uses
  UDm;

{$R *.dfm}

procedure TfrmCadastroProd.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Self.ValidaTela;
  dm.cdsConsultaProd.Post;
  dm.cdsConsultaProd.ApplyUpdates(-1);

  Self.Close;
end;

procedure TfrmCadastroProd.ValidaTela;
begin
  if edtName.Text = EmptyStr then
  begin
    ShowMessage('Produto não pode ser vazio!!');
  end;
end;

end.
