inherited frmCep: TfrmCep
  Align = alClient
  AutoSize = True
  Caption = 'Cadastro de Cep'
  ClientHeight = 478
  OnShow = FormShow
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    TabOrder = 2
  end
  inherited StatusBar: TStatusBar
    Top = 459
    ParentShowHint = False
    ShowHint = True
    ExplicitTop = 459
  end
  inherited PageControl1: TPageControl
    Height = 385
    TabOrder = 1
    ExplicitHeight = 385
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
      inherited ScrollBox1: TScrollBox
        Height = 357
        ExplicitWidth = 713
        ExplicitHeight = 357
        object Label1: TLabel
          Left = 32
          Top = 40
          Width = 36
          Height = 13
          Caption = 'CEP_ID'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 12
          Top = 120
          Width = 19
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 12
          Top = 163
          Width = 21
          Height = 13
          Caption = 'RUA'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 97
          Top = 120
          Width = 38
          Height = 13
          Caption = 'CIDADE'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 239
          Top = 120
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit5
        end
        object DBEdit1: TDBEdit
          Left = 32
          Top = 56
          Width = 134
          Height = 21
          DataField = 'CEP_ID'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 14
          Top = 136
          Width = 77
          Height = 21
          DataField = 'CEP_CEP'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 239
          Top = 136
          Width = 30
          Height = 21
          DataField = 'CEP_UF'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 12
          Top = 182
          Width = 500
          Height = 21
          DataField = 'CEP_RUA'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 97
          Top = 136
          Width = 136
          Height = 21
          DataField = 'CEP_CIDADE'
          DataSource = dsCadastro
          TabOrder = 4
        end
      end
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
