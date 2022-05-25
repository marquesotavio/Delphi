inherited frmFornecedores: TfrmFornecedores
  Align = alClient
  Caption = 'Cadastro de Fornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      inherited gridConsulta: TDBGrid
        Height = 304
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 304
        Width = 713
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Align = alBottom
        TabOrder = 1
      end
    end
    inherited TabSheet2: TTabSheet
      inherited ScrollBox1: TScrollBox
        ExplicitLeft = 3
        ExplicitTop = 16
        ExplicitWidth = 713
        ExplicitHeight = 329
        object Label1: TLabel
          Left = 18
          Top = 13
          Width = 108
          Height = 13
          Caption = 'C'#243'digo do fornecedor:'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 18
          Top = 40
          Width = 104
          Height = 13
          Caption = 'Nome do Fornecedor:'
          FocusControl = DBEdit2
          OnClick = Label2Click
        end
        object Label3: TLabel
          Left = 18
          Top = 67
          Width = 94
          Height = 13
          Caption = 'CPF do fornecedor:'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 222
          Top = 62
          Width = 46
          Height = 13
          Caption = 'Telefone:'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 18
          Top = 224
          Width = 95
          Height = 13
          Caption = 'FOR_OBSERVACAO'
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 18
          Top = 90
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label4: TLabel
          Left = 18
          Top = 109
          Width = 19
          Height = 13
          Caption = 'Rua'
        end
        object Label10: TLabel
          Left = 15
          Top = 157
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label7: TLabel
          Left = 153
          Top = 157
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label9: TLabel
          Left = 281
          Top = 157
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label11: TLabel
          Left = 314
          Top = 157
          Width = 23
          Height = 13
          Caption = 'IBGE'
        end
        object DBEdit1: TDBEdit
          Left = 132
          Top = 6
          Width = 134
          Height = 20
          DataField = 'FOR_ID'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 132
          Top = 32
          Width = 264
          Height = 21
          DataField = 'FOR_NOME'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 118
          Top = 59
          Width = 81
          Height = 21
          DataField = 'FOR_CPF'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 314
          Top = 59
          Width = 264
          Height = 21
          DataField = 'FOR_TELEFONE'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 18
          Top = 240
          Width = 264
          Height = 21
          DataField = 'FOR_OBSERVACAO'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object ed_BairroCliente: TEdit
          Left = 15
          Top = 170
          Width = 121
          Height = 21
          Color = clSilver
          TabOrder = 5
        end
        object ed_IbgeCliente: TEdit
          Left = 314
          Top = 170
          Width = 68
          Height = 21
          Color = clSilver
          TabOrder = 6
        end
        object Edit1: TEdit
          Left = 43
          Top = 86
          Width = 69
          Height = 21
          TabOrder = 7
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 18
          Top = 128
          Width = 121
          Height = 21
          TabOrder = 8
          Text = 'Edit2'
        end
      end
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmFornecedores.cdsFornecedores
  end
end
