unit UFrmConSetFun;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConSetFun = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConSetFun: TfrmConSetFun;

implementation

{$R *.dfm}

uses UFrmDmEmpresa, UFrmRelSetFun;

procedure TfrmConSetFun.BitBtn1Click(Sender: TObject);
begin
  frmConSetFun.Close;
end;

procedure TfrmConSetFun.BitBtn2Click(Sender: TObject);
begin
  with FrmRelSetFun do
    begin
      TbSetor.Filter := 'SEtCodigo=' + DmEmpresa.TbSetor.FieldByName('SetCodigo').AsString;
      TbSetor.Filtered := True;
      QuickRep1.PreviewModal;
      TbSetor.Filter := '';
      TbSetor.Filtered := False;
    end;
end;

procedure TfrmConSetFun.DBLookupComboBox1Click(Sender: TObject);
begin
  with DmEmpresa do
  begin
    tbFuncionario.Filter:='SetCodigo='+tbSetor.FieldByName('SetCodigo').AsString;
    tbFuncionario.Filtered:=True;
  end;
  DBGrid1.DataSource:=DmEmpresa.DsFuncionario;
end;


procedure TfrmConSetFun.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DmEmpresa do
  begin
    tbFuncionario.Filter:='';
    tbFuncionario.Filtered:=False;
  end;
    DBGrid1.DataSource:= nil;
end;

end.
