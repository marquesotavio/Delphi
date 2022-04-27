inherited frmCep: TfrmCep
  Align = alClient
  AutoSize = True
  Caption = 'Cadastro de Cep'
  ClientHeight = 478
  OnShow = FormShow
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 459
    ParentShowHint = False
    ShowHint = True
    ExplicitLeft = 8
    ExplicitTop = 375
  end
  inherited PageControl1: TPageControl
    Height = 385
    ExplicitHeight = 332
    inherited TabSheet1: TTabSheet
      ExplicitHeight = 357
      inherited gridConsulta: TDBGrid
        Height = 357
        DataSource = dsCadastro
        ParentShowHint = False
        ShowHint = True
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitHeight = 357
    end
  end
  object DBNavigator1: TDBNavigator [4]
    Left = 0
    Top = 434
    Width = 721
    Height = 25
    DataSource = dsCadastro
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    ExplicitLeft = 8
    ExplicitTop = 350
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
