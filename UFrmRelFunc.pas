unit UFrmRelFunc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls, Data.DB,
  Bde.DBTables, QRCtrls;

type
  TfrmRelFunc = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    Código: TQRLabel;
    Nome: TQRLabel;
    Sexo: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    TbFunc: TTable;
    TbFuncFunCodigo: TIntegerField;
    TbFuncSetCodigo: TIntegerField;
    TbFuncFunNome: TStringField;
    TbFuncFunDataNasc: TDateField;
    TbFuncFunSexo: TStringField;
    TbFuncFunEndereco: TStringField;
    TbFuncFunBairro: TStringField;
    TbFuncFunCidade: TStringField;
    TbFuncFunEstado: TStringField;
    TbFuncFunCEP: TStringField;
    TbFuncFunFone: TStringField;
    TbFuncFunMail: TStringField;
    TbFuncFunSalario: TCurrencyField;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFunc: TfrmRelFunc;

implementation

{$R *.dfm}


end.
