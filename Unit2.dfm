object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 690
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -16
    Top = 0
    Width = 794
    Height = 1123
    Background.Align = faCenterBottom
    Background.AutoSize = False
    DataSource = Form1.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpA4_Small
    Visible = False
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 38
      Width = 718
      Height = 208
      ColCount = 2
      object RLPanel2: TRLPanel
        Left = 24
        Top = 43
        Width = 313
        Height = 126
        Borders.Sides = sdAll
        object RLproduto: TRLDBText
          Left = 73
          Top = 4
          Width = 98
          Height = 23
          DataSource = Form1.DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLprocodigo: TRLDBText
          Left = 16
          Top = 106
          Width = 76
          Height = 16
          DataSource = Form1.DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLvunit: TRLDBText
          Left = 140
          Top = 48
          Width = 55
          Height = 18
          DataSource = Form1.DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object Panel1: TPanel
        Left = 360
        Top = 168
        Width = 33
        Height = 1
        Caption = 'Panel1'
        TabOrder = 1
      end
    end
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'SELECT *                                            '
      'FROM controle_etiqueta ce                           '
      'INNER JOIN produto p ON p.pro_codigo = ce.pro_codigo'
      
        '                                            WHERE ce.eti_codigo ' +
        '= 1')
    Params = <>
    Left = 872
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 872
    Top = 376
  end
end
