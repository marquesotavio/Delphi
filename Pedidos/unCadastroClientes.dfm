inherited frmCadastroClientes: TfrmCadastroClientes
  Align = alClient
  Caption = 'Cadastro Clientes'
  ExplicitTop = -90
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
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
  end
  inherited dsCadastro: TDataSource
    DataSet = dmClientes.cdsClientes
  end
end