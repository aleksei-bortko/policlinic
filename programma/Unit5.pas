unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DBTables;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    ADOStoredProc1: TADOStoredProc;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
   table:string;
  end;

var
  Form5: TForm5;

implementation
 var tables: array[1..3] of string;
{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
var col:Tcolumn;  i:integer;
begin
label1.Caption:='';
label2.Caption:='';
dbgrid1.Columns.Clear;
ADOStoredProc1.First;

for i:=1 to   ADOStoredProc1.RecordCount do    begin
dbgrid1.Columns.Add();
//if  table='s_diagnosis' then begin
dbgrid1.Columns[i-1].FieldName:=ADOStoredProc1.FieldValues['col'];
dbgrid1.Columns[i-1].Title.Caption:=ADOStoredProc1.FieldValues['com'];
ADOStoredProc1.Next;
end;
dbedit1.DataField:= dbgrid1.Columns[0].FieldName;
Label1.Caption:=dbgrid1.Columns[0].Title.Caption;
dbedit2.DataField:= dbgrid1.Columns[1].FieldName;
Label2.Caption:=dbgrid1.Columns[1].Title.Caption;

Label3.visible:=false;
dbedit3.Visible:=false;


if   dbgrid1.Columns.Count>2 then begin
dbedit3.DataField:= dbgrid1.Columns[2].FieldName;
Label3.Caption:=dbgrid1.Columns[2].Title.Caption;
Label3.visible:=true;
dbedit3.Visible:=true;
end;
{
else if  table='s_positions' then begin
dbgrid1.Columns[0].FieldName:='position_name';
dbgrid1.Columns[0].Title.Caption:='Название должности' ;
dbgrid1.Columns.Add();
dbgrid1.Columns[1].FieldName:='salary';
dbgrid1.Columns[1].Title.Caption:='Размер оклада' ;
end
else
//s_units
 begin
dbgrid1.Columns[0].FieldName:='unit';
dbgrid1.Columns[0].Title.Caption:='Отделение' ;
 end;

//dbgrid1.Columns[0].visible:=false;
if  table='s_diagnosis' then
dbedit1.DataField:='diagnosis_name';
label1.Caption:=dbgrid1.Columns[0].Title.caption;
if  table='s_positions' then label2.Caption:=dbgrid1.Columns[1].Title.caption;
dbedit2.Visible:=false;

if  table='s_units' then label2.Caption:=dbgrid1.Columns[1].Title.caption;
dbedit2.Visible:=false;
dbedit1.DataField:='unit';   }
adotable1.close;
adotable1.TableName:=table;
adotable1.Open;
end;

procedure TForm5.DBGrid1DblClick(Sender: TObject);
var s:TFieldList;
begin
s:=adotable1.FieldList;
 adotable1.Fields.Fields[1].AsString;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
adotable1.Insert;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
adotable1.Post;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
dbgrid1.Columns[0].Visible:=false;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 adotable1.Close;
ADOStoredProc1.Active:=false;
end;

end.
