object Dados: TDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 178
  Width = 340
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Jackson\Desktop\Softplan2\Executavel\Database\' +
        'Banco.db'
      'DriverID=SQLite'
      'LockingMode=Normal')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from LOGDOWNLOAD')
    Left = 144
    Top = 32
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 240
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 88
  end
end
