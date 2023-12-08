unit uConsultaCardapio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConsulaPadrao, Data.DB,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaCardapio = class(TFrmConsultaPadrao)
    cdsConsultaPadraonome: TWideStringField;
    cdsConsultaPadraoid: TLargeintField;
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure OpenScreen; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCardapio: TfrmConsultaCardapio;

implementation

uses
  uCadastroCardapio, UDm;

{$R *.dfm}

{ TfrmConsultaCardapio }

procedure TfrmConsultaCardapio.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  Self.FiltrarPorCampo('nome');
end;

procedure TfrmConsultaCardapio.OpenScreen;
begin
  frmCadastroCardapio := TfrmCadastroCardapio.Create(Self);
  try
    frmCadastroCardapio.Show;
    while not frmCadastroCardapio.ModalResult <> mrNone do
    begin
      Application.ProcessMessages;
    end;
  finally
    frmCadastroCardapio.Free;
  end;
end;

end.
