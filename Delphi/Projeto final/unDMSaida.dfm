object dmSaida: TdmSaida
  OldCreateOrder = False
  Height = 382
  Width = 715
  object cdsSaida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 72
    object cdsSaidaPlaca: TStringField
      FieldName = 'Placa'
      Size = 7
    end
  end
  object dsSaida: TDataSource
    DataSet = cdsSaida
    Left = 184
    Top = 80
  end
end
