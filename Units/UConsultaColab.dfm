inherited FrmConsultaColab: TFrmConsultaColab
  Caption = 'FrmConsultaColab'
  OnCreate = FormCreate
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
          FieldName = 'name'
          Width = 330
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cargo'
          Title.Caption = 'Cargos'
          Width = 245
          Visible = True
        end>
    end
    inherited pnlPesquisa: TPanel
      inherited btnInserir: TSpeedButton
        OnClick = btnInserirClick
      end
      inherited btnEditar: TSpeedButton
        OnClick = btnEditarClick
      end
    end
  end
end
