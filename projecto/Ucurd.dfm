object Crud: TCrud
  Left = 0
  Top = 0
  ClientHeight = 335
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 23
  object lbid: TLabel
    Left = 16
    Top = 16
    Width = 19
    Height = 23
    Caption = 'Id:'
  end
  object lbtitulo: TLabel
    Left = 8
    Top = 72
    Width = 52
    Height = 23
    Caption = 'Titulo: '
  end
  object lbautor: TLabel
    Left = 8
    Top = 128
    Width = 47
    Height = 23
    Caption = 'Autor:'
  end
  object lbprecio: TLabel
    Left = 8
    Top = 184
    Width = 51
    Height = 23
    Caption = 'Precio:'
  end
  object edtid: TEdit
    Left = 64
    Top = 13
    Width = 121
    Height = 31
    Color = clScrollBar
    ReadOnly = True
    TabOrder = 0
  end
  object edttitulo: TEdit
    Left = 66
    Top = 69
    Width = 463
    Height = 31
    TabOrder = 1
  end
  object edtautor: TEdit
    Left = 66
    Top = 125
    Width = 463
    Height = 31
    TabOrder = 2
  end
  object edtprecio: TEdit
    Left = 65
    Top = 181
    Width = 144
    Height = 31
    TabOrder = 3
  end
  object btninsertar: TButton
    Left = 16
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Insertar'
    TabOrder = 4
    OnClick = btninsertarClick
  end
  object btnactualizar: TButton
    Left = 168
    Top = 296
    Width = 91
    Height = 25
    Caption = 'Actualizar'
    TabOrder = 5
    OnClick = btnactualizarClick
  end
  object btncerrar: TButton
    Left = 422
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 6
    OnClick = btncerrarClick
  end
  object btneliminar: TButton
    Left = 304
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 7
    OnClick = btneliminarClick
  end
end
