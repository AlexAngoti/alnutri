inherited FrmConsultaUsuario: TFrmConsultaUsuario
  Caption = 'FrmConsultaUsuario'
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
  end
  inherited cdsConsultaPadrao: TClientDataSet
    object cdsConsultaPadraoid: TLargeintField
      FieldName = 'id'
    end
    object cdsConsultaPadraologin: TWideStringField
      FieldName = 'login'
      Size = 8190
    end
    object cdsConsultaPadraosenha: TWideStringField
      FieldName = 'senha'
      Size = 8190
    end
    object cdsConsultaPadraoidcolaborador: TIntegerField
      FieldName = 'idcolaborador'
    end
  end
  inherited dspConsultaPadrao: TDataSetProvider
    DataSet = dm.qryUsuario
  end
end
