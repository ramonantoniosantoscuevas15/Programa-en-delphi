object modulo: Tmodulo
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=libreria'
      'Server=.'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    Left = 304
    Top = 312
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 672
    Top = 360
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 504
    Top = 192
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 512
    Top = 488
  end
end
