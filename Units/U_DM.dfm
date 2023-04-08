object DM: TDM
  Height = 480
  Width = 640
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=alnutri'
      'User_Name=postgres'
      'Password=123'
      'DriverID=PG')
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
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
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
    end
    object cdsLoginlogin: TWideStringField
      FieldName = 'login'
      Size = 8190
    end
    object cdsLoginsenha: TWideStringField
      FieldName = 'senha'
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
end
