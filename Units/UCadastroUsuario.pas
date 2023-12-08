unit UCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Ucadastropadrao, Data.DB, Datasnap.DBClient, Datasnap.Provider, Vcl.ComCtrls,
  SWHMaskEdit, SWHDBEdit, SWHComboBox, Vcl.Imaging.pngimage, SWHDBLookupComboBox;

type
  TfrmCadastroUsuario = class(TfrmCadastroPadrao)
    SWHDBEdit1: TSWHDBEdit;
    SWHDBEdit2: TSWHDBEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

uses
  Udm, UConsultaUsuario;

{$R *.dfm}

end.
