unit uAvaliacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, SWHEdit, Vcl.DBCtrls,
  SWHDBLookupComboBox, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmAvaliacao = class(TForm)
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    imgLogo: TImage;
    pnlCentral: TPanel;
    SWHDBLookupComboBox1: TSWHDBLookupComboBox;
    SWHEdit1: TSWHEdit;
    DateTimePicker1: TDateTimePicker;
    SWHEdit2: TSWHEdit;
    SWHEdit3: TSWHEdit;
    dbMmoObservacao: TDBMemo;
    pnlNovoAgend: TPanel;
    btnNovoAgend: TSpeedButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAvaliacao: TfrmAvaliacao;

implementation

{$R *.dfm}

end.
