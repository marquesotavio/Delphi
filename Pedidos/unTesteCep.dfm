object frmTesteCep: TfrmTesteCep
  Left = 0
  Top = 0
  Align = alCustom
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'TESTE CEP'
  ClientHeight = 462
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label2: TLabel
    Left = 522
    Top = 55
    Width = 59
    Height = 13
    Caption = 'Logradouro:'
  end
  object Label3: TLabel
    Left = 522
    Top = 82
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object Label4: TLabel
    Left = 522
    Top = 109
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Label5: TLabel
    Left = 691
    Top = 109
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object Label6: TLabel
    Left = 522
    Top = 136
    Width = 27
    Height = 13
    Caption = 'IBGE:'
  end
  object mmResultado: TMemo
    Left = 8
    Top = 50
    Width = 508
    Height = 255
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object btPesquisaCep: TButton
    Left = 118
    Top = 21
    Width = 82
    Height = 25
    Caption = 'Pesquisar CEP'
    TabOrder = 1
    OnClick = btPesquisaCepClick
  end
  object medCep: TMaskEdit
    Left = 8
    Top = 23
    Width = 102
    Height = 21
    EditMask = '00000\-000;1;_'
    MaxLength = 9
    TabOrder = 0
    Text = '     -   '
    OnKeyPress = medCepKeyPress
  end
  object edtRua: TEdit
    Left = 585
    Top = 52
    Width = 274
    Height = 21
    TabOrder = 3
  end
  object edtBairro: TEdit
    Left = 558
    Top = 79
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtCidade: TEdit
    Left = 558
    Top = 106
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtUF: TEdit
    Left = 710
    Top = 106
    Width = 26
    Height = 21
    TabOrder = 6
  end
  object edtIbge: TEdit
    Left = 558
    Top = 133
    Width = 74
    Height = 21
    TabOrder = 7
  end
end
