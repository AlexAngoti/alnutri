inherited frmCadastroUsuario: TfrmCadastroUsuario
  Caption = 'frmCadastroUsuario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    object lblUsuario: TLabel [0]
      Left = 252
      Top = 191
      Width = 40
      Height = 13
      Caption = 'Usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblSenha: TLabel [1]
      Left = 252
      Top = 253
      Width = 32
      Height = 13
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblTelefone: TLabel [2]
      Left = 252
      Top = 317
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
    inherited pnlSubTops: TPanel
      inherited pnlSalvar: TPanel
        inherited btnSalvar: TSpeedButton
          OnClick = btnSalvarClick
        end
      end
    end
    object dbEdtUsuario: TDBEdit
      Left = 252
      Top = 216
      Width = 444
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'login'
      DataSource = dm.dsConsultaUsuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbEdtSenha: TDBEdit
      Left = 252
      Top = 275
      Width = 444
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'senha'
      DataSource = dm.dsConsultaUsuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 252
      Top = 339
      Width = 444
      Height = 21
      DataField = 'idcolaborador'
      DataSource = dm.dsConsultaUsuario
      KeyField = 'id'
      ListField = 'name'
      ListSource = dm.dsConsultaColab
      TabOrder = 4
    end
    object pnlPesquisa: TPanel
      Left = 212
      Top = 335
      Width = 38
      Height = 27
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 38
        Height = 27
        Align = alClient
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
        OnClick = SpeedButton1Click
        ExplicitLeft = -1
      end
    end
  end
end
