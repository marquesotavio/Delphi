inherited frmCadastroClientes: TfrmCadastroClientes
  Caption = 'Cadastro Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = tsCadastro
    inherited tsGrid: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = dmCadastroClientes.dsCadastroClientes
        Columns = <
          item
            Expanded = False
            FieldName = 'CodCli'
            Title.Caption = 'C'#243'digo Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCli'
            Title.Caption = 'Nome Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Placa'
            Visible = True
          end>
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel
        Left = 9
        Top = 8
        Width = 30
        Height = 13
        Caption = 'CodCli'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 9
        Top = 51
        Width = 25
        Height = 13
        Caption = 'Placa'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 9
        Top = 91
        Width = 38
        Height = 13
        Caption = 'NomeCli'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 9
        Top = 27
        Width = 134
        Height = 21
        DataField = 'CodCli'
        DataSource = dmCadastroClientes.dsCadastroClientes
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 9
        Top = 67
        Width = 134
        Height = 21
        DataField = 'Placa'
        DataSource = dmCadastroClientes.dsCadastroClientes
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 9
        Top = 107
        Width = 654
        Height = 21
        DataField = 'NomeCli'
        DataSource = dmCadastroClientes.dsCadastroClientes
        TabOrder = 2
      end
    end
  end
end
