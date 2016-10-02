object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 288
  ClientWidth = 777
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
    Left = 304
    Top = 120
    Width = 151
    Height = 42
    Caption = 'CommSys'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 761
    Height = 57
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 65
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Cidades'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 696
      Top = 8
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
    object SpeedButton3: TSpeedButton
      Left = 144
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Vendedores'
      Flat = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 215
      Top = 8
      Width = 105
      Height = 33
      Caption = 'Representada'
      Flat = True
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 316
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Clientes'
      Flat = True
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 403
      Top = 8
      Width = 58
      Height = 33
      Caption = 'Codigos'
      Flat = True
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 467
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Pedidos'
      Flat = True
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 538
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Comiss'#245'es'
      Flat = True
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 617
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Consultar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton9Click
    end
    object SpeedButton10: TSpeedButton
      Left = 8
      Top = 8
      Width = 57
      Height = 33
      Caption = 'Login'
      Flat = True
    end
  end
end
