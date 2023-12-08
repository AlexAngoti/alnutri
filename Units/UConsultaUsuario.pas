unit UConsultaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  UConsulaPadrao, Datasnap.Provider, Datasnap.DBClient, Vcl.Imaging.pngimage;

type
  TFrmConsultaUsuario = class(TFrmConsultaPadrao)
    cdsConsultaPadraoid: TLargeintField;
    cdsConsultaPadraologin: TWideStringField;
    cdsConsultaPadraosenha: TWideStringField;
    cdsConsultaPadraoidcolaborador: TIntegerField;
  private
    procedure OpenScreen; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaUsuario: TFrmConsultaUsuario;

implementation

uses
  Udm, UCadastroUsuario;
{$R *.dfm}


procedure TFrmConsultaUsuario.OpenScreen;
begin
  frmCadastroUsuario := TfrmCadastroUsuario.Create(Self);
  try
    frmCadastroUsuario.Show;
    frmCadastroUsuario.BringToFront;
    while not frmCadastroUsuario.ModalResult <> mrNone do
    begin
      Application.ProcessMessages;
    end;
  finally
    frmCadastroUsuario.Free;
  end;
end;

end.
