inherited frmCadastroProd: TfrmCadastroProd
  Caption = 'frmCadastroProd'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    object lblNameProd: TLabel [0]
      Left = 91
      Top = 187
      Width = 75
      Height = 13
      Caption = 'Nome Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdCalorias: TLabel [1]
      Left = 91
      Top = 253
      Width = 105
      Height = 13
      Caption = 'Quantidade Calorias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdGorduras: TLabel [2]
      Left = 91
      Top = 317
      Width = 145
      Height = 13
      Caption = 'Quantidade Gorduras Totais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblCarboidratos: TLabel [3]
      Left = 329
      Top = 253
      Width = 131
      Height = 13
      Caption = 'Quantidade Carboidratos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdProteinas: TLabel [4]
      Left = 329
      Top = 317
      Width = 112
      Height = 13
      Caption = 'Quantidade Proteinas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdFibras: TLabel [5]
      Left = 91
      Top = 381
      Width = 95
      Height = 13
      Caption = 'Quantidade Fibras'
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
    object dbRgrpTipo: TDBRadioGroup
      Left = 571
      Top = 257
      Width = 185
      Height = 105
      Caption = 'Tipo do Produto'
      DataField = 'tipo'
      DataSource = dm.dsConsultaProd
      Items.Strings = (
        'Liquido'
        'Solido')
      TabOrder = 2
      Values.Strings = (
        '1'
        '2')
    end
    object edtName: TDBEdit
      Left = 91
      Top = 211
      Width = 682
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'nome'
      DataSource = dm.dsConsultaProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbEdtQtdCalorias: TDBEdit
      Left = 91
      Top = 273
      Width = 182
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'qtdcalorias'
      DataSource = dm.dsConsultaProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbEdtQtdCarbo: TDBEdit
      Left = 329
      Top = 273
      Width = 184
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'qtdcarboidratos'
      DataSource = dm.dsConsultaProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object dbEdtQtdProteinas: TDBEdit
      Left = 329
      Top = 341
      Width = 184
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'qtdproteina'
      DataSource = dm.dsConsultaProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dbEdtQtdGorduras: TDBEdit
      Left = 91
      Top = 341
      Width = 182
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'qtdgordurastotais'
      DataSource = dm.dsConsultaProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dbEdtQtdFribas: TDBEdit
      Left = 91
      Top = 408
      Width = 182
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'qtdfibras'
      DataSource = dm.dsConsultaProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
end
