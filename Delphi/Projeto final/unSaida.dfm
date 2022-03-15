inherited frmSaida: TfrmSaida
  Caption = 'Saida'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsGrid: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = dmSaida.dsSaida
      end
    end
    inherited tsCadastro: TTabSheet
      object DBEdit1: TDBEdit
        Left = 30
        Top = 24
        Width = 121
        Height = 21
        DataField = 'Placa'
        DataSource = dmSaida.dsSaida
        TabOrder = 0
      end
    end
  end
end
