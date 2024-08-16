object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 447
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 192
    Top = 176
    Width = 64
    Height = 15
    Caption = 'Ng'#432#7901'i d'#249'ng'
  end
  object Label2: TLabel
    Left = 192
    Top = 232
    Width = 50
    Height = 15
    Caption = 'M'#7853't kh'#7849'u'
  end
  object UsernameEdit: TEdit
    Left = 288
    Top = 173
    Width = 225
    Height = 23
    Cursor = crArrow
    TabOrder = 0
  end
  object PasswordEdit: TEdit
    Left = 288
    Top = 229
    Width = 225
    Height = 23
    PasswordChar = '*'
    TabOrder = 1
  end
  object BtnCancel: TBitBtn
    Left = 216
    Top = 312
    Width = 105
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object BtnLogin: TBitBtn
    Left = 376
    Top = 312
    Width = 97
    Height = 33
    Caption = 'Login'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BtnLoginClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\huyle\Documents\Tai lieu\ThucTap\CAFE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=IB')
    Connected = True
    Left = 264
    Top = 360
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 320
    Top = 360
  end
end
