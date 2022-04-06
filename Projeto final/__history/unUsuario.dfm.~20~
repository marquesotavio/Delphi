inherited frmUsuario: TfrmUsuario
  Caption = 'Cadastro Usuarios'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsGrid: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = dmUsuario.dsUsuario
      end
    end
    inherited tsCadastro: TTabSheet
      object DBEdit1: TDBEdit
        Left = 3
        Top = 40
        Width = 121
        Height = 21
        DataField = 'CodUsu'
        DataSource = dmUsuario.dsUsuario
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 166
        Top = 40
        Width = 121
        Height = 21
        DataField = 'NomeUsu'
        DataSource = dmUsuario.dsUsuario
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 337
        Top = 40
        Width = 121
        Height = 21
        DataField = 'SenhaUsu'
        DataSource = dmUsuario.dsUsuario
        TabOrder = 2
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 496
    Top = 8
  end
end
