object Libreria: TLibreria
  Left = 0
  Top = 0
  Caption = 'Lista de libros'
  ClientHeight = 631
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 23
  object Label1: TLabel
    Left = 119
    Top = 8
    Width = 59
    Height = 23
    Caption = 'Buscar: '
  end
  object Panel1: TPanel
    Left = 0
    Top = 566
    Width = 966
    Height = 65
    Align = alBottom
    TabOrder = 0
    object btninsertar: TButton
      Left = 64
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Insertar'
      TabOrder = 0
      OnClick = btninsertarClick
    end
    object btnactualizar: TButton
      Left = 232
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 1
      OnClick = btnactualizarClick
    end
    object btneliminar: TButton
      Left = 416
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Eliminar'
      TabOrder = 2
      OnClick = btneliminarClick
    end
    object btncerrar: TButton
      Left = 616
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 3
      OnClick = btncerrarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 945
    Height = 496
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtbuscar: TEdit
    Left = 184
    Top = 8
    Width = 313
    Height = 31
    TabOrder = 2
  end
  object btnbuscar: TButton
    Left = 520
    Top = 11
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = btnbuscarClick
  end
  object Query: TFDQuery
    Connection = modulo.FDConnection1
    Left = 413
    Top = 234
  end
  object DataSource1: TDataSource
    DataSet = Query
    Left = 568
    Top = 172
  end
end
