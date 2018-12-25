object frmTexto: TfrmTexto
  Left = 0
  Top = 0
  Caption = 'Texto'
  ClientHeight = 343
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbTexto: TLabel
    Left = 24
    Top = 10
    Width = 32
    Height = 13
    Caption = 'Texto:'
  end
  object lbDe: TLabel
    Left = 24
    Top = 61
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object lbPara: TLabel
    Left = 24
    Top = 111
    Width = 26
    Height = 13
    Caption = 'Para:'
  end
  object lbResultado: TLabel
    Left = 24
    Top = 154
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object txtTexto: TEdit
    Left = 24
    Top = 31
    Width = 473
    Height = 21
    TabOrder = 0
    Text = 'o rato roeu a roupa roeu novamente'
  end
  object memoResultado: TMemo
    Left = 24
    Top = 173
    Width = 473
    Height = 121
    TabOrder = 1
  end
  object btnProcessar: TButton
    Left = 422
    Top = 300
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = btnProcessarClick
  end
  object txtDe: TEdit
    Left = 24
    Top = 84
    Width = 473
    Height = 21
    TabOrder = 3
    Text = 'roeu'
  end
  object txtPara: TEdit
    Left = 24
    Top = 129
    Width = 473
    Height = 21
    TabOrder = 4
    Text = 'teste'
  end
end
