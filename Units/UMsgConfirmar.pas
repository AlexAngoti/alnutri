unit UMsgConfirmar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TfrmMsgConfirmar = class(TForm)
    pnlBackGround: TPanel;
    pnlTop: TPanel;
    pnlLine: TPanel;
    imgFormulario: TImage;
    lblNomeEmpresa: TLabel;
    lblTitulo: TLabel;
    lblMenssagem: TLabel;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    BResposta: Boolean;
    { Public declarations }
  end;

var
  frmMsgConfirmar: TfrmMsgConfirmar;

implementation

{$R *.dfm}

procedure TfrmMsgConfirmar.btnSalvarClick(Sender: TObject);
begin
  Self.BResposta := True;
  Self.Close;
end;

procedure TfrmMsgConfirmar.FormCreate(Sender: TObject);
begin
  Self.BResposta := False;
end;

procedure TfrmMsgConfirmar.btnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

end.
