unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls, DBCtrls, DBTables,
  Mask;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    DataSource2: TDataSource;
    ADOUsers: TADOTable;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
 uses Unit4;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
ADOUsers.open;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
combobox1.ItemIndex:=ADOUsers.FieldValues['admin'];
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
ADOUsers.edit;
ADOUsers.FieldByName('admin').Value:=combobox1.ItemIndex;
if checkbox1.Checked
then ADOUsers.FieldByName('password').Value:=edit1.Text;
ADOUsers.Post;
ADOUsers.close;  ADOUsers.open;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
ADOUsers.insert;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOUsers.Close;
end;

end.
