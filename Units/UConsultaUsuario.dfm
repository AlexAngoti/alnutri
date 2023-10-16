inherited FrmConsultaUsuario: TFrmConsultaUsuario
  Caption = 'FrmConsultaUsuario'
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
          FieldName = 'login'
          Title.Caption = 'Login'
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomecolaborador'
          Title.Caption = 'Colaborador'
          Width = 378
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
      inherited btnEditar: TSpeedButton
        OnClick = btnEditarClick
      end
    end
  end
end
