object frmPesquisaPadrao: TfrmPesquisaPadrao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 453
  ClientWidth = 1049
  Color = 15395562
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 88
    Width = 1039
    Height = 360
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object dbgdConsulta: TDBGrid
      Left = 0
      Top = 72
      Width = 1039
      Height = 288
      Align = alClient
      Color = clWhite
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -14
      Font.Name = 'Default'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clGray
      TitleFont.Height = -14
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = dbgdConsultaDblClick
    end
    object pnlPesquisa: TPanel
      Left = 0
      Top = 0
      Width = 1039
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object lblPesquisar: TLabel
        Left = 40
        Top = 6
        Width = 57
        Height = 19
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object btnPesquisa: TSpeedButton
        Left = 471
        Top = 17
        Width = 40
        Height = 41
        Flat = True
        Glyph.Data = {
          42100000424D4210000000000000420000002800000020000000200000000100
          20000300000000100000130B0000130B000000000000000000000000FF0000FF
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000046464650454545E2464646E14646464800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000046464657464646FB464646FF464646FF454545E300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004646
          4657464646FB464646FF464646FF464646FF454545E300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000464646574646
          46FB464646FF464646FF464646FF464646FB4646465000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000045454554464646FB4646
          46FF464646FF464646FF454545FC4545455C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000434343314545457246464694454545A14545
          458C4646465E48484815000000000000000046464657464646FB464646FF4646
          46FF464646FF464646FB46464657000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000046464648464646CB464646FF464646FF464646FF464646FF4646
          46FF464646FF464646FB464646A04646466C464646FB464646FF464646FF4646
          46FF464646FB4646465700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005555
          550345454593464646FE464646FF464646FF464646FF464646FF464646FF4646
          46FF464646FF464646FF464646FF464646FF464646FF464646FF464646FF4646
          46FB464646570000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000014646
          469F464646FF464646FF464646FE454545A94545454942424217555555064545
          452146464665454545D4464646FF464646FF464646FF464646FF464646FB4646
          4657000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000464646654646
          46FF464646FF464646EB46464641000000000000000000000000000000000000
          0000000000005555550345454581464646FE464646FF464646FF4646466C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004848480E464646F04646
          46FF464646F64444443400000000000000000000000000000000000000000000
          000000000000000000000000000045454581464646FF464646FF464646A00000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004646466D464646FF4646
          46FF454545800000000000000000000000000000000000000000000000000000
          000000000000000000000000000055555503454545D4464646FF464646FB4848
          4815000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000464646B8464646FF4646
          46FB434343130000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000046464665464646FF464646FF4545
          455F000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000464646EB464646FF4545
          45CA000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000045454521464646FF464646FF4545
          458B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000454545F9464646FF4646
          46B1000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000048484807464646FF464646FF4545
          45A1000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000454545F2464646FF4545
          45BF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000045454516464646FF464646FF4646
          4695000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000464646CE464646FF4545
          45ED3F3F3F040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000045454549464646FF464646FF4646
          4673000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004646468A464646FF4646
          46FF474747520000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000454545A9464646FF464646FF4343
          4331000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004444442D454545FD4646
          46FF464646DA4848480E00000000000000000000000000000000000000000000
          000000000000000000000000000046464641464646FE464646FF464646CB0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000454545A24646
          46FF464646FF454545BB4848480E000000000000000000000000000000000000
          0000000000000000000044444434464646EB464646FF464646FE454545490000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000464646124646
          46D9464646FF464646FF464646DA474747523F3F3F0400000000000000000000
          00004646461245454580464646F6464646FF464646FF45454593000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004848
          4823464646D9464646FF464646FF464646FF454545ED464646C0454545B04545
          45C9464646FB464646FF464646FF464646FF4646469F55555503000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000046464612454545A2454545FD464646FF464646FF464646FF464646FF4646
          46FF464646FF464646FF464646F0444444640000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004444442D4646468A464646CE454545F2464646FB4646
          46E9464646B84646466D4848480E000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
      end
      object edtPesquisa: TEdit
        Left = 40
        Top = 29
        Width = 425
        Height = 23
        Align = alCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Sergoe ui '
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'Digite nome do cliente'
      end
    end
  end
  object pnlSubTop: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1039
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
      Left = 983
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
      ExplicitLeft = 1047
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
  object dsPadrao: TDataSource
    DataSet = cdsPadrao
    Left = 317
    Top = 13
  end
  object cdsPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 357
    Top = 13
  end
  object dspPadrao: TDataSetProvider
    DataSet = qryPadrao
    Left = 397
    Top = 13
  end
  object qryPadrao: TFDQuery
    Connection = dm.FDConnection
    Left = 437
    Top = 13
  end
end