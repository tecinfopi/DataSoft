object F_principal: TF_principal
  Left = 0
  Top = 0
  Caption = 'DataSoft - Controle '
  ClientHeight = 468
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 449
    Width = 747
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 73
    Height = 449
    Align = alLeft
    BevelInner = bvLowered
    Color = clGrayText
    ParentBackground = False
    TabOrder = 0
    object BtnSair: TBitBtn
      Left = 2
      Top = 618
      Width = 71
      Height = 47
      Caption = '&Sair'
      TabOrder = 3
      OnClick = BtnSairClick
    end
    object BtnClientes: TBitBtn
      Left = 2
      Top = 0
      Width = 71
      Height = 47
      Caption = '&Clientes'
      TabOrder = 0
      OnClick = BtnClientesClick
    end
    object BtnProdutos: TBitBtn
      Left = 2
      Top = 46
      Width = 71
      Height = 47
      Caption = '&Produtos'
      TabOrder = 1
    end
    object BtnEmpresas: TBitBtn
      Left = 2
      Top = 92
      Width = 71
      Height = 47
      Caption = '&Empresas'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 73
    Top = 0
    Width = 674
    Height = 449
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 168
    Top = 24
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Clientes1: TMenuItem
        Caption = '&Clientes'
        OnClick = Clientes1Click
      end
      object Fornecedores1: TMenuItem
        Caption = '&Fornecedores'
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
      end
      object Equipamentos1: TMenuItem
        Caption = '&Equipamentos'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Empresas1: TMenuItem
        Caption = '&Empresas'
      end
      object Filiais1: TMenuItem
        Caption = 'F&iliais'
      end
      object Setores1: TMenuItem
        Caption = '&Setores'
        OnClick = Setores1Click
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        OnClick = Sair1Click
      end
    end
  end
end
