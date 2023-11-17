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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, StrUtils, UConsulaPadrao,
  Vcl.Imaging.pngimage;

type
  TFrmConsultaCliente = class(TFrmConsultaPadrao)
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure OpenScreen; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaCliente: TFrmConsultaCliente;

implementation

uses
  UDm, UCadastroCliente, UMsgConfirmar, UFuncoes;

{$R *.dfm}

procedure TFrmConsultaCliente.btnPesquisaClick(Sender: TObject);
begin
  Self.FiltrarPorCampo('nomerazaosocial');
end;


procedure TFrmConsultaCliente.OpenScreen;
begin
  frmCadastroCliente := TfrmCadastroCliente.Create(Self);
  try
    frmCadastroCliente.Show;
    frmCadastroCliente.BringToFront;
    while not frmCadastroCliente.ModalResult <> mrNone do
    begin
      Application.ProcessMessages;
    end;
  finally
    frmCadastroCliente.Free;
  end;
end;

end.
