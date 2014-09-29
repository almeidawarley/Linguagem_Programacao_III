object DmEmpresa: TDmEmpresa
  OldCreateOrder = False
  Height = 377
  Width = 304
  object TbSetor: TTable
    Active = True
    DatabaseName = 'EMPRESA'
    TableName = 'Setor.db'
    Left = 40
    Top = 40
    object TbSetorSetCodigo: TIntegerField
      FieldName = 'SetCodigo'
    end
    object TbSetorSetNome: TStringField
      FieldName = 'SetNome'
      Size = 50
    end
    object TbSetorSetLocal: TStringField
      FieldName = 'SetLocal'
      Size = 40
    end
  end
  object TbDependente: TTable
    Active = True
    OnNewRecord = TbDependenteNewRecord
    DatabaseName = 'EMPRESA'
    TableName = 'Dependente.db'
    Left = 40
    Top = 136
    object TbDependenteDepCodigo: TIntegerField
      FieldName = 'DepCodigo'
    end
    object TbDependenteFunCodigo: TIntegerField
      FieldName = 'FunCodigo'
      Required = True
    end
    object TbDependenteDepNome: TStringField
      FieldName = 'DepNome'
      Required = True
      Size = 50
    end
    object TbDependenteDepDataNasc: TDateField
      FieldName = 'DepDataNasc'
      EditMask = '!99/99/00;1;_'
    end
    object TbDependenteDepSexo: TStringField
      FieldName = 'DepSexo'
      Size = 1
    end
    object TbDependenteDepParentesco: TIntegerField
      FieldName = 'DepParentesco'
    end
  end
  object TbFuncionario: TTable
    Active = True
    BeforeDelete = TbFuncionarioBeforeDelete
    AfterDelete = TbFuncionarioAfterDelete
    OnNewRecord = TbFuncionarioNewRecord
    DatabaseName = 'EMPRESA'
    TableName = 'Funcionario.db'
    Left = 40
    Top = 232
    object TbFuncionarioFunCodigo: TIntegerField
      FieldName = 'FunCodigo'
    end
    object TbFuncionarioSetCodigo: TIntegerField
      FieldName = 'SetCodigo'
    end
    object TbFuncionarioFunNome: TStringField
      FieldName = 'FunNome'
      Size = 50
    end
    object TbFuncionarioFunDataNasc: TDateField
      FieldName = 'FunDataNasc'
      OnValidate = TbFuncionarioFunDataNascValidate
      EditMask = '!99/99/00;1;_'
    end
    object TbFuncionarioFunSexo: TStringField
      FieldName = 'FunSexo'
      Size = 1
    end
    object TbFuncionarioFunEndereco: TStringField
      FieldName = 'FunEndereco'
      Size = 50
    end
    object TbFuncionarioFunBairro: TStringField
      FieldName = 'FunBairro'
      Size = 30
    end
    object TbFuncionarioFunCidade: TStringField
      FieldName = 'FunCidade'
      Size = 30
    end
    object TbFuncionarioFunEstado: TStringField
      FieldName = 'FunEstado'
      Size = 2
    end
    object TbFuncionarioFunCEP: TStringField
      FieldName = 'FunCEP'
      EditMask = '99\.999\-999;0;_'
      Size = 8
    end
    object TbFuncionarioFunFone: TStringField
      FieldName = 'FunFone'
      Size = 14
    end
    object TbFuncionarioFunMail: TStringField
      FieldName = 'FunMail'
      Size = 30
    end
    object TbFuncionarioFunSalario: TCurrencyField
      FieldName = 'FunSalario'
    end
  end
  object DsSetor: TDataSource
    AutoEdit = False
    DataSet = TbSetor
    Left = 136
    Top = 40
  end
  object DsDependente: TDataSource
    AutoEdit = False
    DataSet = TbDependente
    Left = 144
    Top = 136
  end
  object DsFuncionario: TDataSource
    AutoEdit = False
    DataSet = TbFuncionario
    Left = 136
    Top = 232
  end
end
