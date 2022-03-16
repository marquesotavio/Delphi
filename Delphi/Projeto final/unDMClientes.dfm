object dmClientes: TdmClientes
  OldCreateOrder = False
  Height = 478
  Width = 679
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 112
    object cdsClientesCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object cdsClientesPlaca: TStringField
      FieldName = 'Placa'
      Size = 7
    end
    object cdsClientesTipoVeiculo: TStringField
      FieldName = 'TipoVeiculo'
      Size = 6
    end
    object cdsClientesMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object cdsClientesModelo: TStringField
      FieldName = 'Modelo'
      Size = 30
    end
    object cdsClientesNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object cdsClientesTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 3
    end
    object cdsClientesNumDoc: TStringField
      FieldName = 'NumDoc'
      Size = 15
    end
    object cdsClientesMensalista: TStringField
      FieldName = 'Mensalista'
      Size = 3
    end
    object cdsClientesDataPag: TDateField
      FieldName = 'DataPag'
    end
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 248
    Top = 120
  end
end
