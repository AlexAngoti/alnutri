inherited FrmConsultaCliente: TFrmConsultaCliente
  Caption = 'FrmConsultaCliente'
  ClientHeight = 664
  ClientWidth = 1103
  ExplicitWidth = 1103
  ExplicitHeight = 664
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 1093
    Height = 488
    ExplicitWidth = 1093
    ExplicitHeight = 488
    inherited dbgdConsulta: TDBGrid
      Width = 1093
      Height = 416
      BorderStyle = bsSingle
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'Id'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = 'Nome'
          Width = 512
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Title.Caption = 'CPF'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Title.Caption = 'CEP'
          Width = 239
          Visible = True
        end>
    end
    inherited pnlPesquisa: TPanel
      Width = 1093
      ExplicitWidth = 1093
      inherited lblPesquisar: TLabel
        Left = 40
        ExplicitLeft = 40
      end
      inherited btnPesquisa: TSpeedButton
        Left = 471
        Width = 40
        OnClick = btnPesquisaClick
        ExplicitLeft = 471
        ExplicitWidth = 40
      end
      inherited btnInserir: TSpeedButton
        Left = 523
        Width = 40
        ExplicitLeft = 523
        ExplicitWidth = 40
      end
      inherited btnExcluir: TSpeedButton
        Left = 628
        Width = 40
        ExplicitLeft = 628
        ExplicitWidth = 40
      end
      inherited btnEditar: TSpeedButton
        Left = 574
        Width = 40
        ExplicitLeft = 574
        ExplicitWidth = 40
      end
      inherited edtPesquisa: TEdit
        Left = 40
        Width = 425
        ExplicitLeft = 40
        ExplicitWidth = 425
      end
    end
  end
  inherited pnlSubTop: TPanel
    Width = 1093
    ExplicitWidth = 1093
    inherited btnFechar: TSpeedButton
      Left = 1037
      ExplicitLeft = 1047
    end
  end
  inherited Panel1: TPanel
    Top = 586
    Width = 1093
    ExplicitTop = 586
    ExplicitWidth = 1093
  end
  inherited dspConsultaPadrao: TDataSetProvider
    DataSet = dm.qryConsultaCli
  end
end
