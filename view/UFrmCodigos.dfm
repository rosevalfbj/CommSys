object FrmCodigos: TFrmCodigos
  Left = 0
  Top = 0
  Caption = 'Codigos'
  ClientHeight = 533
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 200
    Width = 68
    Height = 13
    Caption = 'Representada'
  end
  object Label3: TLabel
    Left = 8
    Top = 246
    Width = 119
    Height = 13
    Caption = 'Codigo na Representada'
    FocusControl = DBEdit3
  end
  object SpeedButton2: TSpeedButton
    Left = 384
    Top = 492
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
  object DBEdit3: TDBEdit
    Left = 8
    Top = 262
    Width = 134
    Height = 21
    DataField = 'Codigo_cdg'
    DataSource = DataSource_detail
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 296
    Width = 431
    Height = 190
    DataSource = DataSource_detail
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_for'
        Title.Caption = 'Representada'
        Width = 261
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo_cdg'
        Title.Caption = 'Cod. na Representada'
        Width = 123
        Visible = True
      end>
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 219
    Width = 431
    Height = 21
    DataField = 'codigo_for'
    DataSource = DataSource_detail
    KeyField = 'Codigo_for'
    ListField = 'Nome_for'
    ListSource = DataSource_tbfornecedores
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 500
    Width = 222
    Height = 25
    DataSource = DataSource_detail
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 3
  end
  object DBNavigator2: TDBNavigator
    Left = 359
    Top = 1
    Width = 80
    Height = 25
    DataSource = DataSource_master
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 32
    Width = 431
    Height = 162
    DataSource = DataSource_master
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo_cli'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_cli'
        Title.Caption = 'Cliente'
        Width = 320
        Visible = True
      end>
  end
  object DataSource_tbfornecedores: TDataSource
    DataSet = DMConexao.ClientDataSet_tbfornecedores
    Left = 192
    Top = 216
  end
  object DataSource_master: TDataSource
    DataSet = DMConexao.ClientDataSet_master
    Left = 336
    Top = 56
  end
  object DataSource_detail: TDataSource
    DataSet = DMConexao.ClientDataSet_detail
    Left = 304
    Top = 248
  end
end
