object dm: Tdm
  OldCreateOrder = False
  Height = 351
  Width = 541
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=alnutri'
      'User_Name=postgres'
      'Password=123'
      'Server=localhost'
      'DriverID=PG')
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 72
    Top = 16
  end
  object qryLogin: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM login A'
      ' WHERE A.login =:LOGIN'
      '   AND A.senha =:SENHA')
    Left = 12
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object cdsLogin: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SENHA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLogin'
    Left = 70
    Top = 80
    object cdsLoginid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLoginlogin: TWideStringField
      FieldName = 'login'
      Origin = '"login"'
      Size = 8190
    end
    object cdsLoginsenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 8190
    end
  end
  object dspLogin: TDataSetProvider
    DataSet = qryLogin
    Left = 40
    Top = 80
  end
  object dsLogin: TDataSource
    DataSet = cdsLogin
    Left = 99
    Top = 80
  end
  object qryConsultaCli: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from clientes')
    Left = 40
    Top = 288
  end
  object qryConsultaProd: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from alimentos')
    Left = 104
    Top = 288
  end
  object qryConsultaColab: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from colaboradores')
    Left = 72
    Top = 290
  end
  object qryConsultaCargos: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from cargos')
    Left = 136
    Top = 290
  end
  object dspAgendamento: TDataSetProvider
    DataSet = qryAgendamento
    Left = 40
    Top = 132
  end
  object dsAgendamento: TDataSource
    DataSet = cdsAgendamento
    Left = 99
    Top = 132
  end
  object qryAgendamento: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from agendamento a'
      ' where a.diaagendamento =:DATA'
      '   and a.idcolaborador =:COLAB')
    Left = 8
    Top = 130
    ParamData = <
      item
        Position = 1
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'COLAB'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsAgendamento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COLAB'
        ParamType = ptInput
      end>
    ProviderName = 'dspAgendamento'
    AfterOpen = cdsAgendamentoAfterOpen
    Left = 72
    Top = 128
  end
  object qryConsultaUsuario: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from login')
    Left = 8
    Top = 290
  end
end
