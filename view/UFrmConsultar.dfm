object FrmConsultar: TFrmConsultar
  Left = 0
  Top = 0
  Caption = 'Consultar'
  ClientHeight = 425
  ClientWidth = 782
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
  object SpeedButton2: TSpeedButton
    Left = 722
    Top = 384
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
  object Panel1: TPanel
    Left = 8
    Top = 127
    Width = 769
    Height = 251
    BorderStyle = bsSingle
    TabOrder = 0
    object Label4: TLabel
      Left = 322
      Top = 215
      Width = 72
      Height = 13
      Caption = 'Valor Comiss'#227'o'
    end
    object Label5: TLabel
      Left = 552
      Top = 216
      Width = 70
      Height = 13
      Caption = 'Valor do Pagto'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 745
      Height = 185
      DataSource = DataSource_comissoes
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Pedido_pdd'
          Title.Caption = 'Pedido'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Parcelapaga_com'
          Title.Caption = 'Nro Parcelas'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_for'
          Title.Caption = 'Representada'
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_cli'
          Title.Caption = 'Cliente'
          Width = 232
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valorcomissao_com'
          Title.Caption = 'Comiss'#227'o'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valorpagto_com'
          Title.Caption = 'Valor da Parcela'
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 400
      Top = 216
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 632
      Top = 216
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 766
    Height = 113
    BevelKind = bkFlat
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Pedido'
    end
    object Label2: TLabel
      Left = 97
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 440
      Top = 5
      Width = 68
      Height = 13
      Caption = 'Representada'
    end
    object Label6: TLabel
      Left = 608
      Top = 51
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object Label7: TLabel
      Left = 442
      Top = 51
      Width = 66
      Height = 13
      Caption = 'Status Pedido'
    end
    object Label8: TLabel
      Left = 280
      Top = 51
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object btnFiltrar: TBitBtn
      Left = 8
      Top = 68
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 0
      OnClick = btnFiltrarClick
    end
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 75
      Height = 21
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 97
      Top = 24
      Width = 328
      Height = 21
      TabOrder = 2
      Text = '%'
    end
    object ComboBox2: TComboBox
      Left = 440
      Top = 24
      Width = 313
      Height = 21
      TabOrder = 3
      Text = '%'
    end
    object ComboBox3: TComboBox
      Left = 608
      Top = 70
      Width = 145
      Height = 21
      TabOrder = 4
      Text = '%'
    end
    object Combobox4: TComboBox
      Left = 440
      Top = 70
      Width = 145
      Height = 21
      TabOrder = 5
      Text = '%'
      Items.Strings = (
        '%'
        'Aberto'
        'Liquidado'
        'Pendente')
    end
    object Combobox5: TComboBox
      Left = 280
      Top = 70
      Width = 145
      Height = 21
      TabOrder = 6
      Text = '%'
    end
  end
  object DataSource_comissoes: TDataSource
    DataSet = DMConexao.ClientDataSet_comissoes
    Left = 400
    Top = 240
  end
end
