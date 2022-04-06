object frmControlePedidos: TfrmControlePedidos
  Left = 0
  Top = 0
  Caption = 'Sistema de Controle de e Pedidos'
  ClientHeight = 435
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 869
    Height = 35
    ButtonHeight = 36
    ButtonWidth = 120
    Caption = 'ToolBar1'
    Images = ImageList1
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    ExplicitLeft = -2
    ExplicitTop = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = actCep
    end
    object ToolButton2: TToolButton
      Left = 120
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 128
      Top = 0
      Action = actClientes
    end
    object ToolButton4: TToolButton
      Left = 248
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 256
      Top = 0
      Action = actFornecedores
    end
    object ToolButton6: TToolButton
      Left = 376
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 384
      Top = 0
      Action = actPedidoCompra
    end
    object ToolButton8: TToolButton
      Left = 504
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 512
      Top = 0
      Action = actPedidoVenda
    end
    object ToolButton10: TToolButton
      Left = 632
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 640
      Top = 0
      Action = actSair
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 875
    Height = 8
    Align = alTop
    Color = clRed
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 40
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 104
    object Cadastro1: TMenuItem
      Caption = 'Cadastros'
      object CadastroClientes1: TMenuItem
        Action = actClientes
      end
      object CadastroFornecedores1: TMenuItem
        Action = actFornecedores
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object CadastrodeCEPs1: TMenuItem
        Action = actCep
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Action = actSair
      end
    end
    object PedidodeCompras1: TMenuItem
      Action = actPedidoCompra
    end
    object PedidodeVendas1: TMenuItem
      Action = actPedidoVenda
    end
  end
  object ImageList1: TImageList
    Left = 280
    Top = 184
    Bitmap = {
      494C010106000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4D1B900D4B28900CBA16D00D1AA7C00E4D0B800FBF7F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A44
      A100312BB800433CB0002119A2001F17A0002017A1002017A1002219A200524D
      BA00312BB800000000000000000000000000000000000000000000000000C08D
      4900C5935300CAA36500CEAA6E00CEAA6D00CFAB7000CBA06300C5975800C08B
      4600BA874E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009E9D
      B900251FAB002017A4003129AA00716AB8005F58A9005850B6002D26A9002218
      A400251FAB000000000000000000000000000000000000000000B67E3A00C899
      5A00CBA46800E5D7BE0000000000B1783500B1783500E3D3B800CBAB7200C594
      5400C38F4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000221A
      AA00221AAA00F2EFEC009E9D9D00EFF0F000E5E5E500EFECEA009F9E9D005F58
      BE00201AA900DBDAF100000000000000000000000000C4935100C99E5E00E0D0
      B300000000000000000000000000BA7F3E00BB884E000000000000000000E0D0
      B300CAA66B00C28F4B00C49A6900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFE00221B
      AD005048BA00F0EDED00E2E4E500EEEEEE00E7E7E800F1F0F000E1E3E300DBD7
      D0003D36B5004039B900FAFAFE0000000000F7F1EA00C89A5B00CAA86E000000
      0000000000000000000000000000BC844000C08E520000000000000000000000
      0000CBA96F00C4955300BE864200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000514CC5007069
      C500FBF8F700F2F2F200F2F2F200E9E9E9008B8B8B00F3F4F400F2F2F200DAD8
      D900F9F4F500231DB600514CC60000000000F2E8DB00CBA86E00C9A76C00DECE
      B000000000000000000000000000C18C4B00C5975F000000000000000000DECE
      B000CBA96E00CAA56A00C4935300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002A25BC00B9B2
      D600BFBEBE00F3F4F400F3F3F300F6F6F600E4E4E400F4F4F400F3F3F400F6F3
      F200BDBCB900241FBA002A25BC000000000000000000CAA96F00C8A86D000000
      0000000000000000000000000000C48F4F00C6975F0000000000000000000000
      0000DAC7A300CAA86F00F3EBDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002A24C400BEB7
      D400D8D5D600F7F8F800F8F8F800FAFAFA00D3D3E300F9F9F900FAFAF900F8F6
      F600E9E5E4002621C3002B24C300000000000000000000000000000000000000
      0000000000000000000000000000C9975800C9A0690000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000534ED2008178
      CE00E8E5E800FAF9F900FAFAFA00EEEEEE008B8B8B006A6ACF00F9F9F900E9E5
      E400E6E4E6002622C600534ED200000000000000000000000000000000000000
      000000000000F2E7DA00F2E7DA00CA9B5D00CBA57000F2E7DA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600EAEAF0002823
      CE00716CD300F6F4F300F3F2F100EEEEEE008B8B8B00FFFFFD00E3E2F000EDEB
      E7005551D3003E3BD300EAEAF000FDFDFD000000000000000000000000000000
      0000F2E7DA00CCA46A00CBA56A00CAA36A00CAA46900CAA26800C6A267000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D300C9C9CA002B27
      D3002925D200E7E4E500D5CFC900EDEDEE008B8B8B00FBFAF900F0EBE3008986
      D8002925D2009998C500C9C9CA00F8F8F8000000000000000000000000000000
      0000D1AD74000000000000000000D2B27A00D2B27D0000000000D0AC73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00B0B0B000C7C7C6005E60
      5E00403DC9002A27D8004744D800BDBBD200C0BECC008886D700413EDA002C29
      D8003D3AC800B5B5B100C7C7C600D2D2D2000000000000000000000000000000
      00000000000000000000B1783500B87D3A00B87D3A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00C3C3C200BDBDBD009595
      940065655900312EDC002B27DA002B28DA002B28DA002B28DA002A28DA005957
      B60065655900A8A8A800BDBDBD00B4B4B4000000000000000000000000000000
      000000000000B1783500BB823F0000000000B87D3A00B1783500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E60096969700F8F8
      F800F7F7F700B1B0AD00BEBEBA00E4E4E400000000009A9A9700BEBEBA00C3C3
      C300F7F7F700DADADA0096969700000000000000000000000000000000000000
      000000000000C7965300C69A61000000000000000000C4965900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00ADADAD00D9D9
      D900E9E9E900C5C5C500C8C6C800FAFAFA000000000097979700C8C6C800DADA
      DA00E9E9E9008B8D8B00ADADAD00000000000000000000000000000000000000
      000000000000C1925300CA9A590000000000C89F6500CA9A5B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FBFBFB00C3C3C300E4E4E400000000000000000000000000E4E4E400ECEC
      EC00FBFBFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0B07A00CEAC750000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0DED300A2BCA600688A6900688A6900A2BDA700D0DED3000000
      000000000000000000000000000000000000000000000000000000000000B576
      3F00B5763F00B5763F00B5763F00B5763F00B5763F00B5763F00B5763F00B576
      3F00B5763F000000000000000000000000000000000000000000000000000000
      00000000000058A4710058A4710058A4710058A4710058A4710058A471000000
      00000000000000000000000000000000000000000000D8DAD8004D565000606A
      650079AAA40078A29C0078A39D0078A39D0078A39D0078A39D0078A39D0078A3
      9D007BA59F00BED9D5000000000000000000000000000000000000000000688F
      6C002C5D2E006BB68B0086DBB10084D8AE0084D8AE0086DBB1006BB68B002C5D
      2E00688E6C000000000000000000000000000000000000000000E5D4C300F4ED
      E600FAF6F400F8F3EF00F1E7DC00F2ECE200F3EAE200F0E7DD00F7F1EC00F2E9
      DF00F6F1EB00FCFAF90000000000000000000000000000000000000000000000
      00000000000056A26C0084D5B1005ED09D005ED09D0070C79C0053A06A000000
      000000000000000000000000000000000000000000003D403A00393933005D62
      5D004E96920051908D0052928E0052918E0052918E0052918E0052928E005191
      8E0050908B005E99840081CCAA00000000000000000000000000D1E0D4002C61
      330070B78E007ED1A40069BD850059B2710059B2710069BD85007ED1A40070B7
      8E002C613300D0E0D40000000000000000000000000000000000DBC0A000DBC2
      A50000000000FDFBFA00DAC0A400E6D6C300E4D4BD00D9BFA100F9F8F500FAFA
      F700D7BB9B00E0C6A80000000000000000000000000000000000000000000000
      00000000000053A069008CD8B60062D19F0062D19F0073C89E00509E67000000
      000000000000000000000000000000000000000000003B3F39005B595300484B
      460047868500477E7B0049807D0049817F004B827F0049807E0049807D004882
      7F005896960051738F004B5C99000000000000000000689672002B6738008AD6
      AD0055B16C0059B2720059B2720059B2720059B2720059B2720059B2720055B1
      6C008AD6AD002B6737006996730000000000FFFEFE00DEC7A900F4ECE200EDE1
      D200ECE2D30000000000CCA97C00E2CEB500DCC3A600CBA57700FFFFFE00F5EE
      E500E2CFB700ECE0D000E7D5BF00000000000000000000000000000000000000
      0000000000004D9A600097DDBE006CD3A5006CD3A5007ACBA2004A985E000000
      0000000000000000000000000000000000000000000041413B00686660004044
      3E004D8D8A004B8380003C7773004E8583005B908E00437C7B0036746F004C85
      8400619B9C00525AA3007423EC007035DE00000000002A6A39007BBD97005AB1
      70005BB471005DB574005DB574004FAE67005DB573005DB574005DB574005BB4
      71005AB170007BBD97002A6938000000000000000000D7BA9500000000000000
      00000000000000000000FEFEFD0000000000FEFEFE00FEFEFD00000000000000
      000000000000FEFDFD00D8BB9700000000000000000000000000000000000000
      00000000000049975C0099DEC00072D5A80072D5A8007FCBA50046955A000000
      0000000000000000000000000000000000000000000040433D00696761004246
      3F0056969500427D790076A7A600BADEE400B3D8DE00B8DBE200A1C9CE00508A
      8600679DA1005358A5007422EF006E30DE00D2E4D80084C4A00097D8B30061B6
      790061B6790051AF69008BCB9B0000000000D1EBD9005FB5770061B6790061B6
      790061B6790097D8B30084C4A000D3E4D9000000000000000000000000000000
      0000F6EFE70000000000F2EBE100FBFBF900F6F3F000F5EFE70000000000F8F1
      EA000000000000000000FDFAF8000000000058A4710056A26C0053A069004D9A
      600049975C003E8E500098DEBF007ED8B0007ED8B0008ACFAB003E8E50004695
      5A004A985E00509E670053A06A0058A471000000000041443E006C6A64004B4D
      48005A9E9900D0EEF7005F999400BCDEE5009FC7CB00B4D9DE0098C1C4005F99
      93006EA3A6004F54AC006C18FE006427EB00A6C9B100B0E6CB007DC6960066B9
      7C0065B87B00A0D6AF0000000000000000000000000049AC640063B7790066B9
      7C0066B97C007DC69600B0E6CB00A7CAB300EFE4D200FEFFF900FEFFFB00FBFC
      F400FEFEFA00F9F4EE00FDFEF900FFFFFC00FFFFFA00FFFFFC00FAF4ED00FCFA
      F500FAF9F100FEFFF800FCFDF5000000000058A4710074CAA00072C89D0078CB
      A1007ECBA40088CFAA008ED0AD0085DAB40085DAB40077C9A00072C89D0078CB
      A1007ECBA40088CFAA008ED0AD0058A471000000000041453F006F6D67004C4F
      480064A4A000A0C7CB0057938D00A0C8CC008EBABC0082B2B1009BC5C700639B
      970070A5A50060688E009347AE008F53AC0067A37E00B3E5CD006DBB820068B9
      7D007CC490000000000000000000FCFDFC000000000000000000F2F9F40067B8
      7D006CBB81006DBB8200B3E5CD0067A37E0000000000BD8E5D00BD8D5D00BD8D
      5C00BE8F5F00DAB08700BE8A58001267160012671600BF8A5800DAB08700BE8E
      5D00BC8A5900BD8D5C00C29768000000000058A4710093DDBC0093DDBC0093DD
      BC0093DDBC0093DDBC0093DDBC0093DDBC0093DDBC0093DDBC0093DDBC0093DD
      BC0093DDBC0093DDBC0093DDBC0058A471000000000042453F00727068005154
      4D0075B4B20096C0C20068A29E009FC6CB0066A09B009CC6CA00649F9A009EC7
      CA0072A6A500666D8500A4529800965A940066A77F00B9E6D00071BD86006FBB
      840065B77C00000000000000000051AF6A0000000000000000000000000068B8
      7D0069B87F0071BD8600B9E6D00066A77F0000000000BB885700B5763F00B379
      4200BA854F00DBB28900A4804F0047CD920046CD9200A7824F00DCB28900B980
      4D00C3946900B1794100B37C43000000000058A4710099DFC00099DFC00099DF
      C00099DFC00099DFC00099DFC00099DFC00099DFC00099DFC00099DFC00099DF
      C00099DFC00099DFC00099DFC00058A471000000000043434000726F69005457
      520079B6B300AFD3DA0067A39F00C0E0E700B4D8DD00ADD3D9006EA7A3009AC5
      C60077AAA800686E8400A7579600995D9300A6D0B800C4EADB008ECEA20074C0
      890074C0890070BD85006DBC820074C089006CBB810000000000000000000000
      00008BCB9C008ECEA200C4EADB00A8D2BA000000000000000000000000000000
      0000000000001E712700DCB28A00DCB28A00DCB28A00DCB28A001E7127000000
      00000000000000000000000000000000000058A4710094DDBD0098DEBF0099DE
      C00097DDBE008CD8B60084D5B100A7E3C800A7E3C8007AD0A6009ADFC00099DE
      C00097DDBE008CD8B60084D5B10058A471000000000042453F0077746E005A5C
      550087C1BF0091BDBF00BFDEE60084B4B5007DB1AF0097C2C400BFDFE80079AE
      AD008BB8BA00656D8C009D4DA3009156A100D3E9DC0099CFB400B2E0C70079C1
      8A0079C18A0079C18A0079C18A0079C18A0079C18A008FCD9F00000000006CBD
      800072BD8500B2E0C70099CFB400D4E9DE000000000000000000000000000000
      00000000000081E0BE007FDCB70075D4AD0073D4AC007CD8B2007EDBB7000000
      00000000000000000000FEFEFE000000000058A4710053A06A00509E67004A98
      5E0046955A003E8E50008CD8B600ADE5CC00ADE5CC0080D1A9003E8E50004997
      5C004D9A600053A0690056A26C0058A47100000000004446400077746E005E5E
      5A0088C3C3007CB0AE0086B8B600B1D6DA00AFD4DA00ABD2D6008BBABA0086B8
      B80090BDBA007E896200D98E3200CD94440000000000209154009ED2B8007AC2
      8B007BC18D007DC290007DC290007DC290007DC290007DC290007AC18D007BC1
      8D007AC28B009ED2B8001F915400000000000000000000000000000000000000
      0000328340003283400032834000ABDBC300A8D9C10032834000328340003283
      4000000000000000000000000000000000000000000000000000000000000000
      00000000000049975C0097DDBE00B9E8D300B9E8D3008CD2AE0046955A000000
      0000000000000000000000000000000000000000000045464000787973006E71
      6C0099CDCD0096C3C20098C4C40098C4C30095C4C10098C4C40098C4C40097C4
      C400A2C9C700858B5D00E3922800CD9137000000000065B78C0020955800C4E6
      D8007DC38C0080C4910080C4910080C4910080C4910080C4910080C491007DC3
      8C00C4E6D8002095580064B68C00000000000000000000000000000000000000
      0000000000000000000042915500BBE1D000B7DFCD0042915500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D9A600099DEC000BEE9D600BEE9D60091D3B1004A985E000000
      000000000000000000000000000000000000000000004647410086857E002A30
      29002E827F002D7774002E7A77002E7A77002E7A77002E7A77002E7A77002E7B
      7800317974007B8B6500E6942800CF9438000000000000000000D3ECDF001F9D
      5E00A9D9C400C9E6DB00A4D5B40089C99A0089C99A00A4D5B400C9E6DB00A9D9
      C4001F9D5E00D3ECDF0000000000000000000000000000000000000000000000
      000000000000000000004C9A6300D7EDE800D2EAE4004C9A6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000053A0690098DEBF00C7EBDB00C7EBDB009BD4B500509E67000000
      000000000000000000000000000000000000000000003F3A34002B2923000000
      000000000000FFFDF900FFFFFD00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFE
      FA00FFFFFD00DA9C4500C0872900F1AD430000000000000000000000000062BE
      93001B9F5F00ACDCC800E7F2F400E3F0F000E3F0F000E7F2F400ACDCC8001B9F
      5F0063BE93000000000000000000000000000000000000000000000000000000
      0000FEFFFF00000000005EAA7B00FFFBFF00FFFAFF005EAA7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000056A26C0094DDBD00CAECDD00CAECDD009ED5B70053A06A000000
      0000000000000000000000000000000000000000000096938E003D3B35003C36
      300041413A003E37300033777300347A7500347B7700347B7700347B7700347B
      7700327B77003C898D004EA3A600000000000000000000000000000000000000
      000000000000D5EEE300AADDC60062C3970062C39700ABDDC600D6EFE3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000081C9A80081C9A80081C9A80081C9A800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A4710058A4710058A4710058A4710058A4710058A471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFF81F00000000E007E00700000000
      E007C20700000000E0038E6100000000C0011E7100000000C0010E6100000000
      C0019E7100000000C001FE7F00000000C001F83F000000008000F01F00000000
      8000F65F000000000000FC7F000000000000F93F000000008081F9BF00000000
      8081F93F00000000E1C7FE7F00000000F81FE007F81F8003E007C003F81F8001
      C003C803F81F800180010401F81F80008001BD39F81F80000100F42D00008000
      038000010000800006C080010000800006E08001000080000070F81F00008000
      0020F81D000080008001F00FF81F80008001FC3FF81F8000C003FC3FF81F9800
      E007F43FF81F8001F81FFC3FF81FFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 472
    Top = 136
    object actCep: TAction
      Caption = 'Cadastro de CEP'#180's'
      ImageIndex = 0
    end
    object actClientes: TAction
      Caption = 'Cadastro de Clientes'
      ImageIndex = 1
    end
    object actFornecedores: TAction
      Caption = 'Cadastro Fornecedores'
      ImageIndex = 2
    end
    object actPedidoCompra: TAction
      Caption = 'Pedido de Compra'
      ImageIndex = 3
    end
    object actPedidoVenda: TAction
      Caption = 'Pedido de Venda'
      ImageIndex = 4
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 5
      OnExecute = actSairExecute
    end
  end
end
