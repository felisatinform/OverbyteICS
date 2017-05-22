object ProxySslServerForm: TProxySslServerForm
  Left = 339
  Top = 282
  Caption = 'Proxy Server '
  ClientHeight = 437
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolsPanel: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 41
    Align = alTop
    TabOrder = 0
    object StartButton: TButton
      Left = 29
      Top = 8
      Width = 57
      Height = 21
      Caption = '&Start'
      Default = True
      TabOrder = 0
      OnClick = StartButtonClick
    end
    object StopButton: TButton
      Left = 111
      Top = 8
      Width = 57
      Height = 21
      Caption = 'S&top'
      Enabled = False
      TabOrder = 1
      OnClick = StopButtonClick
    end
    object RecheckCertsButton: TButton
      Left = 184
      Top = 8
      Width = 102
      Height = 21
      Caption = 'Recheck Ssl Certs'
      TabOrder = 2
      OnClick = RecheckCertsButtonClick
    end
  end
  object DisplayMemo: TMemo
    Left = 0
    Top = 41
    Width = 587
    Height = 396
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      
        'Please note that this sample takes all it'#39's settings from an INI' +
        ' file.  '
      ''
      
        'The INI file needs to be manually edited to add multiple Source ' +
        'and '
      'Target sections to define the proxy server behaviour.  ')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object IcsHttpProxy1: TIcsHttpProxy
    IcsHosts = <>
    ProxyTargets = <>
    RxBuffSize = 65536
    MaxClients = 999
    SocketErrs = wsErrFriendly
    ExclusiveAddr = False
    DebugLevel = DebugSsl
    TarSecLevel = sslSecLevel80bits
    CertVerTar = CertVerNone
    SslRevocation = False
    SslReportChain = False
    onProxyProg = IcsHttpProxy1ProxyProg
    OnSetTarget = IcsHttpProxy1SetTarget
    OnDataSendTar = IcsHttpProxy1DataSendTar
    OnDataRecvTar = IcsHttpProxy1DataRecvTar
    HttpIgnoreClose = False
    HttpSrcCompress = False
    HttpTarCompress = False
    HttpCompMinSize = 0
    HttpStripUpgrade = True
    HttpStopCached = False
    HttpMaxBody = 1000000
    Left = 355
    Top = 5
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 320
    Top = 5
  end
end
