object FrmVendedores: TFrmVendedores
  Left = 0
  Top = 0
  Caption = 'Vendedores'
  ClientHeight = 341
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Vendedor'
    FocusControl = DBEdit2
  end
  object SpeedButton2: TSpeedButton
    Left = 339
    Top = 304
    Width = 55
    Height = 33
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 27
    Width = 182
    Height = 21
    DataField = 'Nome_vdd'
    DataSource = DataSource1
    TabOrder = 0
    OnKeyPress = DBEdit2KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 54
    Width = 385
    Height = 246
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo_vdd'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_vdd'
        Title.Caption = 'Vendedor'
        Width = 217
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 306
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = DMConexao.ClientDataSet_tbvendedores
    Left = 264
    Top = 8
  end
end
