object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 613
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -10
    Top = -2
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
          Left = 4
          Top = 11
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
          Left = 4
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
          Left = 212
          Top = 104
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
        object RLdesc: TRLDBText
          Left = 112
          Top = 49
          Width = 58
          Height = 18
          DataSource = Form1.DataSource1
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
end