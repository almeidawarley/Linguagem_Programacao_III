unit UFrmCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Mask, Data.DB;

type
  TfrmCadFuncionario = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    bbtInserir: TBitBtn;
    bbtEditar: TBitBtn;
    bbtRemover: TBitBtn;
    bbtCancelar: TBitBtn;
    bbtConfirmar: TBitBtn;
    bbtSair: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbtInserirClick(Sender: TObject);
    procedure bbtEditarClick(Sender: TObject);
    procedure bbtRemoverClick(Sender: TObject);
    procedure bbtCancelarClick(Sender: TObject);
    procedure bbtConfirmarClick(Sender: TObject);
    procedure bbtSairClick(Sender: TObject);


  private
    { Private declarations }
     procedure TrataBotoes;
  public
    { Public declarations }
  end;

var
  frmCadFuncionario: TfrmCadFuncionario;

implementation

{$R *.dfm}

uses UFrmDmEmpresa;





{ TfrmCadFuncionario }

procedure TfrmCadFuncionario.bbtCancelarClick(Sender: TObject);
begin
  DmEmpresa.TbFuncionario.Cancel;
  TrataBotoes;
end;

procedure TfrmCadFuncionario.bbtConfirmarClick(Sender: TObject);
begin
  DmEmpresa.TbFuncionario.Post;
  TrataBotoes;
end;

procedure TfrmCadFuncionario.bbtEditarClick(Sender: TObject);
begin
  DmEmpresa.TbFuncionario.Edit;
  TrataBotoes;
end;

procedure TfrmCadFuncionario.bbtInserirClick(Sender: TObject);
var ProxNum: Integer;
begin
  TrataBotoes;
  DmEmpresa.TbFuncionario.Last;
  ProxNum:=DmEmpresa.TbFuncionario.FieldByName('FunCodigo').AsInteger + 1;
  DmEmpresa.TbFuncionario.Append;
  DmEmpresa.TbFuncionario.FieldByName('FunCodigo').AsInteger:=ProxNum;
  DbEdit3.SetFocus;
end;

procedure TfrmCadFuncionario.bbtRemoverClick(Sender: TObject);
begin
  if DmEmpresa.TbFuncionario.RecordCount=0 then
    ShowMessage('Tabela vazia!')
  else
    if MessageDLG('Tem certeza que deseja remover o funcionário: '+#13+DmEmpresa.TbFuncionario.FieldByName('FunNome').AsString+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      DmEmpresa.TbFuncionario.Delete;

end;

procedure TfrmCadFuncionario.bbtSairClick(Sender: TObject);
begin
  FrmCadFuncionario.Close;
end;

procedure TfrmCadFuncionario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DmEmpresa.TbFuncionario.State in [dsEdit,dsInsert] then
    if MessageDLG('Existem dados pendentes,'+#13+'deseja gravá-los?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      CanClose:=False
    else
      begin
        DmEmpresa.TbFuncionario.Cancel;
        TrataBotoes;
        CanClose:=True;
      end;

end;

procedure TfrmCadFuncionario.TrataBotoes;
begin
  bbtInserir.Enabled := not bbtInserir.Enabled;
  bbtEditar.Enabled := not bbtEditar.Enabled;
  bbtRemover.Enabled := not bbtRemover.Enabled;
  bbtCancelar.Enabled := not bbtCancelar.Enabled;
  bbtConfirmar.Enabled := not bbtConfirmar.Enabled;
  bbtSair.Enabled := not bbtSair.Enabled;
  DbNavigator1.Enabled := not DbNavigator1.Enabled;
end;

end.
