unit UFrmCadSetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TfrmCadSetor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    bbtSair: TBitBtn;
    bbtRemover: TBitBtn;
    bbtCancelar: TBitBtn;
    bbtConfirmar: TBitBtn;
    bbtInserir: TBitBtn;
    bbtEditar: TBitBtn;
    DBText1: TDBText;
    procedure bbtSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbtInserirClick(Sender: TObject);
    procedure bbtEditarClick(Sender: TObject);
    procedure bbtRemoverClick(Sender: TObject);
    procedure bbtCancelarClick(Sender: TObject);
    procedure bbtConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    procedure TrataBotoes;

  public
    { Public declarations }
  end;

var
  frmCadSetor: TfrmCadSetor;

implementation

{$R *.dfm}

uses UFrmDmEmpresa;

procedure TfrmCadSetor.bbtCancelarClick(Sender: TObject);
begin
  DmEmpresa.TbSetor.Cancel;
  TrataBotoes;
end;

procedure TfrmCadSetor.bbtConfirmarClick(Sender: TObject);
begin
  DmEmpresa.TbSetor.Post;
  TrataBotoes;
end;

procedure TfrmCadSetor.bbtEditarClick(Sender: TObject);
begin
  DmEmpresa.TbSetor.Edit;
  TrataBotoes;
end;

procedure TfrmCadSetor.bbtInserirClick(Sender: TObject);
var ProxNum: Integer;
begin
  TrataBotoes;
  DmEmpresa.TbSetor.Last;
  ProxNum:=DmEmpresa.TbSetor.FieldByName('SetCodigo').AsInteger + 1;
  DmEmpresa.TbSetor.Append;
  DmEmpresa.TbSetor.FieldByName('SetCodigo').AsInteger:=ProxNum;
  DbEdit2.SetFocus;
end;

procedure TfrmCadSetor.bbtRemoverClick(Sender: TObject);
begin
  if DmEmpresa.TbSetor.RecordCount =0 then
    ShowMessage('Tabela Vazia!')
  else if DMEmpresa.TbFuncionario.Locate('SetCodigo',DmEmpresa.TbSetor.FieldByName('SetCodigo').AsInteger,[]) then
    ShowMessage('Este setor possui funcionários,'+#13+'favor realocá-los antes de deletar.')
    else if MessageDLG('Tem certeza que deseja remover o setor: '+#13+DmEmpresa.TbSetor.FieldByName('SetNome').AsString+'?',mtConfirmation,[mbYes,mbNo],0)= mrYes then
      DmEmpresa.TbSetor.Delete;
end;

procedure TfrmCadSetor.bbtSairClick(Sender: TObject);
begin
  frmCadSetor.Close;
end;

procedure TfrmCadSetor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DmEmpresa.TbSetor.State in [dsEdit, dsInsert] then
    if MessageDLG('Existem dados pendentes,'+#13+'deseja gravá-los?',mtConfirmation,[mbYes,mbNo],0)= mrYes then
      CanClose:=False
    else
      begin
        DmEmpresa.TbSetor.Cancel;
        TrataBotoes;
        CanClose:=True;
      end;
end;

procedure TfrmCadSetor.TrataBotoes;
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
