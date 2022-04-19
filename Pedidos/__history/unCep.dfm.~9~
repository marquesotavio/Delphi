inherited frmCep: TfrmCep
  Align = alClient
  AutoSize = True
  Caption = 'Cadastro de Cep'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 381
    ExplicitTop = 381
  end
  inherited PageControl1: TPageControl
    Height = 332
    ExplicitHeight = 332
    inherited TabSheet1: TTabSheet
      ExplicitHeight = 304
      inherited gridConsulta: TDBGrid
        Height = 304
        DataSource = dsCadastro
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitHeight = 304
    end
  end
  object DBNavigator1: TDBNavigator [4]
    Left = 0
    Top = 400
    Width = 721
    Height = 25
    DataSource = dsCadastro
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    Align = alBottom
    TabOrder = 4
  end
  inherited ActionList1: TActionList
    inherited actSalvar: TAction
      Caption = 'Salvar'
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCep.cdsCep
    Top = 208
  end
end
