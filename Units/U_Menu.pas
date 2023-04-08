unit U_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmMenu = class(TForm)
    pnlCentral: TPanel;
    pnlSubCentral: TPanel;
    pnlTop: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Image1: TImage;
    Label1: TLabel;
    Panel3: TPanel;
    pnlSubTop: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    pnlEsquedar: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel1: TPanel;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    Panel2: TPanel;
    SpeedButton23: TSpeedButton;
    Panel4: TPanel;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton4MouseEnter(Sender: TObject);
    procedure pnlSubCentralMouseEnter(Sender: TObject);
  private
    procedure prcControlaMenu(botao: TSpeedButton; Ativar: Boolean);
  public
  { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

{ TFrmMenu }

procedure TFrmMenu.pnlSubCentralMouseEnter(Sender: TObject);
begin
  prcControlaMenu(nil, False);
end;

procedure TFrmMenu.prcControlaMenu(botao: TSpeedButton; Ativar: Boolean);
var
  i: Integer;
begin
  //percorrendo todos os componentes do form
  if Ativar then
  begin
    //verfica se é um panel
    for I := 0 to FrmMenu.ComponentCount - 1 do
    begin
    if (FrmMenu.Components[i] is Tpanel) and ((FrmMenu.Components[i] as Tpanel).Tag <> 0) then
    begin
      if (FrmMenu.Components[i] as Tpanel).Tag = botao.Tag then
      begin
        (FrmMenu.Components[i] as TPanel).Visible := True;
        (FrmMenu.Components[i] as TPanel).Left    := botao.Left;
      end
      else
      begin
        (FrmMenu.Components[i] as TPanel).Visible := False;
      end;
    end;
    end;
  end
  else
  begin
    for I := 0 to FrmMenu.ComponentCount - 1  do
      begin
        if (FrmMenu.Components[i] is Tpanel) and ((FrmMenu.Components[i] as Tpanel).Tag <> 0) then
        begin
          (FrmMenu.Components[i] as Tpanel).Visible := False;
        end;
      end;
  end;
end;

procedure TFrmMenu.SpeedButton4MouseEnter(Sender: TObject);
begin
  prcControlaMenu(TComponent(Sender) as TSpeedButton, true);
end;

end.
