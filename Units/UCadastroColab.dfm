inherited frmCadastroColab: TfrmCadastroColab
  Caption = 'frmCadastroColab'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    object lblName: TLabel [0]
      Left = 91
      Top = 183
      Width = 83
      Height = 13
      Caption = 'Nome Completo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblCpf: TLabel [1]
      Left = 91
      Top = 245
      Width = 19
      Height = 13
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblEmail: TLabel [2]
      Left = 91
      Top = 309
      Width = 27
      Height = 13
      Caption = 'Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblDataNasc: TLabel [3]
      Left = 329
      Top = 309
      Width = 87
      Height = 13
      Caption = 'Data Nascimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblTelefone: TLabel [4]
      Left = 329
      Top = 245
      Width = 35
      Height = 13
      Caption = 'Salario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel [5]
      Left = 567
      Top = 245
      Width = 31
      Height = 13
      Caption = 'Cargo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel [6]
      Left = 567
      Top = 309
      Width = 90
      Height = 13
      Caption = 'Data Contrata'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    inherited pnlSubTops: TPanel
      inherited pnlSalvar: TPanel
        inherited btnSalvar: TSpeedButton
          OnClick = btnSalvarClick
        end
      end
    end
    object edtName: TDBEdit
      Left = 91
      Top = 208
      Width = 682
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'name'
      DataSource = dm.dsConsultaColab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtCpf: TDBEdit
      Left = 91
      Top = 267
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cpf'
      DataSource = dm.dsConsultaColab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbEdtEmail: TDBEdit
      Left = 91
      Top = 334
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'email'
      DataSource = dm.dsConsultaColab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dtpDataNasc: TDateTimePicker
      Left = 329
      Top = 334
      Width = 206
      Height = 21
      Date = 45085.000000000000000000
      Time = 0.824579201391316000
      TabOrder = 5
    end
    object dbEdtSalario: TDBEdit
      Left = 329
      Top = 267
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'salario'
      DataSource = dm.dsConsultaColab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dtpDataContratacao: TDateTimePicker
      Left = 567
      Top = 334
      Width = 206
      Height = 21
      Date = 45085.000000000000000000
      Time = 0.824579201391316000
      TabOrder = 7
    end
    object dbCbxCargo: TDBLookupComboBox
      Left = 567
      Top = 267
      Width = 206
      Height = 21
      DataField = 'cargo'
      DataSource = dm.dsConsultaColab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'nome'
      ListField = 'nome'
      ListSource = dm.dsConsultaCargos
      ParentFont = False
      TabOrder = 8
    end
  end
end
