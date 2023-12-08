inherited FrmConsultaProd: TFrmConsultaProd
  Caption = 'FrmConsultaProd'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    inherited dbgdConsulta: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'Id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Width = 395
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo'
          Title.Caption = 'Tipo'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtdcalorias'
          Title.Caption = 'Quantidade Calorias'
          Width = 128
          Visible = True
        end>
    end
    inherited pnlPesquisa: TPanel
      inherited btnPesquisa: TSpeedButton
        OnClick = btnPesquisaClick
      end
    end
  end
  inherited cdsConsultaPadrao: TClientDataSet
    object cdsConsultaPadraoporcaotipica: TWideStringField
      FieldName = 'porcaotipica'
      Size = 25
    end
    object cdsConsultaPadraogrupoalimentar: TWideStringField
      FieldName = 'grupoalimentar'
      Size = 255
    end
    object cdsConsultaPadraonome: TWideStringField
      FieldName = 'nome'
      Size = 255
    end
    object cdsConsultaPadraokcal: TBCDField
      FieldName = 'kcal'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraoproteina: TBCDField
      FieldName = 'proteina'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraocalcio: TBCDField
      FieldName = 'calcio'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraoferro: TBCDField
      FieldName = 'ferro'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraocarboidratos: TBCDField
      FieldName = 'carboidratos'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraogordurastotais: TBCDField
      FieldName = 'gordurastotais'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraofibras: TBCDField
      FieldName = 'fibras'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraovitaminac: TBCDField
      FieldName = 'vitaminac'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraoid: TLargeintField
      FieldName = 'id'
    end
    object cdsConsultaPadraoacucares: TBCDField
      FieldName = 'acucares'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPadraodivkcal: TBCDField
      FieldName = 'divkcal'
      Precision = 15
    end
    object cdsConsultaPadraodivproteina: TBCDField
      FieldName = 'divproteina'
      Precision = 15
    end
    object cdsConsultaPadraodivcalcio: TBCDField
      FieldName = 'divcalcio'
      Precision = 15
    end
    object cdsConsultaPadraodivferro: TBCDField
      FieldName = 'divferro'
      Precision = 15
    end
    object cdsConsultaPadraodivcarboidratos: TBCDField
      FieldName = 'divcarboidratos'
      Precision = 15
    end
    object cdsConsultaPadraodivgordurastotais: TBCDField
      FieldName = 'divgordurastotais'
      Precision = 15
    end
    object cdsConsultaPadraodivfibras: TBCDField
      FieldName = 'divfibras'
      Precision = 15
    end
    object cdsConsultaPadraodivvitaminac: TBCDField
      FieldName = 'divvitaminac'
      Precision = 15
    end
    object cdsConsultaPadraodivacucares: TBCDField
      FieldName = 'divacucares'
      Precision = 15
    end
  end
  inherited dspConsultaPadrao: TDataSetProvider
    DataSet = dm.qryAlimentos
  end
end
