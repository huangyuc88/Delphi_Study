object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 421
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 369
    Height = 161
    Caption = 'GroupBox1'
    TabOrder = 0
    object Button1: TButton
      Left = 203
      Top = 24
      Width = 150
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 203
      Top = 72
      Width = 150
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 203
      Top = 120
      Width = 150
      Height = 25
      Caption = 'Button3'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 185
      Height = 144
      Align = alLeft
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssBoth
      TabOrder = 3
      ExplicitLeft = 0
      ExplicitTop = -6
      ExplicitHeight = 232
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 175
    Width = 369
    Height = 161
    Caption = 'GroupBox1'
    TabOrder = 1
    object Button4: TButton
      Left = 203
      Top = 24
      Width = 150
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 203
      Top = 72
      Width = 150
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 203
      Top = 120
      Width = 150
      Height = 25
      Caption = 'Button3'
      TabOrder = 2
      OnClick = Button6Click
    end
    object Memo2: TMemo
      Left = 2
      Top = 15
      Width = 185
      Height = 144
      Align = alLeft
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssBoth
      TabOrder = 3
    end
  end
end
