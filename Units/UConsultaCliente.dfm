inherited FrmConsultaCliente: TFrmConsultaCliente
  Caption = 'FrmConsultaCliente'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    inherited dbgdConsulta: TDBGrid
      DataSource = dm.dsConsultaCli
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'Id'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = 'Nome'
          Width = 450
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
          FieldName = 'cep'
          Title.Caption = 'CEP'
          Width = 200
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
