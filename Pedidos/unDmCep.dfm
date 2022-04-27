object dmCep: TdmCep
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 376
  Width = 709
  object qrCep: TFDQuery
    Connection = dmConexao.FDConnection
    SQL.Strings = (
      'select * from cep order by CEP_ID;')
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
    object cdsCepCEP_ID: TIntegerField
      FieldName = 'CEP_ID'
      Required = True
    end
    object cdsCepCEP_CEP: TStringField
      FieldName = 'CEP_CEP'
      Size = 10
    end
    object cdsCepCEP_RUA: TStringField
      FieldName = 'CEP_RUA'
      Size = 80
    end
    object cdsCepCEP_CIDADE: TStringField
      FieldName = 'CEP_CIDADE'
      Size = 30
    end
    object cdsCepCEP_UF: TStringField
      FieldName = 'CEP_UF'
      FixedChar = True
      Size = 2
    end
  end
end
