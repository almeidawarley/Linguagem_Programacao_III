unit UFrmRelSetFun;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables, Vcl.ExtCtrls,
  QuickRpt, QRCtrls;

type
  TFrmRelSetFun = class(TForm)
    QuickRep1: TQuickRep;
    DsSetor: TDataSource;
    TbSetor: TTable;
    TbFuncionario: TTable;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSetFun: TFrmRelSetFun;

implementation

{$R *.dfm}

end.
