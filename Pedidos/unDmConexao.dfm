object dmConexao: TdmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 383
  Width = 542
  object FDConnection: TFDConnection
    Params.Strings = (
      'DriverID=FBDriverLink')
    Left = 40
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 24
  end
  object FBDriverLink: TFDPhysFBDriverLink
    DriverID = 'FBDriverLink'
    Left = 248
    Top = 24
  end
  object MySQLLink: TFDPhysMySQLDriverLink
    Left = 248
    Top = 104
  end
end
