inherited frmCadastroProd: TfrmCadastroProd
  Caption = 'frmCadastroProd'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCentral: TPanel
    inherited pnlFundo: TPanel
      inherited pgcPessoa: TPageControl
        inherited tbsDadosGerais: TTabSheet
          object lblPorcao: TLabel
            Left = 177
            Top = 37
            Width = 68
            Height = 13
            Caption = 'Por'#231#227'o Tipica'
          end
          object lblCalorias: TLabel
            Left = 177
            Top = 93
            Width = 20
            Height = 13
            Caption = 'Kcal'
          end
          object lblCarboidratos: TLabel
            Left = 177
            Top = 149
            Width = 67
            Height = 13
            Caption = 'Carboidratos'
          end
          object lblFibras: TLabel
            Left = 613
            Top = 149
            Width = 31
            Height = 13
            Caption = 'Fibras'
          end
          object lblAcucares: TLabel
            Left = 816
            Top = 149
            Width = 45
            Height = 13
            Caption = 'A'#231#250'cares'
          end
          object lblGorduras: TLabel
            Left = 380
            Top = 149
            Width = 81
            Height = 13
            Caption = 'Gorduras Totais'
          end
          object lblProteina: TLabel
            Left = 380
            Top = 93
            Width = 43
            Height = 13
            Caption = 'Proteina'
          end
          object lblGrupo: TLabel
            Left = 380
            Top = 37
            Width = 85
            Height = 13
            Caption = 'Grupo Alimentar'
          end
          object lblNome: TLabel
            Left = 613
            Top = 37
            Width = 30
            Height = 13
            Caption = 'Nome'
          end
          object lblCalcio: TLabel
            Left = 613
            Top = 93
            Width = 31
            Height = 13
            Caption = 'Calcio'
          end
          object lblVitaminaC: TLabel
            Left = 177
            Top = 213
            Width = 55
            Height = 13
            Caption = 'Vitamina C'
          end
          object lblFerro: TLabel
            Left = 816
            Top = 93
            Width = 27
            Height = 13
            Caption = 'Ferro'
          end
          object edtNome: TSWHDBEdit
            Left = 613
            Top = 56
            Width = 364
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'nome'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            MudarColor = 14087422
          end
          object cbxPorcao: TSWHComboBox
            Left = 177
            Top = 56
            Width = 164
            Height = 21
            TabOrder = 1
            Text = 'cbxPorcao'
            Items.Strings = (
              '100(g)')
            MudarColor = 14087422
          end
          object cbxGrupo: TSWHComboBox
            Left = 380
            Top = 56
            Width = 161
            Height = 21
            TabOrder = 2
            Text = 'SWHComboBox1'
            Items.Strings = (
              'Frutas'
              'Vegetais'
              'Gr'#227'os e Cereais'
              'Prote'#237'nas Animais'
              'Prote'#237'nas Vegetais'
              'Latic'#237'nios e Alternativas'
              'Gorduras Saud'#225'veis'
              'Alimentos Processados'
              'Doces e Sobremesas'
              'Condimentos e Temperos'
              'Bebidas'
              'Suplementos')
            MudarColor = 14087422
          end
          object edtCalorias: TSWHDBEdit
            Left = 177
            Top = 112
            Width = 164
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'kcal'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            MudarColor = 14087422
          end
          object edtProteina: TSWHDBEdit
            Left = 380
            Top = 112
            Width = 161
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'proteina'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            MudarColor = 14087422
          end
          object edtCarboidratos: TSWHDBEdit
            Left = 177
            Top = 168
            Width = 164
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'carboidratos'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            MudarColor = 14087422
          end
          object edtGorduras: TSWHDBEdit
            Left = 380
            Top = 168
            Width = 161
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'gordurastotais'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            MudarColor = 14087422
          end
          object edtFibras: TSWHDBEdit
            Left = 613
            Top = 168
            Width = 164
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'fibras'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            MudarColor = 14087422
          end
          object edtAcucares: TSWHDBEdit
            Left = 816
            Top = 168
            Width = 161
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'acucares'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            MudarColor = 14087422
          end
          object edtFerro: TSWHDBEdit
            Left = 816
            Top = 112
            Width = 161
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'ferro'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            MudarColor = 14087422
          end
          object edtCalcio: TSWHDBEdit
            Left = 613
            Top = 112
            Width = 161
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'calcio'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            MudarColor = 14087422
          end
          object edtVitamina: TSWHDBEdit
            Left = 177
            Top = 232
            Width = 161
            Height = 21
            BevelKind = bkSoft
            BorderStyle = bsNone
            DataField = 'vitaminac'
            DataSource = dsCadastroPadrao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5855577
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            MudarColor = 14087422
          end
        end
      end
    end
  end
  inherited dsCadastroPadrao: TDataSource
    DataSet = FrmConsultaProd.cdsConsultaPadrao
  end
end
