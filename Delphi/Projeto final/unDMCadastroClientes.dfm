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
    object cdsCadastroClientesTipoVeiculo: TStringField
      FieldName = 'TipoVeiculo'
      Size = 5
    end
    object cdsCadastroClientesMarca: TStringField
      FieldName = 'Marca'
    end
    object cdsCadastroClientesModelo: TStringField
      FieldName = 'Modelo'
      Size = 30
    end
    object cdsCadastroClientesNomeCli: TStringField
      FieldName = 'NomeCli'
      Size = 50
    end
    object cdsCadastroClientesTiipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 10
    end
    object cdsCadastroClientesNumDoc: TStringField
      FieldName = 'NumDoc'
      Size = 14
    end
    object cdsCadastroClientesMensalista: TStringField
      FieldName = 'Mensalista'
      Size = 3
    end
    object cdsCadastroClientesDataPag: TDateField
      FieldName = 'DataPag'
    end
  end
  object dsCadastroClientes: TDataSource
    DataSet = cdsCadastroClientes
    Left = 176
    Top = 56
  end
end
