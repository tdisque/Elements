object Elements: TElements
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Elements'
  ClientHeight = 599
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Title: TLabel
    Left = 64
    Top = 24
    Width = 433
    Height = 13
    Alignment = taCenter
    Caption = 'Element Combination Possibilities'
  end
  object Possibilities: TLabel
    AlignWithMargins = True
    Left = 376
    Top = 88
    Width = 121
    Height = 13
    Alignment = taCenter
    Caption = 'Possibilities'
  end
  object FirstElement: TButton
    Left = 64
    Top = 83
    Width = 121
    Height = 25
    Caption = 'First Element'
    TabOrder = 0
  end
  object SecondElement: TButton
    Left = 216
    Top = 83
    Width = 121
    Height = 25
    Caption = 'Second Element'
    TabOrder = 1
  end
  object Element1: TListBox
    Left = 64
    Top = 128
    Width = 121
    Height = 241
    ItemHeight = 13
    TabOrder = 2
  end
  object Element2: TListBox
    Left = 216
    Top = 128
    Width = 121
    Height = 241
    ItemHeight = 13
    TabOrder = 3
  end
  object Results: TListBox
    Left = 376
    Top = 128
    Width = 121
    Height = 241
    ItemHeight = 13
    TabOrder = 4
  end
end
