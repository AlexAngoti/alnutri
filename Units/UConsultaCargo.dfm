inherited FrmConsultaCargos: TFrmConsultaCargos
  Caption = 'FrmConsultaCargos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    inherited dbgdConsulta: TDBGrid
      DataSource = dm.dsConsultaCargos
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
          Title.Caption = 'Cargo'
          Width = 307
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'recebeagendamento'
          Title.Caption = 'Recebe Agendamento'
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
