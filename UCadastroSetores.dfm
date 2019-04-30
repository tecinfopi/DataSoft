object F_cadastrosetores: TF_cadastrosetores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Setores'
  ClientHeight = 237
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 407
    Height = 193
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&Lan'#231'amentos'
      object Label2: TLabel
        Left = 14
        Top = 22
        Width = 41
        Height = 26
        Caption = 'C'#243'digo.:'#13#10
      end
      object Label3: TLabel
        Left = 14
        Top = 54
        Width = 35
        Height = 13
        Caption = 'Nome.:'
      end
      object Label4: TLabel
        Left = 14
        Top = 86
        Width = 37
        Height = 13
        Caption = 'Data .: '
      end
      object Label5: TLabel
        Left = 14
        Top = 118
        Width = 33
        Height = 13
        Caption = 'Obs .: '
      end
      object txtedtcod: TEdit
        Left = 61
        Top = 19
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 0
      end
      object txtedtnome: TEdit
        Left = 61
        Top = 51
        Width = 322
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object txtedtdata: TMaskEdit
        Left = 61
        Top = 83
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
      end
      object txtedtobs: TEdit
        Left = 61
        Top = 115
        Width = 322
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Pesquisar'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 131
        Height = 13
        Caption = 'Digite os dados da consulta'
      end
      object txtvalorpesquisa: TEdit
        Left = 3
        Top = 22
        Width = 294
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 305
        Top = 3
        Width = 93
        Height = 40
        Caption = 'Consultar'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 44
        Width = 399
        Height = 120
        DataSource = DataSource1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 4
    Top = 202
    Width = 75
    Height = 29
    Caption = '&Incluir'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 85
    Top = 202
    Width = 75
    Height = 29
    Caption = '&Alterar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 166
    Top = 202
    Width = 75
    Height = 29
    Caption = '&Salvar'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 247
    Top = 202
    Width = 75
    Height = 29
    Caption = '&Cancelar'
    TabOrder = 4
  end
  object BitBtn6: TBitBtn
    Left = 328
    Top = 202
    Width = 75
    Height = 29
    Caption = '&Excluir'
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = Dm.QrySetor
    OnDataChange = DataSource1DataChange
    Left = 204
    Top = 8
  end
end
