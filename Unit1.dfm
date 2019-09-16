object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 244
  ClientWidth = 310
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Um: TSpeedButton
    Left = 8
    Top = 51
    Width = 49
    Height = 41
    Caption = '1'
    OnClick = NumClick
  end
  object Dois: TSpeedButton
    Left = 72
    Top = 51
    Width = 49
    Height = 41
    Caption = '2'
    OnClick = NumClick
  end
  object Três: TSpeedButton
    Left = 136
    Top = 51
    Width = 49
    Height = 41
    Caption = '3'
    OnClick = NumClick
  end
  object Mais: TSpeedButton
    Tag = 1
    Left = 198
    Top = 51
    Width = 49
    Height = 41
    Caption = '+'
    OnClick = OperadoresClick
  end
  object Quatro: TSpeedButton
    Left = 8
    Top = 98
    Width = 49
    Height = 41
    Caption = '4'
    OnClick = NumClick
  end
  object Cinco: TSpeedButton
    Left = 72
    Top = 98
    Width = 49
    Height = 41
    Caption = '5'
    OnClick = NumClick
  end
  object Seis: TSpeedButton
    Left = 136
    Top = 98
    Width = 49
    Height = 41
    Caption = '6'
    OnClick = NumClick
  end
  object Menos: TSpeedButton
    Tag = 2
    Left = 199
    Top = 98
    Width = 49
    Height = 41
    Caption = '-'
    OnClick = OperadoresClick
  end
  object Virgula: TSpeedButton
    Left = 254
    Top = 98
    Width = 49
    Height = 41
    Caption = ','
    OnClick = VirgulaClick
  end
  object Sete: TSpeedButton
    Left = 8
    Top = 145
    Width = 49
    Height = 41
    Caption = '7'
    OnClick = NumClick
  end
  object Oito: TSpeedButton
    Left = 72
    Top = 145
    Width = 49
    Height = 41
    Caption = '8'
    OnClick = NumClick
  end
  object Nove: TSpeedButton
    Left = 136
    Top = 145
    Width = 49
    Height = 41
    Caption = '9'
    OnClick = NumClick
  end
  object Dividir: TSpeedButton
    Tag = 4
    Left = 199
    Top = 145
    Width = 49
    Height = 41
    Caption = '/'
    OnClick = OperadoresClick
  end
  object Igual: TSpeedButton
    Left = 254
    Top = 145
    Width = 49
    Height = 88
    Caption = '='
    OnClick = IgualClick
  end
  object Multiplicar: TSpeedButton
    Tag = 3
    Left = 253
    Top = 51
    Width = 49
    Height = 41
    Caption = '*'
    OnClick = OperadoresClick
  end
  object Zero: TSpeedButton
    Left = 8
    Top = 192
    Width = 177
    Height = 41
    Caption = '0'
    OnClick = NumClick
  end
  object Limpar: TSpeedButton
    Left = 199
    Top = 192
    Width = 49
    Height = 41
    Caption = 'C'
    OnClick = LimparClick
  end
  object Visor: TEdit
    Left = 8
    Top = 8
    Width = 295
    Height = 37
    Alignment = taRightJustify
    AutoSize = False
    Color = clHighlightText
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
end
