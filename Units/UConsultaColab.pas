unit UConsultaColab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  UConsulaPadrao;

type
  TFrmConsultaColab = class(TFrmConsultaPadrao)
    procedure btnInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure OpenScreen;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaColab: TFrmConsultaColab;

implementation

uses
  UDm, UCadastroColab;

{$R *.dfm}
{ TFrmConsultaColab }

procedure TFrmConsultaColab.btnEditarClick(Sender: TObject);
begin
  inherited;
  dm.cdsConsultaColab.Edit;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TFrmConsultaColab.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Tem certeza que deseja excluir?', 'Excluir',
    MB_YESNO + MB_ICONWARNING) = idYes then
  begin
    dm.cdsConsultaColab.Delete;
    dm.cdsConsultaColab.ApplyUpdates(-1);
    Self.OpenDataSet;
  end;
end;

procedure TFrmConsultaColab.btnInserirClick(Sender: TObject);
begin
  inherited;
  dm.cdsConsultaColab.Insert;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TFrmConsultaColab.FormCreate(Sender: TObject);
begin
  inherited;
  Self.OpenDataSet;
end;

procedure TFrmConsultaColab.OpenDataSet;
begin
  dm.cdsConsultaColab.Close;
  dm.cdsConsultaColab.Open;

  dm.cdsConsultaCargos.Close;
  dm.cdsConsultaCargos.Open;
end;

procedure TFrmConsultaColab.OpenScreen;
begin
  frmCadastroColab := TfrmCadastroColab.Create(Self);
  try
    frmCadastroColab.ShowModal;
  finally
    frmCadastroColab.Free;
  end;
end;

end.
