inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'frmCadastroCliente'
  ClientHeight = 553
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Height = 553
    ExplicitHeight = 553
    object lblName: TLabel [0]
      Left = 91
      Top = 191
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
      Top = 253
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
    object lblCep: TLabel [2]
      Left = 329
      Top = 253
      Width = 19
      Height = 13
      Caption = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblEndereco: TLabel [3]
      Left = 567
      Top = 253
      Width = 48
      Height = 13
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblBairro: TLabel [4]
      Left = 91
      Top = 317
      Width = 30
      Height = 13
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblNumero: TLabel [5]
      Left = 329
      Top = 317
      Width = 41
      Height = 13
      Caption = 'Numero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblTelefone: TLabel [6]
      Left = 567
      Top = 317
      Width = 44
      Height = 13
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblDataNasc: TLabel [7]
      Left = 329
      Top = 381
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
    object lblEmail: TLabel [8]
      Left = 91
      Top = 381
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
    inherited pnlSubTops: TPanel
      Top = 497
      ExplicitTop = 497
      inherited pnlSalvar: TPanel
        inherited btnSalvar: TSpeedButton
          OnClick = btnSalvarClick
        end
      end
    end
    object pnlSubTop1: TPanel
      Left = 0
      Top = 73
      Width = 944
      Height = 96
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object pnlSegunraça: TPanel
        AlignWithMargins = True
        Left = 824
        Top = 5
        Width = 105
        Height = 91
        Margins.Top = 5
        Margins.Right = 15
        Margins.Bottom = 0
        Align = alRight
        BevelOuter = bvNone
        Color = 16740690
        ParentBackground = False
        TabOrder = 0
      end
      object pnlMensalidade: TPanel
        AlignWithMargins = True
        Left = 701
        Top = 5
        Width = 105
        Height = 91
        Margins.Top = 5
        Margins.Right = 15
        Margins.Bottom = 0
        Align = alRight
        BevelOuter = bvNone
        Color = 16740690
        ParentBackground = False
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 105
          Height = 91
          Align = alClient
          Flat = True
          ExplicitLeft = 16
          ExplicitTop = 40
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object dbEdtName: TDBEdit
      Left = 91
      Top = 210
      Width = 682
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'name'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbEdtCpf: TDBEdit
      Left = 91
      Top = 272
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cpf'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbEdtCep: TDBEdit
      Left = 329
      Top = 272
      Width = 203
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cep'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object dbEdtEndereco: TDBEdit
      Left = 567
      Top = 275
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'endereco'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dbEdtBairro: TDBEdit
      Left = 91
      Top = 341
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'bairro'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dbEdtNumero: TDBEdit
      Left = 329
      Top = 341
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'numero'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object dbEdtTelefone: TDBEdit
      Left = 567
      Top = 341
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'telefone'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object dbEdtEmail: TDBEdit
      Left = 91
      Top = 406
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'email'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object dbEdtData: TDBEdit
      Left = 329
      Top = 406
      Width = 206
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'datanasc'
      DataSource = dm.dsConsultaCli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
end
