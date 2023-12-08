unit UConsultaProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  UConsulaPadrao, Datasnap.Provider, Datasnap.DBClient, Vcl.Imaging.pngimage;

type
  TFrmConsultaProd = class(TFrmConsultaPadrao)
    cdsConsultaPadraoporcaotipica: TWideStringField;
    cdsConsultaPadraogrupoalimentar: TWideStringField;
    cdsConsultaPadraonome: TWideStringField;
    cdsConsultaPadraokcal: TBCDField;
    cdsConsultaPadraoproteina: TBCDField;
    cdsConsultaPadraocalcio: TBCDField;
    cdsConsultaPadraoferro: TBCDField;
    cdsConsultaPadraocarboidratos: TBCDField;
    cdsConsultaPadraogordurastotais: TBCDField;
    cdsConsultaPadraofibras: TBCDField;
    cdsConsultaPadraovitaminac: TBCDField;
    cdsConsultaPadraoid: TLargeintField;
    cdsConsultaPadraoacucares: TBCDField;
    cdsConsultaPadraodivkcal: TBCDField;
    cdsConsultaPadraodivproteina: TBCDField;
    cdsConsultaPadraodivcalcio: TBCDField;
    cdsConsultaPadraodivferro: TBCDField;
    cdsConsultaPadraodivcarboidratos: TBCDField;
    cdsConsultaPadraodivgordurastotais: TBCDField;
    cdsConsultaPadraodivfibras: TBCDField;
    cdsConsultaPadraodivvitaminac: TBCDField;
    cdsConsultaPadraodivacucares: TBCDField;
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure OpenScreen; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProd: TFrmConsultaProd;

implementation

uses
  UDm, UCadastroProd;

{$R *.dfm}

procedure TFrmConsultaProd.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  Self.FiltrarPorCampo('nome');
end;

procedure TFrmConsultaProd.OpenScreen;
begin
  frmCadastroProd := TfrmCadastroProd.Create(Self);
  try
    frmCadastroProd.ShowModal;
    while not frmCadastroProd.ModalResult <> mrNone do
    begin
      Application.ProcessMessages;
    end;
  finally
    frmCadastroProd.Free;
  end;
end;

end.
