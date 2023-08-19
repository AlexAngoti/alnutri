unit UConsultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider, Datasnap.DBClient,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, StrUtils, UConsulaPadrao;

type
  TFrmConsultaCliente = class(TFrmConsultaPadrao)
    procedure btnInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure OpenDataSet;
    procedure OpenScreen;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaCliente: TFrmConsultaCliente;

implementation

uses
  UDm, UCadastroCliente;

{$R *.dfm}

procedure TFrmConsultaCliente.btnEditarClick(Sender: TObject);
begin
  inherited;
  dm.cdsConsultaCli.Edit;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TFrmConsultaCliente.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Tem certeza que deseja excluir?', 'Excluir',
    MB_YESNO + MB_ICONWARNING) = idYes then
  begin
    dm.cdsConsultaCli.Delete;
    dm.cdsConsultaCli.ApplyUpdates(-1);
    Self.OpenDataSet;
  end;
end;

procedure TFrmConsultaCliente.btnInserirClick(Sender: TObject);
begin
  inherited;
  dm.cdsConsultaCli.Insert;
  Self.OpenScreen;
  Self.OpenDataSet;
end;

procedure TFrmConsultaCliente.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  dm.dsConsultaCli.DataSet.Filtered := False;
  if edtPesquisa.Text <> EmptyStr then
  begin
    dm.dsConsultaCli.DataSet.Filter := 'UPPER(name) LIKE ' +
      QuotedStr('%' + UpperCase(edtPesquisa.Text) + '%');
    dm.dsConsultaCli.DataSet.Filtered := True;
  end;
end;

procedure TFrmConsultaCliente.FormCreate(Sender: TObject);
begin
  inherited;
  Self.OpenDataSet;
end;

procedure TFrmConsultaCliente.OpenDataSet;
begin
  dm.cdsConsultaCli.Close;
  dm.cdsConsultaCli.Open;
end;

procedure TFrmConsultaCliente.OpenScreen;
begin
  frmCadastroCliente := TfrmCadastroCliente.Create(Self);
  try
    frmCadastroCliente.ShowModal;
  finally
    frmCadastroCliente.Free;
  end;
end;

end.
