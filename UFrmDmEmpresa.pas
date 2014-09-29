unit UFrmDmEmpresa;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Bde.DBTables;

type
  TDmEmpresa = class(TDataModule)
    TbSetor: TTable;
    TbDependente: TTable;
    TbFuncionario: TTable;
    DsSetor: TDataSource;
    DsDependente: TDataSource;
    DsFuncionario: TDataSource;
    TbSetorSetCodigo: TIntegerField;
    TbSetorSetNome: TStringField;
    TbSetorSetLocal: TStringField;
    TbFuncionarioFunCodigo: TIntegerField;
    TbFuncionarioSetCodigo: TIntegerField;
    TbFuncionarioFunNome: TStringField;
    TbFuncionarioFunDataNasc: TDateField;
    TbFuncionarioFunSexo: TStringField;
    TbFuncionarioFunEndereco: TStringField;
    TbFuncionarioFunBairro: TStringField;
    TbFuncionarioFunCidade: TStringField;
    TbFuncionarioFunEstado: TStringField;
    TbFuncionarioFunCEP: TStringField;
    TbFuncionarioFunFone: TStringField;
    TbFuncionarioFunMail: TStringField;
    TbFuncionarioFunSalario: TCurrencyField;
    TbDependenteDepCodigo: TIntegerField;
    TbDependenteFunCodigo: TIntegerField;
    TbDependenteDepNome: TStringField;
    TbDependenteDepDataNasc: TDateField;
    TbDependenteDepSexo: TStringField;
    TbDependenteDepParentesco: TIntegerField;
    procedure TbFuncionarioNewRecord(DataSet: TDataSet);
    procedure TbFuncionarioFunDataNascValidate(Sender: TField);
    procedure TbDependenteNewRecord(DataSet: TDataSet);
    procedure TbFuncionarioBeforeDelete(DataSet: TDataSet);
    procedure TbFuncionarioAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmEmpresa: TDmEmpresa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmEmpresa.TbDependenteNewRecord(DataSet: TDataSet);
begin
  //Há diferença entre 'f' e 'F'
  TbDependente.FieldByName('DepSexo').AsString:='F';
  TbDependente.FieldByName('DepParentesco').AsInteger:=2;
end;

procedure TDmEmpresa.TbFuncionarioAfterDelete(DataSet: TDataSet);
begin
  //Habilitar controles data aware
  TbDependente.EnableControls;
end;

procedure TDmEmpresa.TbFuncionarioBeforeDelete(DataSet: TDataSet);
begin
  if TbDependente.Locate('FunCodigo',tbFuncionario.FieldByName('FunCodigo').AsInteger,[]) then
  begin
     //desabilitar data awares
     TbDependente.DisableControls;
     {Aplicar e ligar o filtro para que a tabela considere apenas os registros que tem a chave estrangeira
     com o código do funcionário a ser deletado}

     TbDependente.Filter:='FunCodigo='+TbFuncionario.FieldByName('FunCodigo').AsString;
     TbDependente.Filtered:=True;

     //Enquanto não for o fim da tabela, deletar os regisstros filtrados
     while not TbDependente.Eof do
      TbDependente.Delete;

     //Retuirar o filtro após a exclusão
     TbDependente.Filter:='';
     TbDependente.Filtered:=False;
  end;
end;

procedure TDmEmpresa.TbFuncionarioFunDataNascValidate(Sender: TField);
begin
  if TbFuncionarioFunDataNasc.Value>Date then
    raise Exception.Create('Data maior do que a atual!');
end;

procedure TDmEmpresa.TbFuncionarioNewRecord(DataSet: TDataSet);
begin
  TbFuncionario.FieldByName('FunSexo').AsString:='M';
end;

end.
