inherited frmEntrada: TfrmEntrada
  Caption = 'Entrada'
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar2: TToolBar [0]
    Left = 0
    Top = 55
    Width = 727
    Height = 19
    Caption = 'ToolBar2'
    TabOrder = 5
  end
  inherited PageControl1: TPageControl
    Top = 74
    Height = 368
    ActivePage = tsCadastro
    ExplicitTop = 104
    ExplicitHeight = 338
    inherited tsGrid: TTabSheet
      ExplicitHeight = 340
      inherited DBGrid1: TDBGrid
        Height = 340
        DataSource = dmEntrada.dsEntrada
        Columns = <
          item
            Expanded = False
            FieldName = 'Placa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoVeiculo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Marca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modelo'
            Visible = True
          end>
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitHeight = 340
    end
  end
  object btnPesquisar: TButton [4]
    Left = 0
    Top = 53
    Width = 75
    Height = 21
    Anchors = [akRight, akBottom]
    BiDiMode = bdRightToLeft
    Caption = 'Pesquisar'
    ParentBiDiMode = False
    TabOrder = 3
  end
  object Edit1: TEdit [5]
    Left = 76
    Top = 54
    Width = 649
    Height = 19
    TabOrder = 4
  end
end
