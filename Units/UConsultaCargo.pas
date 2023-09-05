unit UConsultaCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  UConsulaPadrao, Datasnap.Provider, Datasnap.DBClient;

type
  TFrmConsultaCargos = class(TFrmConsultaPadrao)
    procedure FormCreate(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure OpenScreen;
    procedure OpenDataSet;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaCargos: TFrmConsultaCargos;

implementation

uses
  Udm, uCadastroCargo;

{$R *.dfm}

procedure TFrmConsultaCargos.btnEditarClick(Sender: TObject);
begin
  inherited;
//  dm.cdsConsultaCargos.Edit;
//  self.OpenScreen;
//  self.OpenDataSet;
end;

procedure TFrmConsultaCargos.btnExcluirClick(Sender: TObject);
begin
  inherited;
//  if Application.MessageBox('Tem certeza que deseja excluir?', 'Excluir',
//    MB_YESNO + MB_ICONWARNING) = idYes then
//  begin
//    dm.cdsConsultaCargos.Delete;
//    dm.cdsConsultaCargos.ApplyUpdates(-1);
//    self.OpenDataSet;
//  end;
end;

procedure TFrmConsultaCargos.btnInserirClick(Sender: TObject);
begin
//  inherited;
//  dm.cdsConsultaCargos.Insert;
//  self.OpenScreen;
//  self.OpenDataSet;
end;

procedure TFrmConsultaCargos.btnPesquisaClick(Sender: TObject);
begin
  inherited;
//  dm.dsConsultaCargos.DataSet.Filtered := False;
//  if edtPesquisa.Text <> EmptyStr then
//  begin
//    dm.dsConsultaCargos.DataSet.Filter := 'UPPER(nome) LIKE ' +
//      QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
//    dm.dsConsultaCargos.DataSet.Filtered := True;
//  end;
end;

procedure TFrmConsultaCargos.FormCreate(Sender: TObject);
begin
  inherited;
  self.OpenDataSet;
end;

procedure TFrmConsultaCargos.OpenDataSet;
begin
//  dm.cdsConsultaCargos.Close;
//  dm.cdsConsultaCargos.Open;
end;

procedure TFrmConsultaCargos.OpenScreen;
begin
  frmCadastroCargos := TfrmCadastroCargos.Create(self);
  try
    frmCadastroCargos.ShowModal;
  finally
    frmCadastroCargos.Free;
  end;
end;

end.

