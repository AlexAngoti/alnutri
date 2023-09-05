unit UCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Ucadastropadrao, Data.DB, Datasnap.DBClient, Datasnap.Provider, Vcl.ComCtrls;

type
  TfrmCadastroUsuario = class(TfrmCadastroPadrao)
    procedure btnSalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

uses
  Udm, UPesquisaColab;

{$R *.dfm}

procedure TfrmCadastroUsuario.btnSalvarClick(Sender: TObject);
begin
  inherited;
  cdsCadastroPadrao.Post;
  cdsCadastroPadrao.ApplyUpdates(-1);

  ShowMessage('Usuario criado com sucesso!!');
  Self.Close;
end;

procedure TfrmCadastroUsuario.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrmPesquisaColab := TFrmPesquisaColab.Create(Self);
  try
    FrmPesquisaColab.ShowModal;
  finally
    FrmPesquisaColab.Free;
  end;
end;

end.
