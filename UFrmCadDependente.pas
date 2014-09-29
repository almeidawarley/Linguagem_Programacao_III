unit UFrmCadDependente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Mask, Vcl.Buttons;

type
  TFrmCadDependente = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    bbtInserir: TBitBtn;
    bbtEditar: TBitBtn;
    bbtRemover: TBitBtn;
    bbtCancelar: TBitBtn;
    bbtConfirmar: TBitBtn;
    bbtSair: TBitBtn;
    procedure bbtInserirClick(Sender: TObject);
    procedure bbtEditarClick(Sender: TObject);
    procedure bbtRemoverClick(Sender: TObject);
    procedure bbtCancelarClick(Sender: TObject);
    procedure bbtConfirmarClick(Sender: TObject);
    procedure bbtSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
    procedure TrataBotoes;

  public
    { Public declarations }
  end;

var
  FrmCadDependente: TFrmCadDependente;

implementation

{$R *.dfm}

uses UFrmDmEmpresa, UFrmConFuncionario;



{ TFrmCadDependente }

procedure TFrmCadDependente.bbtCancelarClick(Sender: TObject);
begin
  DmEmpresa.TbDependente.Cancel;
  TrataBotoes;
end;

procedure TFrmCadDependente.bbtConfirmarClick(Sender: TObject);
begin
  try
  DmEmpresa.TbDependente.Post;
  TrataBotoes;
  except
    on E: EDataBaseError do
      Showmessage('Campo obrigatório sem preencher! ' +#13+#13+E.Message);
  end;
end;

procedure TFrmCadDependente.bbtEditarClick(Sender: TObject);
begin
  DmEmpresa.TbDependente.Edit;
  TrataBotoes;
end;

procedure TFrmCadDependente.bbtInserirClick(Sender: TObject);
var ProxNum: Integer;
begin
  TrataBotoes;
  DmEmpresa.TbDependente.Last;
  ProxNum:=DmEmpresa.TbDependente.FieldByName('DepCodigo').AsInteger+1;
  DmEmpresa.TbDependente.Append;
  DmEmpresa.TbDependente.FieldByName('DepCodigo').AsInteger:=ProxNum;
  DbEdit2.SetFocus;
end;

procedure TFrmCadDependente.bbtRemoverClick(Sender: TObject);
begin
  if DmEmpresa.TbDependente.RecordCount = 0 then
    ShowMessage('Tabela vazia!')
  else
    if MessageDLG('Tem certeza que deseja remover o funcionário: '+#13+DmEmpresa.TbDependente.FieldByName('DepNome').AsString+' ?',mtConfirmation, [mbYes,mbNo],0)=mrYes then
      DmEmpresa.TbDependente.Delete;


end;

procedure TFrmCadDependente.bbtSairClick(Sender: TObject);
begin
  FrmCadDependente.Close;
end;

procedure TFrmCadDependente.DBEdit2Exit(Sender: TObject);
begin
  if FrmCadDependente.DBEdit2.Text <> '' then
    if not DmEmpresa.TbFuncionario.FindKey([FrmCadDependente.DBEdit2.Text]) then
      begin
        ShowMessage('Código inválido');
        FrmCadDependente.DBEdit2.SetFocus;
      end;
end;

procedure TFrmCadDependente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DmEmpresa.TbDependente.State in [dsEdit,dsInsert] then
    if MessageDLG('Existem dados pendentes, '+#13+'deseja gravá-los?',mtConfirmation, [mbYes,mbNo],0)=mrYes then
      CanClose:=False
    else
      begin
        DmEmpresa.TbDependente.Cancel;
        TrataBotoes;
        CanClose:=True;
      end;

end;

procedure TFrmCadDependente.SpeedButton1Click(Sender: TObject);
begin
  FrmConFuncionario.Show;
end;

procedure TFrmCadDependente.TrataBotoes;
begin
  bbtInserir.Enabled := not bbtInserir.Enabled;
  bbtEditar.Enabled := not bbtEditar.Enabled;
  bbtRemover.Enabled := not bbtRemover.Enabled;
  bbtCancelar.Enabled := not bbtCancelar.Enabled;
  bbtConfirmar.Enabled := not bbtConfirmar.Enabled;
  bbtSair.Enabled := not bbtSair.Enabled;
  DbNavigator1.Enabled := not DbNavigator1.Enabled;
  SpeedButton1.Enabled := not SpeedButton1.Enabled;
end;

end.
