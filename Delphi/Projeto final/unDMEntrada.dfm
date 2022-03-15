object dmEntrada: TdmEntrada
  OldCreateOrder = False
  Height = 510
  Width = 715
  object cdsEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 64
    object cdsEntradaPlaca: TStringField
      FieldName = 'Placa'
      Size = 7
    end
    object cdsEntradaTipoVeiculo: TStringField
      FieldName = 'TipoVeiculo'
      Size = 5
    end
    object cdsEntradaMarca: TStringField
      FieldName = 'Marca'
    end
    object cdsEntradaModelo: TStringField
      FieldName = 'Modelo'
      Size = 30
    end
  end
  object dsEntrada: TDataSource
    DataSet = cdsEntrada
    Left = 168
    Top = 64
  end
end
