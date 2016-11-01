object FrmComissoes: TFrmComissoes
  Left = 0
  Top = 0
  Caption = 'Comissoes'
  ClientHeight = 568
  ClientWidth = 564
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
    Top = 8
    Width = 52
    Height = 13
    Caption = 'Nro Pedido'
  end
  object SpeedButton2: TSpeedButton
    Left = 501
    Top = 527
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
  object DBNavigator1: TDBNavigator
    Left = 404
    Top = 8
    Width = 152
    Height = 25
    DataSource = DataSource_tbpedido_master
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 66
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BtnBuscar: TButton
    Left = 193
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = BtnBuscarClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 39
    Width = 548
    Height = 120
    DataSource = DataSource_tbpedido_master
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Pedido_pdd'
        Title.Caption = 'Nro Pedido'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_cli'
        Title.Caption = 'Cliente'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_for'
        Title.Caption = 'Representada'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_pdd'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status_pdd'
        Title.Caption = 'Status'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdParcelas_pdd'
        Title.Caption = 'Total de Parcelas'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 165
    Width = 548
    Height = 108
    BevelInner = bvLowered
    TabOrder = 4
    object Label2: TLabel
      Left = 8
      Top = 13
      Width = 52
      Height = 13
      Caption = 'Nota Fiscal'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 106
      Top = 13
      Width = 79
      Height = 13
      Caption = 'Data de Emiss'#227'o'
      FocusControl = DBEdit2
    end
    object Label5: TLabel
      Left = 220
      Top = 13
      Width = 70
      Height = 13
      Caption = 'Valor do Pagto'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 335
      Top = 13
      Width = 74
      Height = 13
      Caption = '% da Comiss'#227'o'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 8
      Top = 61
      Width = 69
      Height = 13
      Caption = 'Data do Pagto'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 106
      Top = 61
      Width = 55
      Height = 13
      Caption = 'Parcela Nro'
    end
    object Label9: TLabel
      Left = 220
      Top = 61
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    object Label4: TLabel
      Left = 445
      Top = 13
      Width = 87
      Height = 13
      Caption = 'Valor da Comiss'#227'o'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 72
      Height = 21
      DataField = 'Notafiscal_com'
      DataSource = DataSource_tbcomissoes_detail
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 106
      Top = 32
      Width = 83
      Height = 21
      DataField = 'Dataemissao_com'
      DataSource = DataSource_tbcomissoes_detail
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 220
      Top = 32
      Width = 91
      Height = 21
      DataField = 'Valorpagto_com'
      DataSource = DataSource_tbcomissoes_detail
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 338
      Top = 32
      Width = 74
      Height = 21
      DataField = 'Percentcomissao_pdd'
      DataSource = DataSource_tbcomissoes_detail
      TabOrder = 3
      OnChange = DBEdit5Change
    end
    object DBEdit3: TDBEdit
      Left = 445
      Top = 32
      Width = 92
      Height = 21
      DataField = 'Valorcomissao_com'
      DataSource = DataSource_tbcomissoes_detail
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 80
      Width = 81
      Height = 21
      DataField = 'Pagaem_pdd'
      DataSource = DataSource_tbcomissoes_detail
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 106
      Top = 80
      Width = 80
      Height = 21
      DataField = 'Parcelapaga_com'
      DataSource = DataSource_tbcomissoes_detail
      TabOrder = 6
      OnKeyPress = DBEdit7KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 220
      Top = 80
      Width = 317
      Height = 21
      DataField = 'Observacao_com'
      DataSource = DataSource_tbcomissoes_detail
      TabOrder = 7
      OnKeyPress = DBEdit8KeyPress
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 279
    Width = 548
    Height = 242
    BevelInner = bvLowered
    TabOrder = 5
    object DBGrid2: TDBGrid
      Left = 8
      Top = 8
      Width = 529
      Height = 201
      DataSource = DataSource_tbcomissoes_detail
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Parcelapaga_com'
          Title.Caption = 'Parcela Nro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pagaem_pdd'
          Title.Caption = 'Data Pagto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valorpagto_com'
          Title.Caption = 'Valor do Pagto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentcomissao_pdd'
          Title.Caption = '% da Comiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valorcomissao_com'
          Title.Caption = 'Valor Comiss'#227'o'
          Visible = True
        end>
    end
    object edtTotalComissoes: TEdit
      Left = 416
      Top = 215
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 535
    Width = 240
    Height = 25
    DataSource = DataSource_tbcomissoes_detail
    TabOrder = 6
  end
  object DataSource_tbcomissoes_detail: TDataSource
    DataSet = DMConexao.ClientDataSet_tbcomissoes
    OnDataChange = DataSource_tbcomissoes_detailDataChange
    Left = 392
    Top = 303
  end
  object DataSource_tbpedido_master: TDataSource
    DataSet = DMConexao.ClientDataSet_tbpedidos
    Left = 296
  end
end
