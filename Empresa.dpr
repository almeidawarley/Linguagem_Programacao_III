program Empresa;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UFrmDmEmpresa in 'UFrmDmEmpresa.pas' {DmEmpresa: TDataModule},
  UFrmCadSetor in 'UFrmCadSetor.pas' {frmCadSetor},
  UFrmCadFuncionario in 'UFrmCadFuncionario.pas' {frmCadFuncionario},
  UFrmCadDependente in 'UFrmCadDependente.pas' {FrmCadDependente},
  UFrmConFuncionario in 'UFrmConFuncionario.pas' {FrmConFuncionario},
  UFrmConSetFun in 'UFrmConSetFun.pas' {frmConSetFun},
  UFrmRelFunc in 'UFrmRelFunc.pas' {frmRelFunc},
  UFrmRelSetFun in 'UFrmRelSetFun.pas' {FrmRelSetFun},
  Vcl.Themes,
  Vcl.Styles,
  ABOUT in 'ABOUT.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDmEmpresa, DmEmpresa);
  Application.CreateForm(TfrmCadSetor, frmCadSetor);
  Application.CreateForm(TfrmCadFuncionario, frmCadFuncionario);
  Application.CreateForm(TFrmCadDependente, FrmCadDependente);
  Application.CreateForm(TFrmConFuncionario, FrmConFuncionario);
  Application.CreateForm(TfrmConSetFun, frmConSetFun);
  Application.CreateForm(TfrmRelFunc, frmRelFunc);
  Application.CreateForm(TFrmRelSetFun, FrmRelSetFun);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
