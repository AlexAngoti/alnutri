unit UConsulaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg;

type
  TFrmConsultaPadrao = class(TForm)
    pnlPrincipal: TPanel;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    pnlLinha: TPanel;
    dbgdConsulta: TDBGrid;
    pnlPesquisa: TPanel;
    lblPesquisar: TLabel;
    btnPesquisa: TSpeedButton;
    btnInserir: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    edtPesquisa: TEdit;
    imgLogo: TImage;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaPadrao: TFrmConsultaPadrao;

implementation

{$R *.dfm}

procedure TFrmConsultaPadrao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
