unit U_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFrmMenu = class(TForm)
    pnlSuperior: TPanel;
    pnlSuperiorEsquerda: TPanel;
    pnlCentral: TPanel;
    pnlSubCentral: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

end.
