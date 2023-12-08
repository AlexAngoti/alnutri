inherited frmCadastroUsuario: TfrmCadastroUsuario
  Caption = 'frmCadastroUsuario'
  ExplicitLeft = -231
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlSubTop: TPanel
    inherited btnFechar: TSpeedButton
      OnClick = nil
    end
  end
  inherited pnlCentral: TPanel
    inherited pnlFundo: TPanel
      inherited pgcPessoa: TPageControl
        inherited tbsDadosGerais: TTabSheet
          object Label1: TLabel
            Left = 384
            Top = 53
            Width = 29
            Height = 13
            Caption = 'Login'
          end
          object Label2: TLabel
            Left = 640
            Top = 53
            Width = 32
            Height = 13
            Caption = 'Senha'
          end
          object SWHDBEdit1: TSWHDBEdit
            Left = 640
            Top = 72
            Width = 185
            Height = 21
            DataField = 'senha'
            DataSource = dsCadastroPadrao
            TabOrder = 0
            MudarColor = 14087422
          end
          object SWHDBEdit2: TSWHDBEdit
            Left = 384
            Top = 72
            Width = 185
            Height = 21
            DataField = 'login'
            DataSource = dsCadastroPadrao
            TabOrder = 1
            MudarColor = 14087422
          end
        end
      end
    end
  end
  inherited dsCadastroPadrao: TDataSource
    DataSet = FrmConsultaUsuario.cdsConsultaPadrao
  end
end
