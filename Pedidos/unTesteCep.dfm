object frmTesteCep: TfrmTesteCep
  Left = 0
  Top = 0
  Caption = 'TESTE CEP'
  ClientHeight = 296
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 53
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object mmResultado: TMemo
    Left = 56
    Top = 101
    Width = 385
    Height = 182
    TabOrder = 2
  end
  object btPesquisaCep: TButton
    Left = 166
    Top = 70
    Width = 82
    Height = 25
    Caption = 'Pesquisar CEP'
    TabOrder = 1
    OnClick = btPesquisaCepClick
  end
  object medCep: TMaskEdit
    Left = 56
    Top = 72
    Width = 102
    Height = 21
    EditMask = '00000\-000;1;_'
    MaxLength = 9
    TabOrder = 0
    Text = '     -   '
    OnKeyPress = medCepKeyPress
  end
end
