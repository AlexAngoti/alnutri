inherited frmConsultaCardapio: TfrmConsultaCardapio
  Caption = 'frmConsultaCardapio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    inherited dbgdConsulta: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'Id'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome Cardapio'
          Width = 644
          Visible = True
        end>
    end
    inherited pnlPesquisa: TPanel
      inherited btnPesquisa: TSpeedButton
        OnClick = btnPesquisaClick
      end
      inherited btnInserir: TSpeedButton
        Left = 500
        ExplicitLeft = 500
      end
    end
  end
  inherited cdsConsultaPadrao: TClientDataSet
    object cdsConsultaPadraonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object cdsConsultaPadraoid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  inherited dspConsultaPadrao: TDataSetProvider
    DataSet = dm.qryPreCardapio
  end
end
