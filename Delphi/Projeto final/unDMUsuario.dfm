object dmUsuario: TdmUsuario
  OldCreateOrder = False
  Height = 464
  Width = 728
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 40
    object cdsUsuarioCodUsu: TIntegerField
      DisplayLabel = 'C'#243'digo Usu'#225'rio'
      FieldName = 'CodUsu'
    end
    object cdsUsuarioUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object cdsUsuarioNomeUsu: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NomeUsu'
      Size = 50
    end
    object cdsUsuarioCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsUsuarioFunção: TStringField
      FieldName = 'Fun'#231#227'o'
      Size = 30
    end
    object cdsUsuarioSenhaUsu: TStringField
      FieldName = 'SenhaUsu'
      Visible = False
      Size = 8
    end
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 120
    Top = 40
  end
end
