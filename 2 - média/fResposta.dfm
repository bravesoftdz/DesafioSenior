object frmResposta: TfrmResposta
  Left = 0
  Top = 0
  Caption = 'Resposta'
  ClientHeight = 351
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbTroco: TLabel
    Left = 24
    Top = 11
    Width = 31
    Height = 13
    Caption = 'Troco:'
  end
  object memoResutado: TMemo
    Left = 24
    Top = 48
    Width = 359
    Height = 256
    TabOrder = 0
  end
  object btnProcessar: TButton
    Left = 308
    Top = 310
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 1
    OnClick = btnProcessarClick
  end
  object txtTroco: TMaskEdit
    Left = 61
    Top = 8
    Width = 148
    Height = 21
    TabOrder = 2
    Text = ''
  end
end
