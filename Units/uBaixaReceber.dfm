object frmMovBaixaReceber: TfrmMovBaixaReceber
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmMovBaixaReceber'
  ClientHeight = 309
  ClientWidth = 562
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 309
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object lblDataVencimento: TLabel
      Left = 35
      Top = 123
      Width = 87
      Height = 13
      Caption = 'Data Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblValor: TLabel
      Left = 33
      Top = 64
      Width = 76
      Height = 13
      Caption = 'Valor do Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblFormaPgto: TLabel
      Left = 315
      Top = 64
      Width = 109
      Height = 13
      Caption = 'Forma de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblDescricao: TLabel
      Left = 35
      Top = 179
      Width = 99
      Height = 13
      Caption = 'Descri'#231#227'o do Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblDataPagamento: TLabel
      Left = 315
      Top = 123
      Width = 85
      Height = 13
      Caption = 'Data Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnlSubBot: TPanel
      Left = 1
      Top = 267
      Width = 560
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      ExplicitTop = 268
      object pnlNovoLanc: TPanel
        AlignWithMargins = True
        Left = 430
        Top = 5
        Width = 127
        Height = 31
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = 16024898
        ParentBackground = False
        TabOrder = 0
        object btnNovoLancamento: TSpeedButton
          Left = 0
          Top = 0
          Width = 127
          Height = 31
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Confirmar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnNovoLancamentoClick
          ExplicitLeft = 3
        end
      end
      object pnlCancelar: TPanel
        AlignWithMargins = True
        Left = 300
        Top = 5
        Width = 127
        Height = 31
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 127
          Height = 31
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5855577
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnCancelarClick
          ExplicitLeft = 3
          ExplicitTop = -1
          ExplicitHeight = 30
        end
      end
    end
    object pnlSubTop: TPanel
      Left = 1
      Top = 1
      Width = 560
      Height = 43
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object btnFechar: TSpeedButton
        AlignWithMargins = True
        Left = 509
        Top = 5
        Width = 46
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alRight
        Flat = True
        Glyph.Data = {
          42090000424D4209000000000000420000002800000018000000180000000100
          20000300000000090000130B0000130B000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000C30000
          00CC000000160000000000000000000000000000000000000000000000000000
          00000000000000000016000000CC000000C30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000CA0000
          00FF000000D30000001600000000000000000000000000000000000000000000
          000000000016000000D3000000FF000000CA0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000150000
          00D2000000FF000000D700000018000000000000000000000000000000000000
          0015000000D2000000FF000000D7000000190000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0015000000D2000000FF000000D7000000180000000000000000000000150000
          00D2000000FF000000D700000019000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000015000000D2000000FF000000D70000001800000015000000D20000
          00FF000000D70000001900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000015000000D2000000FF000000DA000000D6000000FF0000
          00D7000000190000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000015000000D6000000FF000000FF000000DB0000
          0019000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000015000000D6000000FF000000FF000000DB0000
          0018000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000015000000D2000000FF000000DA000000D6000000FF0000
          00D7000000180000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000015000000D2000000FF000000D70000001900000015000000D20000
          00FF000000D70000001800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0015000000D2000000FF000000D7000000190000000000000000000000150000
          00D2000000FF000000D700000018000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000150000
          00D2000000FF000000D700000019000000000000000000000000000000000000
          0015000000D2000000FF000000D7000000180000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000CA0000
          00FF000000D30000001600000000000000000000000000000000000000000000
          000000000016000000D3000000FF000000CA0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000C30000
          00CC000000160000000000000000000000000000000000000000000000000000
          00000000000000000016000000CC000000C30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        OnClick = btnFecharClick
        ExplicitLeft = 673
        ExplicitTop = 10
      end
    end
    object edtValor: TSWHDBEdit
      Left = 33
      Top = 83
      Width = 175
      Height = 25
      Hint = 'Digite o Valor'
      DataField = 'valor'
      DataSource = dsMovContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      MudarColor = 14087422
    end
    object edtDescricao: TSWHDBEdit
      Left = 35
      Top = 198
      Width = 480
      Height = 25
      DataField = 'descricao'
      DataSource = dsMovContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      MudarColor = 14087422
    end
    object dtpDataVencimento: TDateTimePicker
      Left = 35
      Top = 142
      Width = 200
      Height = 25
      Date = 45208.000000000000000000
      Time = 0.336747800924058500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object cbxTipoPgto: TSWHComboBox
      Left = 315
      Top = 83
      Width = 200
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TextHint = 'Forma de Pagamento'
      Items.Strings = (
        '1 - PIX'
        '2 - DINHEIRO'
        '3 - BOLETO'
        '4 - CARTAO CREDITO'
        '5 - CARTAO DEBITO')
      MudarColor = 14087422
    end
  end
  object dtpDataPgto: TDateTimePicker
    Left = 315
    Top = 142
    Width = 200
    Height = 25
    Date = 45208.000000000000000000
    Time = 0.336747800924058500
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dsMovContasReceber: TDataSource
    DataSet = frmContasReceber.cdsContasReceber
    Left = 249
    Top = 9
  end
end
