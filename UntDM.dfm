object Connection: TConnection
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 375
  Width = 564
  object sqlConnection: TUniConnection
    ProviderName = 'postgreSQL'
    Database = 'ApartmanYonet'
    Username = 'ozlem'
    Server = '185.122.39.183'
    Connected = True
    Left = 32
    Top = 24
    EncryptedPassword = 'CEFFCDFFCCFFCBFFCAFFC9FF'
  end
  object cxLocalizer1: TcxLocalizer
    Left = 24
    Top = 80
  end
  object QKod: TUniQuery
    Connection = sqlConnection
    Left = 24
    Top = 136
  end
  object QGenel: TUniQuery
    Connection = sqlConnection
    Left = 24
    Top = 192
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 112
    Top = 24
  end
  object dsLogin: TUniDataSource
    DataSet = QLogin
    Left = 104
    Top = 72
  end
  object QLogin: TUniQuery
    Connection = sqlConnection
    SQL.Strings = (
      'SELECT * FROM S_KT')
    Left = 104
    Top = 128
  end
  object QTemp1: TUniQuery
    Connection = sqlConnection
    Left = 104
    Top = 192
  end
end
