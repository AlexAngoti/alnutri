inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'frmCadastroCliente'
  ClientHeight = 553
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    object spb_endereco: TSpeedButton [1]
      AlignWithMargins = True
      Left = 105
      Top = 5
      Width = 64
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alLeft
      GroupIndex = 1
      Caption = 'Endere'#231'o'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8011008
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 5
      ParentFont = False
      OnClick = spb_enderecoClick
      ExplicitLeft = 100
      ExplicitHeight = 31
    end
  end
  inherited pnlCentral: TPanel
    AlignWithMargins = False
    Left = 0
    Width = 1195
    Height = 346
    ExplicitLeft = 0
    ExplicitWidth = 1195
    ExplicitHeight = 346
    inherited pnlFundo: TPanel
      Width = 1195
      Height = 346
      ExplicitWidth = 1195
      ExplicitHeight = 346
      inherited pgcPessoa: TPageControl
        Width = 1195
        Height = 346
        ExplicitWidth = 1195
        ExplicitHeight = 346
        inherited tbsDadosGerais: TTabSheet
          ExplicitWidth = 1187
          ExplicitHeight = 315
          object Label1: TLabel
            Left = 8
            Top = 18
            Width = 125
            Height = 13
            Caption = 'Qual o tipo de Pessoa? *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 305
            Top = 18
            Width = 97
            Height = 13
            Caption = 'Data de Cadastro *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 644
            Top = 18
            Width = 100
            Height = 13
            Caption = 'Fisica ou Jur'#237'dica ?*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lbl_razao: TLabel
            Left = 644
            Top = 78
            Width = 72
            Height = 13
            Caption = 'Raz'#227'o Social *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 644
            Top = 130
            Width = 101
            Height = 13
            Caption = 'Falar com / Contato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 644
            Top = 186
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
          object Label9: TLabel
            Left = 8
            Top = 186
            Width = 31
            Height = 13
            Caption = 'E-mail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lbl_cpf_cnpj: TLabel
            Left = 8
            Top = 130
            Width = 32
            Height = 13
            Caption = 'CNPJ *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lbl_ie_rg: TLabel
            Left = 305
            Top = 130
            Width = 100
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 8
            Top = 78
            Width = 91
            Height = 13
            Caption = 'Nome / Fantasia *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object cbxTipoClientes: TSWHComboBox
            Left = 8
            Top = 32
            Width = 229
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'CLIENTES'
            Items.Strings = (
              'CLIENTES'
              'FUNCION'#193'RIOS'
              'FORNECEDORES')
            MudarColor = 14087422
          end
          object dtpDataInclusao: TDateTimePicker
            Left = 305
            Top = 37
            Width = 229
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
          object pnl_pessoa: TPanel
            Left = 644
            Top = 37
            Width = 488
            Height = 25
            BevelKind = bkFlat
            BevelOuter = bvNone
            TabOrder = 2
            object rbFisica: TRadioButton
              Left = 13
              Top = 3
              Width = 120
              Height = 17
              Caption = 'Pessoa F'#237'sica - CPF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = rbFisicaClick
            end
            object rbJuridica: TRadioButton
              Left = 217
              Top = 3
              Width = 133
              Height = 17
              Caption = 'Pessoa Jur'#237'dica CNPJ'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TabStop = True
              OnClick = rbFisicaClick
            end
          end
          object edtRazaoSocial: TSWHDBEdit
            Left = 644
            Top = 91
            Width = 488
            Height = 25
            DataField = 'razaosocial'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            MudarColor = 14087422
          end
          object edtContato: TSWHDBEdit
            Left = 644
            Top = 144
            Width = 488
            Height = 25
            DataField = 'contato'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            MudarColor = 14087422
          end
          object edtTelefone: TSWHDBEdit
            Left = 644
            Top = 200
            Width = 488
            Height = 25
            DataField = 'telefone'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            MudarColor = 14087422
          end
          object edtEmail: TSWHDBEdit
            Left = 8
            Top = 200
            Width = 526
            Height = 25
            DataField = 'email'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            MudarColor = 14087422
          end
          object edtCpfCnpj: TSWHMaskEdit
            Left = 8
            Top = 144
            Width = 229
            Height = 25
            EditMask = '99.999.999/9999-99;0;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            MaxLength = 18
            ParentFont = False
            TabOrder = 7
            Text = ''
            TipoMascara = tmCNPJ
            MudarColor = 14087422
            CasasDecimais = Uma
          end
          object edtIeRg: TSWHMaskEdit
            Left = 305
            Top = 144
            Width = 230
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Text = ''
            TipoMascara = tmNone
            MudarColor = 14087422
            CasasDecimais = Uma
          end
          object edtNome: TSWHDBEdit
            Left = 3
            Top = 91
            Width = 526
            Height = 25
            DataField = 'nomefantasia'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            MudarColor = 14087422
          end
        end
        object tabEndereço: TTabSheet
          Caption = 'tabEndere'#231'o'
          ImageIndex = 1
          object lblCep: TLabel
            Left = 8
            Top = 26
            Width = 27
            Height = 13
            Caption = 'CEP *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblEndereco: TLabel
            Left = 8
            Top = 74
            Width = 56
            Height = 13
            Caption = 'Endere'#231'o *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblComplemento: TLabel
            Left = 500
            Top = 74
            Width = 72
            Height = 13
            Caption = 'Complemento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblNumero: TLabel
            Left = 876
            Top = 74
            Width = 49
            Height = 13
            Caption = 'N'#250'mero *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblEstado: TLabel
            Left = 876
            Top = 130
            Width = 58
            Height = 13
            Caption = 'Estado (UF)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblTelefone4: TLabel
            Left = 753
            Top = 185
            Width = 53
            Height = 13
            Caption = 'Telefone 4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblTelefone3: TLabel
            Left = 500
            Top = 185
            Width = 53
            Height = 13
            Caption = 'Telefone 3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblCidade: TLabel
            Left = 500
            Top = 130
            Width = 36
            Height = 13
            Caption = 'Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblBairro: TLabel
            Left = 6
            Top = 130
            Width = 38
            Height = 13
            Caption = 'Bairro *'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblTelefone: TLabel
            Left = 8
            Top = 185
            Width = 53
            Height = 13
            Caption = 'Telefone 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblTelefone2: TLabel
            Left = 253
            Top = 185
            Width = 53
            Height = 13
            Caption = 'Telefone 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtEndereco: TSWHDBEdit
            Left = 8
            Top = 88
            Width = 476
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            MudarColor = 14087422
          end
          object SWHDBEdit8: TSWHDBEdit
            Left = 500
            Top = 88
            Width = 360
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            MudarColor = 14087422
          end
          object SWHDBEdit7: TSWHDBEdit
            Left = 876
            Top = 88
            Width = 113
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            MudarColor = 14087422
          end
          object edtEstado: TSWHDBEdit
            Left = 876
            Top = 144
            Width = 113
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            MudarColor = 14087422
          end
          object edtFone4: TSWHDBEdit
            Left = 753
            Top = 199
            Width = 236
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            MudarColor = 14087422
          end
          object edtFone3: TSWHDBEdit
            Left = 500
            Top = 199
            Width = 232
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            MudarColor = 14087422
          end
          object edtCidade: TSWHDBEdit
            Left = 500
            Top = 144
            Width = 360
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            MudarColor = 14087422
          end
          object edtBairro: TSWHDBEdit
            Left = 6
            Top = 144
            Width = 476
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            MudarColor = 14087422
          end
          object edtFone: TSWHDBEdit
            Left = 8
            Top = 199
            Width = 229
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            MudarColor = 14087422
          end
          object edtFone2: TSWHDBEdit
            Left = 253
            Top = 199
            Width = 231
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            MudarColor = 14087422
          end
          object pnl_cep: TPanel
            Left = 8
            Top = 40
            Width = 113
            Height = 25
            BevelKind = bkFlat
            BevelOuter = bvNone
            TabOrder = 10
            object spb_pesquisa: TSpeedButton
              Left = 82
              Top = 0
              Width = 27
              Height = 21
              Cursor = crHandPoint
              Align = alRight
              Flat = True
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F0030000120B0000120B00000000000000000000E6E1DEE6E1DE
                E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
                DEE6E1DEE6E1DEE6E1DEB3B0AECBC7C50000E6E1DEE6E1DEE6E1DEE6E1DEE6E1
                DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE9B
                99986C6C6CAFACAA0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
                E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE9F9D9B6C6C6C9D9B9ADED9D6
                0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
                E6E1DEE6E1DEE6E1DE9E9C9B6C6C6CA19F9EE6E1DEE6E1DE0000E6E1DEE6E1DE
                E6E1DEE6E1DEE5E0DDC1BEBCA3A09FA09E9CBBB8B6DDD8D6E6E1DEE6E1DE9C9A
                996C6C6CA2A09FE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEE6E1DEBAB6B46D6D
                6D6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CB1AEACA6A4A36C6C6CA3A19FE6E1DEE6
                E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEAAA7A66C6C6C7B7B7ABCB9B7D9D5D2DD
                D8D6C5C1BF8D8C8B6C6C6C6C6C6CAEABA9E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
                0000E6E1DEC7C3C16C6C6C92908FE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
                B0AEAC6C6C6CB5B2B0E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E1DCD9767675
                6F6F6FE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE8B89896C6C
                6CDFDBD8E6E1DEE6E1DEE6E1DEE6E1DE0000BAB7B56C6C6CA8A5A4E6E1DEE6E1
                DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DECDC9C76C6C6CB8B5B3E6E1DEE6
                E1DEE6E1DEE6E1DE0000A2A09F6C6C6CC6C3C0E6E1DEE6E1DEE6E1DEE6E1DEE6
                E1DEE6E1DEE6E1DEE6E1DEE2DDDA6C6C6C9D9B9AE6E1DEE6E1DEE6E1DEE6E1DE
                0000A5A3A26C6C6CC4C0BEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
                E6E1DEDFDBD86C6C6CA19F9EE6E1DEE6E1DEE6E1DEE6E1DE0000C4C0BE6C6C6C
                9A9897E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEC1BDBB6C6C
                6CC2BFBCE6E1DEE6E1DEE6E1DEE6E1DE0000E5E0DD8483826C6C6CDDD9D6E6E1
                DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE7979796C6C6CE5E0DDE6E1DEE6
                E1DEE6E1DEE6E1DE0000E6E1DED7D2D06C6C6C787777D9D4D1E6E1DEE6E1DEE6
                E1DEE6E1DEE6E1DE9492916C6C6CBCB9B7E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
                0000E6E1DEE6E1DEC1BDBB6C6C6C6C6C6C999796BEBAB8C3C0BDA6A4A36D6D6D
                6C6C6CABA8A7E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DE
                E6E1DED1CDCA8A89886C6C6C6C6C6C6C6C6C6C6C6C7E7D7DC2BEBCE6E1DEE6E1
                DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE0000E6E1DEE6E1DEE6E1DEE6E1DEE6E1
                DEC4C0BEAAA8A6A6A4A2BDBAB8E1DCD9E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
                E1DEE6E1DEE6E1DE0000}
              ExplicitLeft = 144
              ExplicitTop = -2
              ExplicitHeight = 26
            end
            object dbe_cep: TSWHMaskEdit
              Left = 2
              Top = 0
              Width = 80
              Height = 21
              BorderStyle = bsNone
              EditMask = '99.999-999;0;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 0
              Text = ''
              TipoMascara = tmCEP
              MudarColor = 14087422
              CasasDecimais = Uma
            end
          end
        end
      end
    end
  end
  inherited pnlBotton: TPanel
    Top = 475
    ExplicitTop = 475
  end
  inherited dsCadastroPadrao: TDataSource
    DataSet = FrmConsultaCliente.cdsConsultaPadrao
  end
end
