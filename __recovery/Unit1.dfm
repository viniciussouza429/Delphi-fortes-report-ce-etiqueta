object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 456
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel2: TPanel
    Left = 160
    Top = 64
    Width = 281
    Height = 345
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 33
      Width = 43
      Height = 15
      Caption = 'Etiqueta'
    end
    object Label2: TLabel
      Left = 33
      Top = 119
      Width = 80
      Height = 15
      Caption = 'Tipo impress'#227'o'
    end
    object BitBtn1: TBitBtn
      Left = 81
      Top = 259
      Width = 99
      Height = 52
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object DBEtiqueta: TDBLookupComboBox
      Left = 33
      Top = 46
      Width = 217
      Height = 23
      KeyField = 'eti_codigo'
      ListField = 'eti_nome'
      ListSource = DataSource2
      TabOrder = 1
    end
    object TipoImpressao: TComboBox
      Left = 33
      Top = 136
      Width = 217
      Height = 22
      Style = csOwnerDrawFixed
      ExtendedUI = True
      ItemIndex = 0
      TabOrder = 2
      Text = '0 - TIPO IMPRESSAO 1'
      Items.Strings = (
        '0 - TIPO IMPRESSAO 1'
        '1 - TIPO IMPRESSAO 2')
    end
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 5432
    Database = 'Projeto_etiqueta'
    User = 'postgres'
    Password = 'postdba'
    Protocol = 'postgresql'
    LibraryLocation = 'F:\Etiqueta\libpq.dll'
    Top = 424
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 344
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 408
    Top = 336
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM listaetiqueta')
    Params = <>
    Left = 462
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 494
    Top = 112
  end
end
