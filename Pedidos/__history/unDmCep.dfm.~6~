object dmCep: TdmCep
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 376
  Width = 709
  object qrCep: TFDQuery
    Connection = dmConexao.FDConnection
    Left = 48
    Top = 56
  end
  object dspCep: TDataSetProvider
    DataSet = qrCep
    Left = 120
    Top = 56
  end
  object cdsCep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCep'
    Left = 184
    Top = 56
  end
end
