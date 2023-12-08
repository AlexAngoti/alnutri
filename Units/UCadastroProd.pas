unit UCadastroProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, Ucadastropadrao, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Imaging.pngimage, SWHDBEdit, SWHComboBox;

type
  TfrmCadastroProd = class(TfrmCadastroPadrao)
    edtNome: TSWHDBEdit;
    cbxPorcao: TSWHComboBox;
    cbxGrupo: TSWHComboBox;
    edtCalorias: TSWHDBEdit;
    edtProteina: TSWHDBEdit;
    edtCarboidratos: TSWHDBEdit;
    edtGorduras: TSWHDBEdit;
    edtFibras: TSWHDBEdit;
    edtAcucares: TSWHDBEdit;
    lblPorcao: TLabel;
    lblCalorias: TLabel;
    lblCarboidratos: TLabel;
    lblFibras: TLabel;
    lblAcucares: TLabel;
    lblGorduras: TLabel;
    lblProteina: TLabel;
    lblGrupo: TLabel;
    lblNome: TLabel;
    lblCalcio: TLabel;
    lblVitaminaC: TLabel;
    lblFerro: TLabel;
    edtFerro: TSWHDBEdit;
    edtCalcio: TSWHDBEdit;
    edtVitamina: TSWHDBEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure AlimentaCampo;
    procedure GravaCampo;
    procedure CalculaDivFinal;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProd: TfrmCadastroProd;

implementation

uses
  UDm, UConsultaProd;

{$R *.dfm}

procedure TfrmCadastroProd.AlimentaCampo;
begin
  cbxPorcao.Text := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('porcaotipica').AsString;
  cbxGrupo.Text  := (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('grupoalimentar').AsString;
end;

procedure TfrmCadastroProd.CalculaDivFinal;
begin
  if edtCalorias.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('divkcal').AsCurrency
      := StrToCurr(edtCalorias.Text) / 100;
  end;

  if edtProteina.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('divproteina').AsCurrency
      := StrToCurr(edtProteina.Text) / 100;
  end;

  if edtCalcio.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('divcalcio').AsCurrency
      := StrToCurr(edtCalcio.Text) / 100;
  end;

  if edtFerro.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('divferro').AsCurrency
      := StrToCurr(edtCalorias.Text) / 100;
  end;

  if edtCarboidratos.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('divcarboidratos').AsCurrency
      := StrToCurr(edtCarboidratos.Text) / 100;
  end;

  if edtGorduras.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('divgordurastotais').AsCurrency
      := StrToCurr(edtGorduras.Text) / 100;
  end;

  if edtFibras.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('divfibras').AsCurrency
      := StrToCurr(edtFibras.Text) / 100;
  end;

  if edtVitamina.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('divvitaminac').AsCurrency
      := StrToCurr(edtVitamina.Text) / 100;
  end;

  if edtAcucares.Text <> EmptyStr then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('acucares').AsCurrency
      := StrToCurr(edtAcucares.Text) / 100;
  end;
end;

procedure TfrmCadastroProd.FormShow(Sender: TObject);
begin
  inherited;
  Self.AlimentaCampo;
end;

procedure TfrmCadastroProd.GravaCampo;
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('porcaotipica').AsString
    := cbxPorcao.Text;
  (dsCadastroPadrao.DataSet as TClientDataSet).FieldByName('grupoalimentar').AsString
    := cbxGrupo.Text;
end;

procedure TfrmCadastroProd.SpeedButton1Click(Sender: TObject);
begin
  Self.CalculaDivFinal;
  Self.GravaCampo;
  inherited;
end;

end.
