object dmEntrada: TdmEntrada
  OldCreateOrder = False
  Height = 462
  Width = 625
  object cdsEntrada: TClientDataSet
    Aggregates = <>
    FileName = 'cdsEntrada'
    Params = <>
    Left = 136
    Top = 104
    object cdsEntradaIdEntrada: TIntegerField
      FieldName = 'IdEntrada'
    end
    object cdsEntradaPlaca: TStringField
      FieldName = 'Placa'
      Size = 8
    end
    object cdsEntradaTipoVeiculo: TStringField
      FieldName = 'TipoVeiculo'
      Size = 6
    end
    object cdsEntradaMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object cdsEntradaModelo: TStringField
      FieldName = 'Modelo'
      Size = 30
    end
    object cdsEntradaData: TDateField
      FieldName = 'Data'
    end
    object cdsEntradaHora: TTimeField
      FieldName = 'Hora'
    end
  end
  object dsEntrada: TDataSource
    DataSet = cdsEntrada
    Left = 208
    Top = 104
  end
end
