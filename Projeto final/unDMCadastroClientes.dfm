object dmCadastroClientes: TdmCadastroClientes
  OldCreateOrder = False
  Height = 427
  Width = 746
  object cdsCadastroClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 56
    object cdsCadastroClientesCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object cdsCadastroClientesPlaca: TStringField
      FieldName = 'Placa'
      Size = 10
    end
    object cdsCadastroClientesNomeCli: TStringField
      FieldName = 'NomeCli'
      Size = 50
    end
  end
  object dsCadastroClientes: TDataSource
    DataSet = cdsCadastroClientes
    Left = 176
    Top = 56
  end
end
