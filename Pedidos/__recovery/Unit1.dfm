object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Configura'#231#245'es (Arquivos INI)'
  ClientHeight = 342
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 671
    Height = 63
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 104
    ExplicitWidth = 667
    object GroupBox1: TGroupBox
      Left = 6
      Top = 4
      Width = 539
      Height = 57
      Caption = 'Op'#231#245'es de Pesquisa'
      TabOrder = 0
      object cbPesquisa: TComboBox
        Left = 9
        Top = 24
        Width = 94
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = 'Esta'#231#227'o'
        Items.Strings = (
          'Esta'#231#227'o'
          'Serial HD'
          'Par'#226'metro')
      end
      object Edit2: TEdit
        Left = 109
        Top = 24
        Width = 412
        Height = 21
        TabOrder = 1
      end
    end
    object Button5: TButton
      Left = 577
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
    end
  end
  object Panel: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 70
    Width = 769
    Height = 271
    TabOrder = 1
    object ScrollBox2: TScrollBox
      Left = 6
      Top = 0
      Width = 332
      Height = 217
      TabOrder = 3
    end
    object ScrollBox1: TScrollBox
      Left = 344
      Top = -2
      Width = 319
      Height = 233
      TabOrder = 2
    end
    object DBGrid1: TDBGrid
      Left = -5
      Top = 0
      Width = 343
      Height = 266
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'Esta'#231#227'o'
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SerialHD'
          Title.Caption = 'Serial HD'
          Width = 250
          Visible = True
        end>
    end
    object Memo1: TMemo
      Left = 344
      Top = -2
      Width = 321
      Height = 233
      Lines.Strings = (
        '[cfg]'
        'SolicitaConexao=1'
        'Host=10.0.0.20'
        'Porta=5000'
        'DataBase=pe_27614_sqlreg3_11_2020'
        'Login=escriba'
        'Senha=teumg7:8'
        'DigHost=10.0.0.20'
        'DigDatabase=sqlregimg3'
        'DigLogin=escriba'
        'DigSenha=teumg7:8'
        'DigPorta=5000'
        'AmbienteDeTeste=1'
        'NotasDatabase='
        'IRDatabase=escriba'
        'TempDatabase=sqlreg3_TMP'
        'LoginAutomatico=1'
        'NomeAutomatico=escriba'
        'SenhaAutomatico=53s97v=>'
        'Guiche=Caixa 01'
        'UtilizarGuiche=1'
        'UsarTimerSeguranca=0'
        'PortaAutenticacao=COM1'
        'VelocidadePorta=9600'
        'IntervaloSeguranca=5'
        'UsarFigura=1'
        'Transparente=1'
        'UsarBufferDuplo=0'
        'IgnorarTeclaEspecial=0'
        'AlterarEscala=1'
        'AbreCombo=1'
        'MostrarConteudoCampo=0'
        'FundoSistema=G:\Desenvolvimento\Delphi\Register\Aprovado'
        '\Register3\Princip.bmp'
        'PastaPDF=c:\temp\'
        'PastaP7S=c:\temp\'
        'PastaDAP=C:\tjmg\sis\sn\db'
        'PastaDLLCashRegister=C:\Program Files (x86)\Escriba'
        '\ECash_Integra'
        'PortaGaveta=COM4'
        'Editor_Fonte=4'
        'Editor_TamFonte=5'
        'VisualizarEncerrados=0'
        'UltimoLogin=gabriel.pereira'
        'Editor_Minuta_SubsVar=0'
        'Zoom_Selecao_minuta=100'
        'ImpSelosPrenotacoes=1'
        'DirDoi=c:\temp\'
        'PastaSigEx=C:\tempescriba'
        'Item_vlr_Extenso=1'
        'CfgPadrao=Padr'#227'o'
        'PathRegAsm=C:\Windows\Microsoft.NET\Framework'
        '\v4.0.30319\RegAsm.exe'
        'NomeMaquina=ESCRIBA-002531'
        'ExportarArqAssiDigOrgPastas=1'
        'ExecutarGDPictureRegCom=0'
        'chkEtqEncerrado=1'
        'chkDesAnotacoes=0'
        'chkEtqAnot=0'
        'chkProtocolo=0'
        'chkPreviewEtq=1'
        'cmbEtiqueta=Registros(Baseado no livro 1)'
        '[CFGConexoes]'
        'NumConexoes=9'
        'ChaveUltimaConexao=7'
        '[QG]'
        'Atualiza_brysignercom=0'
        'REGISTERSP-27-CorrigeQualificacaoL5=0'
        'REGISTERSP-126-ConvTelefones=0'
        'REGISTERSP-271=0'
        'DuplicarTelefones=0'
        'ModificarCampoTelefonesPara200Carc=0'
        'REGISTER-3034=0'
        'REGISTER-2888=0'
        'Atualiza_tx4ole15=0'
        'Atualiza_gdPicturePro5=0'
        'Atualiza_ARISPKCS=0'
        'REGISTERSP-66-PermissaoExigenciaRC=0'
        'REGISTERSP81=0'
        'REGISTERSP-221=0'
        'REGISTERSP-307=0'
        'REGISTERSP-346-ConvRPS=0'
        'ModificarCampoContratoSocialParteOut=0'
        'Atualiza_CAPICOM=0'
        'Atualiza_brysignerpdfcom=0'
        'Atualiza_BRySignerCAdESCOM=0'
        'Atualiza_GdPicture14=0'
        'Atualiza_BRySignerPdfComMsi=0'
        'Atualiza_brysignerxadescom=0'
        '[Chamada]'
        'Usar=0'
        'ExibeIcone=0'
        'ExibeTempo=0'
        '[Pesquisa]'
        'Item_TfrmCx_Pesquisa=0'
        'Item_TfrmCx_Metodo=0'
        'Item_TfrmRr_Pesquisa=0'
        'Item_TfrmRr_Metodo=0'
        'Item_TfrmL1Processo_Pesquisa=14'
        'Item_TfrmL1Processo_Metodo=0'
        'Item_TfrmCertidao_Pesquisa=0'
        'Item_TfrmCertidao_Metodo=0'
        'Item_TfrmRc_Pesquisa=0'
        'Item_TfrmRc_Metodo=0'
        'Item_TfrmEm_Pesquisa=3'
        'Item_TfrmEm_Metodo=0'
        'Item_TfrmProcRc_Pesquisa=0'
        'Item_TfrmProcRc_Metodo=0'
        'Item_TfrmL2_L1_Pesquisa=0'
        'Item_TfrmL2_L1_Metodo=0'
        'Item_TfrmL2_Pesquisa=16'
        'Item_TfrmL2_Metodo=0'
        'Item_TfrmSm_Pesquisa=11'
        'Item_TfrmSm_Metodo=0'
        'TodasAnotacoesL5=0'
        'Item_TfrmL5_Pesquisa=0'
        'Item_TfrmL5_Metodo=3'
        'Item_TfrmLoteSelo_Pesquisa=0'
        'Item_TfrmLoteSelo_Metodo=0'
        'Item_TfrmCusta_Pesquisa=0'
        'Item_TfrmCusta_Metodo=0'
        'Item_TfrmTr_Pesquisa=7'
        'Item_TfrmTr_Metodo=0'
        'Item_TfrmRet_Pesquisa=0'
        'Item_TfrmRet_Metodo=-1'
        'Item_TfrmRt_Pesquisa=3'
        'Item_TfrmRt_Metodo=0'
        'Item_TfrmO2_Pesquisa=0'
        'Item_TfrmO2_Metodo=0'
        'Item_TfrmProcRt_Pesquisa=0'
        'Item_TfrmProcRt_Metodo=0'
        'Item_TfrmL1_Pesquisa=0'
        'Item_TfrmL1_Metodo=1'
        'Item_TfrmOf_Pesquisa=9'
        'Item_TfrmOf_Metodo=0'
        'Item_TfrmMinuta_Pesquisa=0'
        'Item_TfrmMinuta_Metodo=0'
        'Item_TfrmL3_Pesquisa=6'
        'Item_TfrmL3_Metodo=0'
        'Item_TfrmO3_Pesquisa=0'
        'Item_TfrmO3_Metodo=0'
        'Item_TfrmL4_Pesquisa=16'
        'Item_TfrmL4_Metodo=0'
        'Item_TfrmCtoSocial_Pesquisa=3'
        'Item_TfrmCtoSocial_Metodo=0'
        'Item_TfrmCadastroCheckList_Pesquisa=0'
        'Item_TfrmCadastroCheckList_Metodo=1'
        'Item_TfrmTipoNatureza_Pesquisa=1'
        'Item_TfrmTipoNatureza_Metodo=5'
        'Item__Pesquisa=-1'
        'Item__Metodo=0'
        'Item_TfrmEprotocolo_Pesquisa=2'
        'Item_TfrmEprotocolo_Metodo=-1'
        'Item_TfrmProcuracao_Pesquisa=2'
        'Item_TfrmProcuracao_Metodo=0'
        'Item_TfrmNT_Pesquisa=0'
        'Item_TfrmNT_Metodo=0'
        'Item_TfrmConsultaIntimacao_Pesquisa=6'
        'Item_TfrmConsultaIntimacao_Metodo=-1'
        'Item_TfrmIntimacaoWS_Pesquisa=1'
        'Item_TfrmIntimacaoWS_Metodo=-1'
        'Item_TfrmRegistroEletronico_Pesquisa=4'
        'Item_TfrmRegistroEletronico_Metodo=-1'
        'Item_TfrmEa_Pesquisa=0'
        'Item_TfrmEa_Metodo=0'
        'Item_TBuscaDadosParamGrupo_Pesquisa=0'
        'Item_TBuscaDadosParamGrupo_Metodo=0'
        'Item_TBuscaDadosParamDiscriminacao_Pesquisa=0'
        'Item_TBuscaDadosParamDiscriminacao_Metodo=0'
        'Item_TBuscaDadosParamTabela_Pesquisa=0'
        'Item_TBuscaDadosParamTabela_Metodo=0'
        'Item_TfrmOT_Pesquisa=0'
        'Item_TfrmOT_Metodo=0'
        '[Etapa]'
        'Item_TfrmL1Processo_Etapa=Todos'
        'Item_TfrmProcRc_Etapa=Todos'
        'Item_TfrmSm_Etapa=Todos'
        'Item_TfrmProcRt_Etapa=Todos'
        'Item_TfrmOf_Etapa=Todos'
        'Item__Etapa=Qualifica'#231#227'o'
        'Item_TfrmNT_Etapa=Todos'
        '[Editor]'
        'UltimoArquivo=C:\Program Files (x86)\Escriba\Register'
        '\Register3\Edicao\Matricula_71244_094159114rtf'
        'Livro=2'
        'IdLivro=71250'
        'EspacoSimboloValor=1'
        '[Editor_CE]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Editor_]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Cash-Notary]'
        'Host=localhost'
        'Login=escriba'
        'Senha=teumg7:8'
        'Database=cashnotary_03304'
        'Porta=3306'
        '[Editor_2]'
        'CharInvisiveis=1'
        'AutoCorretor=0'
        'Zoom=100'
        '[Editor_SC]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[ConvAltaProd]'
        'OpcaoDig=Digitaliza'#231#227'o'
        'direta'
        '[Scanner]'
        'AutoFeed=1'
        'Brightness=0'
        'Contrast=0'
        'Duplex=1'
        'Grayscale=0'
        'Resolution=0'
        'ShowTwain=0'
        'Bits=bpp1'
        'ShowOrientation=Portrait'
        'TipoDigitalizacao=0'
        '[STAMP]'
        'STAMP_CARTELA_PRIMEIRAETIQUETA=13'
        'STAMP_CONF_IMPRIMIR=3'
        'STAMP_CONF_IMPRESSORA=Microsoft XPS Document Writer'
        'STAMP_CONF_TIPO=Impress'#227'o em papel'
        '[Dig_TfrmRet]'
        'OpcaoDig=Digitaliza'#231#227'o personalizada'
        'Zoom=100'
        'OpcaoImprimir=Imprimir tudo'
        '[Dig_TfrmDig]'
        'OpcaoDig=Digitaliza'#231#227'o com twain'
        'Zoom=60'
        'OpcaoImprimir=Imprimir tudo'
        '[VisualizadorImpressao]'
        'Zoom=70%'
        '[Editor_1]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[XMLES]'
        'Serventia=879879879'
        'dirArqXML=C:\Nova pasta\Nova pasta'
        '[Editor_3]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[ARISP]'
        'PastaComunicadoArisp=C:\Users\leyslaine.martins\Desktop'
        '\Evidencias\RegisterSQL\REGISTER-3939\'
        'DLLIntegracaoCNIDisponivel=1'
        'CaminhoXML=C:\Program Files (x86)\Escriba\Register'
        '\Register3\'
        '[Editor_T]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[CertidaoDig]'
        'X=101'
        'Y=1267'
        'W=580'
        'H=370'
        '[Editor_EX]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[DEOPI]'
        'Seq2014=13'
        'Seq2015=8'
        '[Editor_CH]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Editor_TN]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Editor_RT]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Editor_MN]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Conexao41]'
        'Host=10.0.1.83'
        'Porta=3306'
        'DataBase=sqlreg3_go_25853'
        'User=escriba'
        'Pass=teumg7:8'
        '[Conexao43]'
        'Host=10.0.1.114'
        'Porta=3306'
        'DataBase=sqlreg3_go_27193'
        'User=escriba'
        'Pass=teumg7:8'
        '[Conexao44]'
        'Host=10.0.1.83'
        'Porta=3306'
        'DataBase=sqlreg3_mt_00821'
        'User=escriba'
        'Pass=teumg7:8'
        '[Conexao45]'
        'Host=10.0.1.83'
        'Porta=3306'
        'DataBase=sqlreg3_mt_00821'
        'User=escriba'
        'Pass=teumg7:8'
        '[eProtocolo]'
        'ArquivoXsd=C:\Users\otavio.marques\OneDrive - Escriba '
        'Informatica\'#193'rea de Trabalho\Arquivos'
        '\apresentacao_online_exporta_v2 - Copia.xsd'
        '[XML]'
        'DEOPI=C:\tempescriba'
        '[Editor_OF]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Conexao40]'
        'Host=10.0.1.83'
        'Porta=3306'
        'DataBase=sqlreg3_go_25853'
        'User=escriba'
        'Pass=teumg7:8'
        '[Editor_AN]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Editor_TX]'
        'CharInvisiveis=0'
        'AutoCorretor=0'
        'Zoom=100'
        '[Dig_digL2]'
        'ImagemTOPF=0'
        'ImagemLEFTF=0'
        'ImagemBOTTOMF=0'
        'ImagemRIGHTF=0'
        'ImagemTOPV=0'
        'ImagemLEFTV=0'
        'ImagemBOTTOMV=0'
        'ImagemRIGHTV=0'
        '[Caixa]'
        'DefinirCorGridCaixa=0'
        'CorGridCaixa='
        '[Dimensor]'
        'IntegracaoDimensor=0'
        'DiretorioDimensor='
        '[ServTask]'
        'UtilizarServTask=0'
        'Chave='
        'Usuario='
        'Senha='
        'Funcao='
        '[Conexao1]'
        'Host=10.0.0.20'
        'Porta=5100'
        'DataBase=es_27694_sqlreg3_22092022'
        'User=escriba'
        'Pass=teumg7:8'
        '[Conexao2]'
        'Host=10.0.0.20'
        'Porta=5000'
        'DataBase=go_27350_sqlreg3_20122022'
        'User=escriba'
        'Pass=teumg7:8'
        '[Conexao3]'
        'Host=10.0.0.20'
        'Porta=5000'
        'DataBase=es_00132_sqlreg3_08032022'
        'User=escriba'
        'Pass=teumg7:8'
        '[Conexao4]'
        'Host=10.0.0.20'
        'Porta=5000'
        'DataBase=rr_00029_sqlreg3_17052021'
        'User=escriba'
        'Pass=teumg7:8'
        '[Conexao5]'
        'Host=10.0.0.20'
        'Porta=5100'
        'DataBase=pe_27658_sqlreg3_01_2021'
        'User=escriba'
        'Pass=teumg7:8'
        '[Conexao6]'
        'Host=10.0.0.20'
        'Porta=5100'
        'DataBase=ac_25770_sqlreg3_26072022'
        'User=escriba'
        'Pass=teumg7:8'
        '[ArquivoArisp]'
        'PastaArisp=C:\Program Files (x86)\Escriba\Register\Register3\'
        '[Conexao7]'
        'Host=10.0.0.20'
        'Porta=5000'
        'DataBase=pe_27614_sqlreg3_11_2020'
        'User=escriba'
        'Pass=teumg7:8'
        '[Dig_digL1]'
        'ImagemTOPF=0'
        'ImagemLEFTF=0'
        'ImagemBOTTOMF=0'
        'ImagemRIGHTF=0'
        'ImagemTOPV=0'
        'ImagemLEFTV=0'
        'ImagemBOTTOMV=0'
        'ImagemRIGHTV=0'
        'TwainSelecao_left=0'
        'TwainSelecao_top=0'
        'TwainSelecao_width=0'
        'TwainSelecao_height=0'
        '[Conexao8]'
        'Host=10.0.0.20'
        'Porta=5500'
        'DataBase=go_27350_sqlreg3_22072022'
        'User=escriba'
        'Pass=teumg7:8'
        '[TBuscaDadosParamGrupo]'
        'AlturaTela=536'
        'LarguraTela=1014'
        'Maximizada=0'
        '[TBuscaDadosParamDiscriminacao]'
        'AlturaTela=536'
        'LarguraTela=1014'
        'Maximizada=0'
        '[TBuscaDadosParamTabela]'
        'AlturaTela=536'
        'LarguraTela=1014'
        'Maximizada=0'
        '[Conexao9]'
        'Host=10.0.0.20'
        'Porta=5000'
        'DataBase=pa_03151_sqlreg3_27052022'
        'User=escriba'
        'Pass=teumg7:8')
      TabOrder = 1
    end
    object Button1: TButton
      Left = 556
      Top = 237
      Width = 53
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 4
    end
    object Button2: TButton
      Left = 615
      Top = 237
      Width = 50
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
    end
    object Button3: TButton
      Left = 344
      Top = 237
      Width = 51
      Height = 25
      Caption = 'Alterar'
      TabOrder = 6
    end
  end
end
