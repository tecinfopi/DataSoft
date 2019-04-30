object F_CadastrosClientes: TF_CadastrosClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastros de Clientes'
  ClientHeight = 367
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 437
    Height = 325
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Lan'#231'amentos'
      object Label1: TLabel
        Left = 8
        Top = 0
        Width = 40
        Height = 13
        Caption = 'C'#243'digo :'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 68
        Top = 0
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 40
        Width = 52
        Height = 13
        Caption = 'Endere'#231'o :'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 8
        Top = 82
        Width = 35
        Height = 13
        Caption = 'Bairro :'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 247
        Top = 82
        Width = 26
        Height = 13
        Caption = 'Cep :'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 8
        Top = 125
        Width = 40
        Height = 13
        Caption = 'Cidade :'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 247
        Top = 125
        Width = 13
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 8
        Top = 168
        Width = 39
        Height = 13
        Caption = 'CnpjCpf'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 247
        Top = 168
        Width = 28
        Height = 13
        Caption = 'InsRg'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 8
        Top = 211
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 8
        Top = 254
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 285
        Top = 125
        Width = 34
        Height = 13
        Caption = 'Pessoa'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 325
        Top = 125
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit13
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 16
        Width = 54
        Height = 21
        DataField = 'ID_CLI'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 68
        Top = 16
        Width = 351
        Height = 21
        DataField = 'NOME'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 56
        Width = 411
        Height = 21
        DataField = 'ENDERECO'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 98
        Width = 233
        Height = 21
        DataField = 'BAIRRO'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 247
        Top = 98
        Width = 172
        Height = 21
        DataField = 'CEP'
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 141
        Width = 233
        Height = 21
        DataField = 'CIDADE'
        DataSource = DataSource1
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 247
        Top = 141
        Width = 30
        Height = 21
        DataField = 'ESTADO'
        DataSource = DataSource1
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 8
        Top = 184
        Width = 233
        Height = 21
        DataField = 'CNPJCPF'
        DataSource = DataSource1
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 247
        Top = 184
        Width = 172
        Height = 21
        DataField = 'INSCRG'
        DataSource = DataSource1
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 8
        Top = 227
        Width = 411
        Height = 21
        DataField = 'EMAIL'
        DataSource = DataSource1
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 8
        Top = 270
        Width = 411
        Height = 21
        DataField = 'OBS'
        DataSource = DataSource1
        TabOrder = 12
      end
      object DBEdit12: TDBEdit
        Left = 285
        Top = 141
        Width = 17
        Height = 21
        DataField = 'PESSOA'
        DataSource = DataSource1
        TabOrder = 7
      end
      object DBEdit13: TDBEdit
        Left = 308
        Top = 141
        Width = 111
        Height = 21
        DataField = 'DATA'
        DataSource = DataSource1
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Pesquisa'
      ImageIndex = 1
      object Label14: TLabel
        Left = 16
        Top = 3
        Width = 133
        Height = 13
        Caption = 'Digite os dados da pesquisa'
      end
      object txtvalorpesquisa: TEdit
        Left = 16
        Top = 22
        Width = 305
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 327
        Top = 3
        Width = 92
        Height = 40
        Caption = '&Pesquisar'
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 47
        Width = 424
        Height = 248
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CLI'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Descri'#231#227'o'
            Width = 263
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 325
    Width = 437
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object BtnIncluir: TBitBtn
      Left = 1
      Top = 0
      Width = 85
      Height = 41
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BtnIncluirClick
    end
    object BTnAlterar: TBitBtn
      Left = 85
      Top = 0
      Width = 85
      Height = 41
      Caption = '&Alterar'
      TabOrder = 1
      OnClick = BTnAlterarClick
    end
    object BtnSalvar: TBitBtn
      Left = 170
      Top = 0
      Width = 85
      Height = 41
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 2
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      Left = 253
      Top = 0
      Width = 85
      Height = 41
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnExcluir: TBitBtn
      Left = 338
      Top = 0
      Width = 85
      Height = 41
      Caption = '&Excluir'
      TabOrder = 4
      OnClick = BtnExcluirClick
    end
  end
  object DataSource1: TDataSource
    DataSet = Dm.QryClientes
    Left = 280
    Top = 24
  end
end
