unit UCadastroColab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls, Ucadastropadrao;

type
  TfrmCadastroColab = class(TfrmCadastroPadrao)
    lblName: TLabel;
    edtName: TDBEdit;
    lblCpf: TLabel;
    edtCpf: TDBEdit;
    lblEmail: TLabel;
    dbEdtEmail: TDBEdit;
    dtpDataNasc: TDateTimePicker;
    lblDataNasc: TLabel;
    lblTelefone: TLabel;
    dbEdtSalario: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dtpDataContratacao: TDateTimePicker;
    dbCbxCargo: TDBLookupComboBox;
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
  dm.cdsConsultaColab.FieldByName('datanascimento').AsDateTime :=
    dtpDataNasc.Date;
  dm.cdsConsultaColab.FieldByName('datacontratacao').AsDateTime :=
    dtpDataContratacao.Date;
  dm.cdsConsultaColab.Post;
  dm.cdsConsultaColab.ApplyUpdates(-1);
end;

procedure TfrmCadastroColab.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDataNasc.Date := dm.cdsConsultaColab.FieldByName('datanascimento')
    .AsDateTime;
  dtpDataContratacao.Date := dm.cdsConsultaColab.FieldByName('datacontratacao')
    .AsDateTime;
end;

end.
