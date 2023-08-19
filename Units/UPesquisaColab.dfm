inherited FrmPesquisaColab: TFrmPesquisaColab
  Caption = 'FrmPesquisaColab'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    inherited dbgdConsulta: TDBGrid
      DataSource = dm.dsConsultaColab
      OnDblClick = dbgdConsultaDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'Id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = 'Nome'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Title.Caption = 'CPF'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cargo'
          Title.Caption = 'Cargo'
          Width = 250
          Visible = True
        end>
    end
    inherited pnlPesquisa: TPanel
      inherited btnInserir: TSpeedButton
        Left = 664
        Visible = False
        ExplicitLeft = 664
      end
      inherited btnExcluir: TSpeedButton
        Visible = False
      end
      inherited btnEditar: TSpeedButton
        Visible = False
      end
    end
  end
end
