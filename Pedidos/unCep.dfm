inherited frmCep: TfrmCep
  Caption = 'Cadastro de Cep'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 332
    ExplicitTop = 44
    ExplicitHeight = 332
    inherited TabSheet1: TTabSheet
      inherited gridConsulta: TDBGrid
        Height = 304
        DataSource = dsCadastro
      end
    end
  end
  object DBNavigator1: TDBNavigator [4]
    Left = 0
    Top = 381
    Width = 721
    Height = 25
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 383
  end
  inherited ActionList1: TActionList
    inherited actSalvar: TAction
      Caption = 'Salvar'
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCep.cdsCep
    Left = 632
    Top = 280
  end
end
