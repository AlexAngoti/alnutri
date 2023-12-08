unit uBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmBackup = class(TForm)
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    Image1: TImage;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation

{$R *.dfm}

end.
