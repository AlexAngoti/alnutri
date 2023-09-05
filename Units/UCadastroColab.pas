unit UCadastroColab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls, Ucadastropadrao, Data.DB, Datasnap.DBClient, Datasnap.Provider;

type
  TfrmCadastroColab = class(TfrmCadastroPadrao)
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroColab: TfrmCadastroColab;

implementation

uses
  UDm;

{$R *.dfm}

procedure TfrmCadastroColab.btnSalvarClick(Sender: TObject);
begin
  inherited;
//  dm.cdsConsultaColab.FieldByName('datanascimento').AsDateTime :=
//    dtpDataNasc.Date;
//  dm.cdsConsultaColab.FieldByName('datacontratacao').AsDateTime :=
//    dtpDataContratacao.Date;
//  dm.cdsConsultaColab.Post;
//  dm.cdsConsultaColab.ApplyUpdates(-1);
end;

procedure TfrmCadastroColab.FormCreate(Sender: TObject);
begin
  inherited;
//  dtpDataNasc.Date := dm.cdsConsultaColab.FieldByName('datanascimento')
//    .AsDateTime;
//  dtpDataContratacao.Date := dm.cdsConsultaColab.FieldByName('datacontratacao')
//    .AsDateTime;
end;

end.
