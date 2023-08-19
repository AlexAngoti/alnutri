unit Ucadastropadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  TfrmCadastroPadrao = class(TForm)
    pnlPrincipal: TPanel;
    pnlSubTop: TPanel;
    imgLogo: TImage;
    btnFechar: TSpeedButton;
    pnlLinha: TPanel;
    pnlSubTops: TPanel;
    pnlSalvar: TPanel;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    lblEmpresa: TLabel;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.dfm}

procedure TfrmCadastroPadrao.btnFecharClick(Sender: TObject);
begin
  close;
end;

end.
