inherited frmUsuario: TfrmUsuario
  Caption = 'Cadastro Usuarios'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsGrid: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = dmUsuario.dsUsuario
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel
        Left = 7
        Top = 30
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 72
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 112
        Width = 30
        Height = 13
        Caption = 'Senha'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 398
        Top = 72
        Width = 35
        Height = 13
        Caption = 'Fun'#231#227'o'
        FocusControl = DBEdit4
      end
      object label5: TLabel
        Left = 6
        Top = 5
        Width = 142
        Height = 19
        Caption = 'Dados do Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 61
        Top = 30
        Width = 36
        Height = 13
        Caption = 'Usuario'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 234
        Top = 72
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 7
        Top = 47
        Width = 42
        Height = 21
        DataField = 'CodUsu'
        DataSource = dmUsuario.dsUsuario
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 88
        Width = 218
        Height = 21
        DataField = 'NomeUsu'
        DataSource = dmUsuario.dsUsuario
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 128
        Width = 116
        Height = 21
        DataField = 'SenhaUsu'
        DataSource = dmUsuario.dsUsuario
        PasswordChar = #1
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 398
        Top = 88
        Width = 136
        Height = 21
        DataField = 'Fun'#231#227'o'
        DataSource = dmUsuario.dsUsuario
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 61
        Top = 47
        Width = 118
        Height = 21
        DataField = 'Usuario'
        DataSource = dmUsuario.dsUsuario
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 234
        Top = 88
        Width = 156
        Height = 21
        DataField = 'CPF'
        DataSource = dmUsuario.dsUsuario
        TabOrder = 3
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 640
  end
end
