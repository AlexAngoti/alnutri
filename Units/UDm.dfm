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
  object dspConsultaCli: TDataSetProvider
    DataSet = qryConsultaCli
    Left = 40
    Top = 132
  end
  object dsConsultaCli: TDataSource
    DataSet = cdsConsultaCli
    Left = 99
    Top = 132
  end
  object qryConsultaCli: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from clientes')
    Left = 8
    Top = 136
  end
  object cdsConsultaCli: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftLargeint
      end
      item
        Name = 'cpf'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'endereco'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'numero'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'telefone'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'email'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'datanasc'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspConsultaCli'
    StoreDefs = True
    AfterOpen = cdsConsultaCliAfterOpen
    Left = 72
    Top = 128
  end
  object dspConsultaProd: TDataSetProvider
    DataSet = qryConsultaProd
    Left = 40
    Top = 188
  end
  object dsConsultaProd: TDataSource
    DataSet = cdsConsultaProd
    Left = 99
    Top = 188
  end
  object qryConsultaProd: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from alimentos')
    Left = 8
    Top = 192
  end
  object cdsConsultaProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaProd'
    Left = 72
    Top = 184
  end
  object dspConsultaColab: TDataSetProvider
    DataSet = qryConsultaColab
    Left = 40
    Top = 244
  end
  object dsConsultaColab: TDataSource
    DataSet = cdsConsultaColab
    Left = 99
    Top = 244
  end
  object qryConsultaColab: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from colaboradores')
    Left = 8
    Top = 242
  end
  object cdsConsultaColab: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaColab'
    AfterOpen = cdsConsultaColabAfterOpen
    Left = 72
    Top = 240
  end
  object dspConsultaCargos: TDataSetProvider
    DataSet = qryConsultaCargos
    Left = 192
    Top = 84
  end
  object dsConsultaCargos: TDataSource
    DataSet = cdsConsultaCargos
    Left = 251
    Top = 84
  end
  object qryConsultaCargos: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from cargos')
    Left = 160
    Top = 82
  end
  object cdsConsultaCargos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaCargos'
    Left = 224
    Top = 80
  end
  object dspAgendamento: TDataSetProvider
    DataSet = qryAgendamento
    Left = 192
    Top = 140
  end
  object dsAgendamento: TDataSource
    DataSet = cdsAgendamento
    Left = 251
    Top = 140
  end
  object qryAgendamento: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      '  from agendamento a'
      ' where a.diaagendamento =:DATA'
      '   and a.idcolaborador =:COLAB')
    Left = 160
    Top = 138
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
    Left = 224
    Top = 136
  end
  object dspConsultaUsuario: TDataSetProvider
    DataSet = qryConsultaUsuario
    Left = 40
    Top = 292
  end
  object dsConsultaUsuario: TDataSource
    DataSet = cdsConsultaUsuario
    Left = 99
    Top = 292
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
  object cdsConsultaUsuario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftLargeint
      end
      item
        Name = 'login'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'senha'
        DataType = ftWideString
        Size = 8190
      end
      item
        Name = 'idcolaborador'
        DataType = ftInteger
      end
      item
        Name = 'nomecolaborador'
        DataType = ftWideString
        Size = 8190
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspConsultaUsuario'
    StoreDefs = True
    AfterOpen = cdsConsultaColabAfterOpen
    Left = 72
    Top = 288
  end
end
