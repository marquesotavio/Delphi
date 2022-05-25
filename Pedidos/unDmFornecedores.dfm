object dmFornecedores: TdmFornecedores
  OldCreateOrder = False
  Height = 497
  Width = 660
  object dspFornecedores: TDataSetProvider
    DataSet = qrFornecedores
    Left = 168
    Top = 32
  end
  object cdsFornecedores: TClientDataSet
    PersistDataPacket.Data = {
      B90000009619E0BD010000001800000006000000000003000000B90006464F52
      5F4944040001000000000008464F525F4E4F4D45010049000000010005574944
      544802000200140007464F525F43504601004900000001000557494454480200
      020014000A464F525F4345505F494404000100000000000C464F525F54454C45
      464F4E4501004900000001000557494454480200020014000E464F525F4F4253
      4552564143414F01004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    OnReconcileError = cdsFornecedoresReconcileError
    Left = 272
    Top = 32
    object cdsFornecedoresFOR_ID: TIntegerField
      FieldName = 'FOR_ID'
    end
    object cdsFornecedoresFOR_NOME: TStringField
      FieldName = 'FOR_NOME'
    end
    object cdsFornecedoresFOR_CPF: TStringField
      FieldName = 'FOR_CPF'
    end
    object cdsFornecedoresFOR_CEP_ID: TIntegerField
      FieldName = 'FOR_CEP_ID'
    end
    object cdsFornecedoresFOR_TELEFONE: TStringField
      FieldName = 'FOR_TELEFONE'
    end
    object cdsFornecedoresFOR_OBSERVACAO: TStringField
      FieldName = 'FOR_OBSERVACAO'
    end
  end
  object qrFornecedores: TFDQuery
    Connection = dmConexao.FDConnection
    Left = 64
    Top = 32
  end
  object qrAux: TFDQuery
    Connection = dmConexao.FDConnection
    Left = 64
    Top = 120
  end
end
