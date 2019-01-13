unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, TeeProcs, TeEngine, Chart, DbChart,
  QRTEE, Series, DB, ADODB;

type
  TForm8 = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QuickRep2: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel7: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    DetailBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel2: TQRLabel;
    DataSource2: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOStoredProc1.close;
end;

end.
