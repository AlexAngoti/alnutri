unit UPesquisaColab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  UConsulaPadrao;

type
  TFrmPesquisaColab = class(TFrmConsultaPadrao)
    procedure dbgdConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaColab: TFrmPesquisaColab;

implementation

uses
  UDm;

{$R *.dfm}

procedure TFrmPesquisaColab.dbgdConsultaDblClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
