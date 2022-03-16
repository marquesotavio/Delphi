inherited frmEntrada: TfrmEntrada
  Caption = 'Entrada'
  ClientHeight = 463
  ExplicitTop = -53
  ExplicitHeight = 502
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
  inherited StatusBar: TStatusBar
    Top = 444
    Panels = <
      item
        Text = 'Mensagem:'
        Width = 70
      end
      item
        Width = 50
      end>
  end
  inherited PageControl1: TPageControl
    Top = 74
    Height = 370
    ExplicitTop = 74
    ExplicitHeight = 368
    inherited tsGrid: TTabSheet
      ExplicitHeight = 342
      inherited DBGrid1: TDBGrid
        Height = 342
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
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modelo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hora'
            Visible = True
          end>
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitHeight = 342
      object Label7: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 5
        Width = 144
        Height = 19
        Alignment = taCenter
        Caption = 'Dados da Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        OnClick = Label7Click
      end
      object Label1: TLabel
        Left = 3
        Top = 32
        Width = 48
        Height = 13
        Caption = 'IdEntrada'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 3
        Top = 80
        Width = 25
        Height = 13
        Caption = 'Placa'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 66
        Top = 80
        Width = 53
        Height = 13
        Caption = 'TipoVeiculo'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 154
        Top = 80
        Width = 29
        Height = 13
        Caption = 'Marca'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 233
        Top = 80
        Width = 34
        Height = 13
        Caption = 'Modelo'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 3
        Top = 128
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 143
        Top = 128
        Width = 23
        Height = 13
        Caption = 'Hora'
        FocusControl = DBEdit7
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 48
        Width = 42
        Height = 21
        DataField = 'IdEntrada'
        DataSource = dmEntrada.dsEntrada
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 3
        Top = 96
        Width = 57
        Height = 21
        DataField = 'Placa'
        DataSource = dmEntrada.dsEntrada
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 66
        Top = 96
        Width = 82
        Height = 21
        DataField = 'TipoVeiculo'
        DataSource = dmEntrada.dsEntrada
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 154
        Top = 96
        Width = 72
        Height = 21
        DataField = 'Marca'
        DataSource = dmEntrada.dsEntrada
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 232
        Top = 96
        Width = 78
        Height = 21
        DataField = 'Modelo'
        DataSource = dmEntrada.dsEntrada
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 3
        Top = 144
        Width = 134
        Height = 21
        DataField = 'Data'
        DataSource = dmEntrada.dsEntrada
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 143
        Top = 144
        Width = 134
        Height = 21
        DataField = 'Hora'
        DataSource = dmEntrada.dsEntrada
        TabOrder = 6
      end
    end
  end
  object btnPesquisar: TButton [4]
    Left = 0
    Top = 53
    Width = 75
    Height = 23
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
    Height = 21
    TabOrder = 4
  end
end
