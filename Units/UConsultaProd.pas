unit UConsultaProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  UConsulaPadrao, Datasnap.Provider, Datasnap.DBClient;

type
  TFrmConsultaProd = class(TFrmConsultaPadrao)
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure OpenScreen;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProd: TFrmConsultaProd;

implementation

uses
  UDm, UCadastroProd;

{$R *.dfm}

procedure TFrmConsultaProd.btnEditarClick(Sender: TObject);
begin
//  inherited;
//  dm.cdsConsultaProd.Edit;
//  Self.OpenScreen;
end;

procedure TFrmConsultaProd.btnExcluirClick(Sender: TObject);
begin
  inherited;
//  if Application.MessageBox('Tem certeza que deseja excluir?', 'Excluir',
//    MB_YESNO + MB_ICONWARNING) = idYes then
//  begin
//    dm.cdsConsultaProd.Delete;
//    dm.cdsConsultaProd.ApplyUpdates(-1);
//  end;
end;

procedure TFrmConsultaProd.btnInserirClick(Sender: TObject);
begin
  inherited;
//  dm.cdsConsultaProd.Insert;
//  Self.OpenScreen;
end;

procedure TFrmConsultaProd.btnPesquisaClick(Sender: TObject);
begin
  inherited;
//  dm.dsConsultaProd.DataSet.Filtered := False;
//  if edtPesquisa.Text <> EmptyStr then
//  begin
//    dm.dsConsultaProd.DataSet.Filter := 'UPPER(nome) LIKE ' +
//      QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
//    dm.dsConsultaProd.DataSet.Filtered := True;
//  end;
end;

procedure TFrmConsultaProd.FormCreate(Sender: TObject);
begin
  inherited;
  Self.OpenDataSet;
end;

procedure TFrmConsultaProd.OpenDataSet;
begin
//  dm.cdsConsultaProd.Close;
//  dm.cdsConsultaProd.Open;
end;

procedure TFrmConsultaProd.OpenScreen;
begin
  frmCadastroProd := TfrmCadastroProd.Create(Self);
  try
    frmCadastroProd.ShowModal;
  finally
    frmCadastroProd.Free;
  end;
end;

end.
