unit uMsgNaoConfirmar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmMsgSemConfir = class(TForm)
    pnlBackGround: TPanel;
    imgFormulario: TImage;
    lblTitulo: TLabel;
    lblMenssagem: TLabel;
    pnlTop: TPanel;
    lblNomeEmpresa: TLabel;
    pnlLine: TPanel;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    BResposta: Boolean;
    { Public declarations }
  end;

var
  frmMsgSemConfir: TfrmMsgSemConfir;

implementation

{$R *.dfm}

procedure TfrmMsgSemConfir.btnSalvarClick(Sender: TObject);
begin
  Self.BResposta := True;
  Self.Close;
end;

procedure TfrmMsgSemConfir.FormCreate(Sender: TObject);
begin
  Self.BResposta := False;
end;

end.
