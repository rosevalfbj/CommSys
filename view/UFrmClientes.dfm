object FrmClientes: TFrmClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 431
  ClientWidth = 447
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Cliente'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 152
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 208
    Top = 104
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 208
    Top = 150
    Width = 24
    Height = 13
    Caption = 'Email'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 279
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object SpeedButton2: TSpeedButton
    Left = 384
    Top = 392
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
  object DBEdit1: TDBEdit
    Left = 8
    Top = 27
    Width = 431
    Height = 21
    DataField = 'Nome_cli'
    DataSource = DataSource1
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 75
    Width = 265
    Height = 21
    DataField = 'Endereco_cli'
    DataSource = DataSource1
    TabOrder = 1
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 123
    Width = 180
    Height = 21
    DataField = 'Bairro_cli'
    DataSource = DataSource1
    TabOrder = 2
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 168
    Width = 180
    Height = 21
    DataField = 'Cnpj_cli'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 208
    Top = 123
    Width = 161
    Height = 21
    DataField = 'Telefone_cli'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 208
    Top = 169
    Width = 231
    Height = 21
    DataField = 'Email_cli'
    DataSource = DataSource1
    TabOrder = 5
    OnKeyPress = DBEdit6KeyPress
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 279
    Top = 75
    Width = 160
    Height = 21
    DataField = 'Codigo_cid'
    DataSource = DataSource1
    KeyField = 'Codigo_cid'
    ListField = 'Nome_cid'
    ListSource = DataSource_tbcidades
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 248
    Width = 431
    Height = 138
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo_cli'
        Title.Caption = 'Codigo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_cli'
        Title.Caption = 'Representada'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefone_cli'
        Title.Caption = 'Telefone'
        Width = 87
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 201
    Width = 431
    Height = 41
    BorderStyle = bsSingle
    TabOrder = 8
    object SpeedButton1: TSpeedButton
      Left = 343
      Top = 8
      Width = 82
      Height = 22
      Caption = 'Buscar'
      Flat = True
    end
    object Label8: TLabel
      Left = 9
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Edit1: TEdit
      Left = 48
      Top = 8
      Width = 289
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 392
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 9
  end
  object DataSource1: TDataSource
    DataSet = DMConexao.ClientDataSet_tbclientes
    Left = 392
    Top = 112
  end
  object DataSource_tbcidades: TDataSource
    DataSet = DMConexao.ClientDataSet_tbcidades
    Left = 376
    Top = 64
  end
end
