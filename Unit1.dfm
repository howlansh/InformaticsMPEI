object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 522
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 321
    Top = 104
    Width = 138
    Height = 13
    Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1090#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082#1072
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 219
    Height = 13
    Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1099' '#1076#1080#1072#1075#1086#1085#1072#1083#1077#1081' '#1087#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082#1086#1074
  end
  object Label3: TLabel
    Left = 544
    Top = 37
    Width = 93
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1095#1077#1082
  end
  object Label4: TLabel
    Left = 32
    Top = 352
    Width = 36
    Height = 13
    Caption = #1054#1090#1074#1077#1090':'
  end
  object Label5: TLabel
    Left = 77
    Top = 352
    Width = 3
    Height = 13
  end
  object Label6: TLabel
    Left = 77
    Top = 387
    Width = 3
    Height = 13
  end
  object Label7: TLabel
    Left = 77
    Top = 430
    Width = 3
    Height = 13
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 136
    Width = 233
    Height = 137
    ColCount = 3
    RowCount = 3
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object StringGrid2: TStringGrid
    Left = 321
    Top = 136
    Width = 225
    Height = 137
    ColCount = 3
    RowCount = 4
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 680
    Top = 56
    Width = 75
    Height = 25
    Caption = #1042#1074#1086#1076' n'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 544
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 471
    Top = 304
    Width = 75
    Height = 25
    Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1077
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 471
    Top = 352
    Width = 75
    Height = 25
    Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
    TabOrder = 5
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N3Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 48
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    Left = 88
    Top = 16
  end
end
