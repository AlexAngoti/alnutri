unit UConsultaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  UConsulaPadrao;

type
  TFrmConsultaUsuario = class(TFrmConsultaPadrao)
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure OpenScreen;
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

procedure TFrmConsultaUsuario.btnEditarClick(Sender: TObject);
begin
  inherited;
  dm.cdsConsultaUsuario.Edit;
  Self.OpenScreen;
end;

procedure TFrmConsultaUsuario.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Tem certeza que deseja excluir?', 'Excluir',
    MB_YESNO + MB_ICONWARNING) = idYes then
  begin
    dm.cdsConsultaUsuario.Delete;
    dm.cdsConsultaUsuario.ApplyUpdates(-1);
  end;
end;

procedure TFrmConsultaUsuario.btnInserirClick(Sender: TObject);
begin
  inherited;
  dm.cdsConsultaUsuario.Insert;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TFrmConsultaUsuario.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  dm.dsConsultaUsuario.DataSet.Filtered := False;
  if edtPesquisa.Text <> EmptyStr then
  begin
    dm.dsConsultaUsuario.DataSet.Filter := 'UPPER(name) LIKE ' +
      QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
    dm.dsConsultaUsuario.DataSet.Filtered := True;
  end;
end;

procedure TFrmConsultaUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  Self.OpenDataSet;
end;

procedure TFrmConsultaUsuario.OpenDataSet;
begin
  dm.cdsConsultaUsuario.Close;
  dm.cdsConsultaUsuario.Open;

  dm.cdsConsultaColab.Close;
  dm.cdsConsultaColab.Open;
end;

procedure TFrmConsultaUsuario.OpenScreen;
begin
  frmCadastroUsuario := TfrmCadastroUsuario.Create(Self);
  try
    frmCadastroUsuario.ShowModal;
  finally
    frmCadastroUsuario.Free;
  end;
end;

end.
