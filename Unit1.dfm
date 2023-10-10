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
    DataSource = dtsConexao
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object dbnNav: TDBNavigator
    Left = 8
    Top = 409
    Width = 610
    Height = 25
    DataSource = dtsConexao
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
  object adcConexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.16.0;Data Source=C:\Users\ViniciusA' +
      'breudeOlive\Desktop\Projetos-Delphi\Projetos-Delphi-FormularioCa' +
      'dastro\BD\Clientes.accdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.16.0'
    Left = 88
    Top = 200
  end
  object adtConexao: TADOTable
    Active = True
    Connection = adcConexao
    CursorType = ctStatic
    TableName = 'Clientes'
    Left = 177
    Top = 200
  end
  object dtsConexao: TDataSource
    DataSet = adtConexao
    Left = 251
    Top = 200
  end
  object tmDataHora: TTimer
    OnTimer = tmDataHoraTimer
    Left = 584
  end
end
