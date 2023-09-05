unit UCadastroProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, Ucadastropadrao, Data.DB, Datasnap.DBClient, Datasnap.Provider;

type
  TfrmCadastroProd = class(TfrmCadastroPadrao)
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProd: TfrmCadastroProd;

implementation

uses
  UDm;

{$R *.dfm}

procedure TfrmCadastroProd.btnSalvarClick(Sender: TObject);
begin
  inherited;
//  Self.ValidaTela;
//  dm.cdsConsultaProd.Post;
//  dm.cdsConsultaProd.ApplyUpdates(-1);

  Self.Close;
end;
end.
