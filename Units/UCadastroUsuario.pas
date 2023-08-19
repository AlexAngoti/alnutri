unit UCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Ucadastropadrao;

type
  TfrmCadastroUsuario = class(TfrmCadastroPadrao)
    dbEdtUsuario: TDBEdit;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    dbEdtSenha: TDBEdit;
    lblTelefone: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    pnlPesquisa: TPanel;
    SpeedButton1: TSpeedButton;
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
  dm.cdsConsultaUsuario.FieldByName('nomecolaborador').AsString :=
    dm.cdsConsultaColab.FieldByName('name').AsString;
  dm.cdsConsultaUsuario.Post;
  dm.cdsConsultaUsuario.ApplyUpdates(-1);

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

  dm.cdsConsultaUsuario.FieldByName('idcolaborador').AsInteger :=
    dm.cdsConsultaColab.FieldByName('id').AsInteger;
end;

end.
