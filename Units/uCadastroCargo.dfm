inherited frmCadastroCargos: TfrmCadastroCargos
  Caption = 'frmCadastroCargos'
  ClientWidth = 406
  ExplicitWidth = 406
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 406
    ExplicitWidth = 406
    object lblName: TLabel [0]
      Left = 59
      Top = 213
      Width = 81
      Height = 13
      Caption = 'Nome do Cargo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblCpf: TLabel [1]
      Left = 59
      Top = 299
      Width = 121
      Height = 13
      Caption = 'Recebe Agendamentos '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    inherited pnlSubTop: TPanel
      Width = 406
      ExplicitWidth = 406
      inherited btnFechar: TSpeedButton
        Left = 351
        ExplicitLeft = 351
      end
      inherited pnlLinha: TPanel
        Width = 406
        ExplicitWidth = 406
      end
    end
    inherited pnlSubTops: TPanel
      Width = 406
      ExplicitWidth = 406
      inherited pnlSalvar: TPanel
        Left = 269
        ExplicitLeft = 269
        inherited btnSalvar: TSpeedButton
          OnClick = btnSalvarClick
        end
      end
      inherited pnlCancelar: TPanel
        Left = 136
        ExplicitLeft = 136
      end
    end
    object edtName: TDBEdit
      Left = 59
      Top = 240
      Width = 270
      Height = 21
      Hint = 'Digite Nome Completo'
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'nome'
      DataSource = dm.dsConsultaCargos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbCbxAgendamento: TDBComboBox
      Left = 59
      Top = 326
      Width = 144
      Height = 21
      DataField = 'recebeagendamento'
      DataSource = dm.dsConsultaCargos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5855577
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'S - Sim'
        'N - N'#227'o')
      ParentFont = False
      TabOrder = 3
    end
  end
end
