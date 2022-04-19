object dmFornecedores: TdmFornecedores
  OldCreateOrder = False
  Height = 324
  Width = 521
  object dspFornecedores: TDataSetProvider
    DataSet = qrFornecedores
    Left = 168
    Top = 32
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 32
  end
  object qrFornecedores: TFDQuery
    Left = 64
    Top = 32
  end
end
