unit UFrmConFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TFrmConFuncionario = class(TForm)
    Label1: TLabel;
    BbtPesquisaCodigo: TBitBtn;
    BbtSair: TBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    procedure BbtPesquisaCodigoClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BbtSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConFuncionario: TFrmConFuncionario;

implementation

{$R *.dfm}

uses UFrmDmEmpresa, UFrmCadDependente, UFrmCadFuncionario;

procedure TFrmConFuncionario.BbtPesquisaCodigoClick(Sender: TObject);
begin
  if Edit1.Text<>'' then
    DmEmpresa.TbFuncionario.FindKey([Edit1.Text]);
end;

procedure TFrmConFuncionario.BbtSairClick(Sender: TObject);
begin
  FrmConFuncionario.Close;
end;

procedure TFrmConFuncionario.Edit1Enter(Sender: TObject);
begin
  Edit2.Clear;
  DmEmpresa.TbFuncionario.IndexName:='';
end;

procedure TFrmConFuncionario.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    BbtPesquisaCodigo.Click
  else
    if( (Key in ['0'..'9'] = FALSE) and (Word(Key) <> VK_BACK) ) then
      Key:=#0 ;
end;

procedure TFrmConFuncionario.Edit2Change(Sender: TObject);
begin
  if Edit2.Text <> '' then
    DmEmpresa.TbFuncionario.FindNearest([Edit2.Text]);
end;

procedure TFrmConFuncionario.Edit2Enter(Sender: TObject);
begin
  Edit1.Clear;
  DmEmpresa.TbFuncionario.IndexName:='IndFunNome';
end;

procedure TFrmConFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmEmpresa.TbDependente.FieldByName('FunCodigo').AsInteger := DmEmpresa.TbFuncionario.FieldByName('FunCodigo').AsInteger;
  DmEmpresa.TbFuncionario.IndexName:='';
  FrmCadDependente.DBEdit2.SetFocus;
end;

end.
