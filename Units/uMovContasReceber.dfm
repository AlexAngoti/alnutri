object frmMovReceber: TfrmMovReceber
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Movimenta'#231#227'o Contas Receber'
  ClientHeight = 328
  ClientWidth = 724
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 328
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object lblDataVencimento: TLabel
      Left = 33
      Top = 64
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
      Left = 253
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
      Left = 448
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
      Left = 33
      Top = 134
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
    object lblCliente: TLabel
      Left = 33
      Top = 204
      Width = 36
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnPesquisa: TSpeedButton
      Left = 87
      Top = 223
      Width = 27
      Height = 25
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
        00000000000000000000000000000000000000000016000000CC000000C30000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000016000000D3000000FF000000CA0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000004300000099000000D6000000F3000000F3000000D6000000990000
        0042000000000000000000000015000000D2000000FF000000D7000000190000
        0000000000000000000000000000000000000000000000000000000000240000
        00BF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000BD00000035000000D2000000FF000000D700000019000000000000
        000000000000000000000000000000000000000000000000003E000000ED0000
        00FF000000EB0000007D000000320000000C0000000D000000330000007E0000
        00EB000000FF000000FC000000FF000000D30000001600000000000000000000
        00000000000000000000000000000000000000000025000000ED000000FF0000
        00AC0000000F0000000000000000000000000000000000000000000000000000
        0010000000C5000000FF000000FC000000360000000000000000000000000000
        000000000000000000000000000000000000000000C0000000FF000000AC0000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000003000000C5000000FF000000BD0000000000000000000000000000
        000000000000000000000000000000000044000000FF000000EA0000000E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000010000000EB000000FF0000004200000000000000000000
        00000000000000000000000000000000009A000000FF0000007D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000007F000000FF0000009800000000000000000000
        0000000000000000000000000000000000D8000000FF00000030000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000032000000FF000000D600000000000000000000
        0000000000000000000000000000000000F3000000FF0000000D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000E000000FF000000F100000000000000000000
        0000000000000000000000000000000000F3000000FF0000000C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000D000000FF000000F300000000000000000000
        0000000000000000000000000000000000D8000000FF0000002F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000031000000FF000000D700000000000000000000
        00000000000000000000000000000000009B000000FF0000007C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000007E000000FF0000009900000000000000000000
        000000000000000000000000000000000045000000FF000000E90000000D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000F000000EA000000FF0000004300000000000000000000
        000000000000000000000000000000000000000000C2000000FF000000AA0000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000001000000AD000000FF000000BF0000000000000000000000000000
        00000000000000000000000000000000000000000027000000EF000000FF0000
        00AA0000000D0000000000000000000000000000000000000000000000000000
        000E000000AC000000FF000000ED000000250000000000000000000000000000
        000000000000000000000000000000000000000000000000003F000000EE0000
        00FF000000E90000007C000000300000000B0000000B000000310000007C0000
        00EA000000FF000000EE0000003D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000260000
        00C2000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000C00000002500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000450000009B000000D8000000F4000000F4000000D70000009A0000
        0044000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = btnPesquisaClick
    end
    object pnlSubBot: TPanel
      Left = 1
      Top = 286
      Width = 722
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object pnlNovoLanc: TPanel
        AlignWithMargins = True
        Left = 592
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
          ExplicitTop = -1
          ExplicitHeight = 30
        end
      end
      object pnlCancelar: TPanel
        AlignWithMargins = True
        Left = 462
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
      Width = 722
      Height = 43
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object btnFechar: TSpeedButton
        AlignWithMargins = True
        Left = 671
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
      Left = 253
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
      Left = 33
      Top = 153
      Width = 644
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
      Left = 33
      Top = 83
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
      Left = 448
      Top = 83
      Width = 229
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
    object edtCodCliente: TSWHDBEdit
      Left = 33
      Top = 223
      Width = 48
      Height = 25
      DataField = 'idcliente'
      DataSource = dsMovContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      MudarColor = 14087422
    end
    object edtNomeCliente: TSWHDBEdit
      Left = 120
      Top = 223
      Width = 555
      Height = 25
      DataField = 'nomecliente'
      DataSource = dsMovContasReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      MudarColor = 14087422
    end
  end
  object dsMovContasReceber: TDataSource
    DataSet = frmContasReceber.cdsContasReceber
    Left = 361
    Top = 9
  end
end
