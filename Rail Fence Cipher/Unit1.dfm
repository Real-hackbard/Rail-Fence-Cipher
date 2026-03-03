object Form1: TForm1
  Left = 201
  Top = 261
  Caption = 'Rail Fence Cipher'
  ClientHeight = 496
  ClientWidth = 913
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 16
  object Label1: TLabel
    Left = 17
    Top = 53
    Width = 40
    Height = 16
    Caption = 'Text :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 463
    Top = 55
    Width = 79
    Height = 16
    Caption = 'Ciphertext :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 461
    Width = 112
    Height = 16
    Caption = 'Number of lines :'
  end
  object Label4: TLabel
    Left = 24
    Top = 8
    Width = 226
    Height = 39
    Caption = 'Rail Fence Cipher'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 77
    Width = 441
    Height = 360
    TabStop = False
    Lines.Strings = (
      'In the rail fence cipher, the plaintext is written downwards '
      'diagonally on successive "rails" of an imaginary fence, then '
      'moving up when the bottom rail is reached, down again when the '
      
        'top rail is reached, and so on until the whole plaintext is writ' +
        'ten '
      'out. The ciphertext is then read off in rows.')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 455
    Top = 77
    Width = 449
    Height = 360
    TabStop = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 142
    Top = 457
    Width = 49
    Height = 24
    TabStop = False
    TabOrder = 2
    Text = '5'
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 377
    Top = 457
    Width = 72
    Height = 25
    Caption = 'Encode'
    TabOrder = 3
    TabStop = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 832
    Top = 457
    Width = 72
    Height = 25
    Caption = 'Decode'
    TabOrder = 4
    TabStop = False
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 463
    Top = 461
    Width = 186
    Height = 17
    TabStop = False
    Caption = 'only numbers and letters'
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 215
    Top = 457
    Width = 90
    Height = 24
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 6
    TabStop = False
    Text = 'Unicode'
    Items.Strings = (
      'Unicode'
      'ASCii')
  end
  object ComboBox2: TComboBox
    Left = 711
    Top = 457
    Width = 90
    Height = 24
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 7
    TabStop = False
    Text = 'Unicode'
    Items.Strings = (
      'Unicode'
      'ASCii')
  end
end
