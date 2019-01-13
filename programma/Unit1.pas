unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, DBCtrls, ComCtrls, DBTables,
  ExtCtrls, Menus,DateUtils, jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);

    procedure Button1Click(Sender: TObject);

 

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);

begin
close;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
adoquery1.Close;
adoquery1.Parameters[0].Value:=edit2.Text;
adoquery1.Parameters[1].Value:=edit1.Text;
adoquery1.Open;
//adoquery1.ExecSQL;
if   (adoquery1.RecordCount>0)   then begin
  setAdm(adoquery1.FieldValues['admin']);
 setName_(adoquery1.FieldValues['user_']);
 adoquery1.Close;
 ADOConnection1.connected:=false;
form4.show();

hide();
end
else
ShowMessage('Ќеверное им€ пользовател€ и (или) пароль');
end;





end.
