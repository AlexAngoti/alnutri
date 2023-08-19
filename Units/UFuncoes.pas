unit UFuncoes;

interface

uses
  Vcl.ExtCtrls, Winapi.ActiveX, Winapi.Windows, System.SysUtils, Vcl.Forms;

procedure RoundedPanel(Painel: TPanel; ITamanho: Integer);
function MsgConfirmar(ATitulo: String; AMenssagem: String): Boolean;

implementation

uses
  UMsgConfirmar, UDm;

procedure RoundedPanel(Painel: TPanel; ITamanho: Integer);
var
  Rgn: HRGN;
  Dc: HDC;
begin
  Rgn := CreateRoundRectRgn(0, 0, Painel.Width, Painel.Height, ITamanho,
    ITamanho);
  Dc := GetDC(Painel.Handle);
  SetWindowRgn(Painel.Handle, Rgn, True);
  ReleaseDC(Painel.Handle, Dc);
  DeleteObject(Rgn);
end;

function MsgConfirmar(ATitulo: String; AMenssagem: String): Boolean;
var
  frmMsgConfirmar: TfrmMsgConfirmar;
begin
  frmMsgConfirmar := TfrmMsgConfirmar.Create(nil);
  try
    frmMsgConfirmar.lblTitulo.Caption    := ATitulo;
    frmMsgConfirmar.lblMenssagem.Caption := AMenssagem;
    frmMsgConfirmar.ShowModal;
    Result := frmMsgConfirmar.BResposta;
  finally
    FreeAndNil(frmMsgConfirmar);
  end;
end;

end.
