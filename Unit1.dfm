object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 442
  ClientWidth = 628
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 197
    Width = 612
    Height = 212
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 409
    Width = 610
    Height = 25
    TabOrder = 1
  end
  object stbDataHora: TStatusBar
    Left = 0
    Top = 0
    Width = 628
    Height = 19
    Align = alTop
    Enabled = False
    Panels = <
      item
        Width = 210
      end
      item
        Alignment = taCenter
        Width = 300
      end
      item
        Alignment = taRightJustify
        Width = 50
      end>
    ExplicitLeft = 320
    ExplicitTop = 232
    ExplicitWidth = 0
  end
  object ADOConnection1: TADOConnection
    Left = 88
    Top = 200
  end
  object ADOTable1: TADOTable
    Left = 177
    Top = 200
  end
  object DataSource1: TDataSource
    Left = 251
    Top = 200
  end
  object tmDataHora: TTimer
    OnTimer = tmDataHoraTimer
    Left = 584
  end
end
