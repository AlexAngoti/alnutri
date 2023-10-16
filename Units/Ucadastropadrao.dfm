object frmCadastroPadrao: TfrmCadastroPadrao
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Cadastro'
  ClientHeight = 548
  ClientWidth = 1195
  Color = 15395562
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 8011008
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 83
    Width = 1185
    Height = 41
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object btnDadosGerais: TSpeedButton
      AlignWithMargins = True
      Left = 10
      Top = 5
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alLeft
      GroupIndex = 1
      Down = True
      Caption = 'Dados Gerais'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8011008
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 5
      ParentFont = False
      OnClick = btnDadosGeraisClick
      ExplicitLeft = 5
      ExplicitHeight = 31
    end
    object pnl_botoes: TPanel
      Left = 892
      Top = 0
      Width = 293
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object pnl_confirmar: TPanel
        AlignWithMargins = True
        Left = 45
        Top = 5
        Width = 120
        Height = 30
        Margins.Left = 0
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = 16024898
        ParentBackground = False
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 120
          Height = 30
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
          OnClick = SpeedButton1Click
          ExplicitTop = -1
        end
      end
      object pnl_cancelar: TPanel
        AlignWithMargins = True
        Left = 168
        Top = 5
        Width = 120
        Height = 30
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alRight
        BevelOuter = bvNone
        Color = 16514043
        ParentBackground = False
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 0
          Top = 0
          Width = 120
          Height = 30
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton2Click
          ExplicitLeft = 16
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object pnlBarraBotao: TPanel
      Left = 0
      Top = 40
      Width = 1185
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Color = 15395562
      ParentBackground = False
      TabOrder = 1
    end
  end
  object pnlSubTop: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1185
    Height = 73
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object btnFechar: TSpeedButton
      AlignWithMargins = True
      Left = 1129
      Top = 10
      Width = 46
      Height = 53
      Margins.Left = 15
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
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
      ExplicitLeft = 887
      ExplicitTop = 0
      ExplicitHeight = 52
    end
    object lblEmpresa: TLabel
      Left = 89
      Top = 24
      Width = 60
      Height = 21
      Caption = 'Al Nutri'
      Color = clWhite
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = 8011008
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object pnlCentral: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 124
    Width = 1185
    Height = 341
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object pnlFundo: TPanel
      Left = 0
      Top = 0
      Width = 1185
      Height = 341
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pgcPessoa: TPageControl
        Left = 0
        Top = 0
        Width = 1185
        Height = 341
        ActivePage = tbsDadosGerais
        Align = alClient
        Style = tsButtons
        TabOrder = 0
        object tbsDadosGerais: TTabSheet
          Caption = 'tbsDadosGerais'
        end
      end
    end
  end
  object pnlBotton: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 470
    Width = 1185
    Height = 73
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object pnlLogoBotton: TLabel
      Left = 89
      Top = 24
      Width = 60
      Height = 21
      Caption = 'Al Nutri'
      Color = clWhite
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = 8011008
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object dsCadastroPadrao: TDataSource
    Left = 317
    Top = 13
  end
end
