unit uCadastroCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Ucadastropadrao, Data.DB, Datasnap.DBClient, Datasnap.Provider;

type
  TfrmCadastroCargos = class(TfrmCadastroPadrao)
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCargos: TfrmCadastroCargos;

implementation

uses
  Udm;

{$R *.dfm}

procedure TfrmCadastroCargos.btnSalvarClick(Sender: TObject);
begin
  inherited;
//  dm.cdsConsultaCargos.Post;
//  dm.cdsConsultaCargos.ApplyUpdates(-1);

  Close;
end;

end.
