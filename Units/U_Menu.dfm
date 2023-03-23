object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 563
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 938
    Height = 563
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -16
    object pnlSuperior: TPanel
      Left = 0
      Top = 0
      Width = 938
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnlSuperiorEsquerda: TPanel
        Left = 0
        Top = 0
        Width = 105
        Height = 51
        Align = alLeft
        BevelOuter = bvNone
        Color = clBlue
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 57
      end
    end
    object TPanel
      Left = 0
      Top = 51
      Width = 105
      Height = 512
      ParentCustomHint = False
      Align = alLeft
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = clWhite
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBiDiMode = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object pnlSubCentral: TPanel
      Left = 105
      Top = 51
      Width = 833
      Height = 512
      Align = alClient
      BevelOuter = bvNone
      Color = 13882323
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = 368
      ExplicitTop = 200
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
end
