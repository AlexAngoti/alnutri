unit UCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Ucadastropadrao, Data.DB, Datasnap.DBClient, Datasnap.Provider, Vcl.ComCtrls,
  SWHMaskEdit, SWHDBEdit, SWHComboBox;

type
  TfrmCadastroUsuario = class(TfrmCadastroPadrao)
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

uses
  Udm;

{$R *.dfm}

procedure TfrmCadastroUsuario.btnSalvarClick(Sender: TObject);
begin
  inherited;

  ShowMessage('Usuario criado com sucesso!!');
  Self.Close;
end;

end.
