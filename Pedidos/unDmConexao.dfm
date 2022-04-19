object dmConexao: TdmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 383
  Width = 542
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\projetos-git\Delphi\Pedidos\DbCurso.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=ISO8859_2'
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
    Left = 328
    Top = 24
  end
end
