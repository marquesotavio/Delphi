object dmClientes: TdmClientes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 381
  Width = 632
  object qrClientes: TFDQuery
    Active = True
    Connection = dmConexao.FDConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTE;')
    Left = 56
    Top = 24
  end
  object dspClientes: TDataSetProvider
    DataSet = qrClientes
    Left = 128
    Top = 24
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 200
    Top = 24
    object cdsClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 80
    end
    object cdsClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 14
    end
    object cdsClientesCLI_CEP_ID: TIntegerField
      FieldName = 'CLI_CEP_ID'
    end
    object cdsClientesCLI_TELEFONE: TStringField
      FieldName = 'CLI_TELEFONE'
      Size = 14
    end
    object cdsClientesCLI_OBSERVACAO: TMemoField
      FieldName = 'CLI_OBSERVACAO'
      BlobType = ftMemo
    end
  end
end
