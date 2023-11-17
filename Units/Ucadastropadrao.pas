unit Ucadastropadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.ComCtrls, Vcl.Mask, SWHMaskEdit,
  Vcl.DBCtrls, SWHDBEdit, SWHComboBox;

type
  TfrmCadastroPadrao = class(TForm)
    pnlTop: TPanel;
    btnDadosGerais: TSpeedButton;
    pnl_botoes: TPanel;
    pnl_confirmar: TPanel;
    SpeedButton1: TSpeedButton;
    pnl_cancelar: TPanel;
    SpeedButton2: TSpeedButton;
    pnlBarraBotao: TPanel;
    dsCadastroPadrao: TDataSource;
    pnlSubTop: TPanel;
    btnFechar: TSpeedButton;
    lblEmpresa: TLabel;
    pnlCentral: TPanel;
    pnlBotton: TPanel;
    pgcPessoa: TPageControl;
    pnlLogoBotton: TLabel;
    pnlFundo: TPanel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnDadosGeraisClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure SalvaRegistro;
    procedure ArredondaPainel;
    procedure EstadoQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

uses
  UDm, UFuncoes;

{$R *.dfm}

procedure TfrmCadastroPadrao.ArredondaPainel;
begin
  RoundedPanel(pnlSubTop, 12);
  RoundedPanel(pnlBotton, 12);
  RoundedPanel(pnlCentral, 12);
  RoundedPanel(pnlTop, 12);
  RoundedPanel(pnl_cancelar, 12);
  RoundedPanel(pnl_confirmar, 12);
end;

procedure TfrmCadastroPadrao.btnDadosGeraisClick(Sender: TObject);
begin
  pgcPessoa.ActivePageIndex := 0;
end;

procedure TfrmCadastroPadrao.btnFecharClick(Sender: TObject);
begin
  SpeedButton2Click(Self);
end;

procedure TfrmCadastroPadrao.EstadoQuery;
begin
  if dm.qryPessoa.State in [dsInsert] then
  begin
    (dsCadastroPadrao.DataSet as TDataSet).Insert;
  end;

  if dm.qryPessoa.State in [dsEdit] then
  begin
    (dsCadastroPadrao.DataSet as TDataSet).Edit;
  end;
end;

procedure TfrmCadastroPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadastroPadrao.FormResize(Sender: TObject);
begin
  Self.ArredondaPainel;
  pnlFundo.Left := Round(pnlCentral.Width/2 - pnlFundo.Width/2);
end;

procedure TfrmCadastroPadrao.FormShow(Sender: TObject);
begin
  PrcOcultarTabs(pgcPessoa);
  Self.EstadoQuery;
end;

procedure TfrmCadastroPadrao.SalvaRegistro;
begin
  (dsCadastroPadrao.DataSet as TClientDataSet).Post;
  (dsCadastroPadrao.DataSet as TClientDataSet).ApplyUpdates(-1);
end;

procedure TfrmCadastroPadrao.SpeedButton1Click(Sender: TObject);
begin
  Self.SalvaRegistro;
  Self.Close;
end;

procedure TfrmCadastroPadrao.SpeedButton2Click(Sender: TObject);
begin
  if UFuncoes.MsgConfirmar('Deseja cancelar o processo atual ?',
  'Se cancelar o processo atual não será salvo') then
  begin
    (dsCadastroPadrao.DataSet as TClientDataSet).Cancel;
    Self.Close;
  end;
end;

end.
