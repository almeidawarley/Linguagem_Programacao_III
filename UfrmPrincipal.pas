unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Ar1: TMenuItem;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    Relatrio1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    Setor1: TMenuItem;
    Funcionrio1: TMenuItem;
    Dependente1: TMenuItem;
    Setor2: TMenuItem;
    Funcionrios1: TMenuItem;
    Image1: TImage;
    procedure Setor1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Dependente1Click(Sender: TObject);
    procedure Setor2Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
    procedure Funcionrios2Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UFrmCadSetor, UFrmCadFuncionario, UFrmCadDependente, UFrmConSetFun,
  UFrmRelFunc, UFrmRelSetFun, ABOUT, UFrmConFuncionario;

procedure TfrmPrincipal.Dependente1Click(Sender: TObject);
begin
  frmCadDependente.Show;
end;

procedure TfrmPrincipal.Funcionrio1Click(Sender: TObject);
begin
   frmCadFuncionario.show;
end;

procedure TfrmPrincipal.Funcionrios1Click(Sender: TObject);
begin
  frmRelFunc.QuickRep1.Preview;
end;

procedure TfrmPrincipal.Funcionrios2Click(Sender: TObject);
begin
  frmConFuncionario.show;
end;



procedure TfrmPrincipal.Setor1Click(Sender: TObject);
begin
  frmCadSetor.show;
end;

procedure TfrmPrincipal.Setor2Click(Sender: TObject);
begin
  frmConSetFun.show;
end;

procedure TfrmPrincipal.Setores1Click(Sender: TObject);
begin
  FrmRelSetFun.Show;
end;

procedure TfrmPrincipal.Sobre1Click(Sender: TObject);
begin
  AboutBox.show;
end;

end.
