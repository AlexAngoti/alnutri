unit Ucadastropadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.ComCtrls;

type
  TfrmCadastroPadrao = class(TForm)
    dspCadastroPadrao: TDataSetProvider;
    cdsCadastroPadrao: TClientDataSet;
    dsCadastroPadrao: TDataSource;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    pnlCentral: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.dfm}

end.
