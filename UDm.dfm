object Dm: TDm
  OldCreateOrder = False
  Height = 296
  Width = 371
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\DataSoft\Banco\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object Transacoes: TFDTransaction
    Connection = Conexao
    Left = 104
    Top = 24
  end
  object QryClientes: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'Select * from CLIENTES')
    Left = 176
    Top = 24
    object QryClientesID_CLI: TIntegerField
      FieldName = 'ID_CLI'
      Origin = 'ID_CLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object QryClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 30
    end
    object QryClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object QryClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 15
    end
    object QryClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 15
    end
    object QryClientesESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object QryClientesCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
      Size = 30
    end
    object QryClientesDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      EditMask = '!99/99/0000;1;_'
    end
    object QryClientesINSCRG: TStringField
      FieldName = 'INSCRG'
      Origin = 'INSCRG'
      Size = 15
    end
    object QryClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object QryClientesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 30
    end
    object QryClientesPESSOA: TStringField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object QrySetor: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'Select * from SETORES')
    Left = 240
    Top = 24
  end
  object QrySetIns: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'Select * from SETORES')
    Left = 304
    Top = 24
    object QrySetInsID_SET: TIntegerField
      FieldName = 'ID_SET'
      Origin = 'ID_SET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QrySetInsNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object QrySetInsDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QrySetInsOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
    end
  end
end
