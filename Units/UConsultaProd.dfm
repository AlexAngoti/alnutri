inherited FrmConsultaProd: TFrmConsultaProd
  Caption = 'FrmConsultaProd'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    inherited dbgdConsulta: TDBGrid
      DataSource = dm.dsConsultaProd
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
      inherited btnInserir: TSpeedButton
        OnClick = btnInserirClick
      end
      inherited btnExcluir: TSpeedButton
        OnClick = btnExcluirClick
      end
      inherited btnEditar: TSpeedButton
        OnClick = btnEditarClick
      end
    end
  end
end
