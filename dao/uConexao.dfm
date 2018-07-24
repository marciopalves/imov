object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FConn: TFDConnection
    Params.Strings = (
      'Database=D:\projetos\imov\bd\imov.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_2'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
end
