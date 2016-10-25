object FrmPedidos: TFrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 310
  ClientWidth = 489
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
    Top = 53
    Width = 52
    Height = 13
    Caption = 'Nro Pedido'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 128
    Top = 204
    Width = 82
    Height = 13
    Caption = 'Total de Parcelas'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 232
    Top = 204
    Width = 74
    Height = 13
    Caption = 'Valor do Pedido'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 99
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label6: TLabel
    Left = 8
    Top = 158
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label7: TLabel
    Left = 128
    Top = 53
    Width = 46
    Height = 13
    Caption = 'Vendedor'
  end
  object SpeedButton2: TSpeedButton
    Left = 428
    Top = 269
    Width = 53
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
  object Label2: TLabel
    Left = 8
    Top = 204
    Width = 71
    Height = 13
    Caption = 'Data da Venda'
    FocusControl = DBEdit2
  end
  object Label8: TLabel
    Left = 352
    Top = 204
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 352
    Top = 158
    Width = 119
    Height = 13
    Caption = 'C'#243'digo na Representada'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 72
    Width = 105
    Height = 21
    DataField = 'Pedido_pdd'
    DataSource = DataSource_tbpedidos
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 225
    Width = 82
    Height = 21
    DataField = 'QtdParcelas_pdd'
    DataSource = DataSource_tbpedidos
    TabOrder = 1
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 232
    Top = 225
    Width = 97
    Height = 21
    DataField = 'Valor_pdd'
    DataSource = DataSource_tbpedidos
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 128
    Top = 72
    Width = 353
    Height = 21
    DataField = 'Codigo_vdd'
    DataSource = DataSource_tbpedidos
    KeyField = 'Codigo_vdd'
    ListField = 'Nome_vdd'
    ListSource = DataSource_tbvendedores
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 277
    Width = 240
    Height = 25
    DataSource = DataSource_tbpedidos
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 225
    Width = 97
    Height = 21
    DataField = 'Datavenda_pdd'
    DataSource = DataSource_tbpedidos
    TabOrder = 5
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 8
    Top = 118
    Width = 473
    Height = 21
    DataField = 'Codigo_cli'
    DataSource = DataSource_tbpedidos
    KeyField = 'Codigo_cli'
    ListField = 'Nome_cli'
    ListSource = DataSource_tbclientes
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 177
    Width = 321
    Height = 21
    DataField = 'Codigo_for'
    DataSource = DataSource_tbpedidos
    KeyField = 'codigo_for'
    ListField = 'nome_for'
    ListSource = DataSource_tbfornecedores
    TabOrder = 7
  end
  object DBComboBox1: TDBComboBox
    Left = 352
    Top = 225
    Width = 129
    Height = 21
    DataField = 'Status_pdd'
    DataSource = DataSource_tbpedidos
    Items.Strings = (
      'Aberto'
      'Liquidado'
      'Pendente')
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 352
    Top = 177
    Width = 129
    Height = 21
    DataField = 'codigo_cdg'
    DataSource = DataSource_tbfornecedores
    Enabled = False
    TabOrder = 9
  end
  object Button1: TButton
    Left = 110
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 81
    Height = 21
    TabOrder = 11
    OnKeyPress = Edit1KeyPress
  end
  object DataSource_tbpedidos: TDataSource
    DataSet = DMConexao.ClientDataSet_tbpedidos
    Left = 264
    Top = 32
  end
  object DataSource_tbvendedores: TDataSource
    DataSet = DMConexao.ClientDataSet_tbvendedores
    Left = 344
    Top = 64
  end
  object DataSource_tbclientes: TDataSource
    DataSet = DMConexao.ClientDataSet_master
    Left = 144
    Top = 104
  end
  object DataSource_tbfornecedores: TDataSource
    DataSet = DMConexao.ClientDataSet_detail
    Left = 232
    Top = 131
  end
end
