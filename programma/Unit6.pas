unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, ComCtrls, DBCtrls, Mask, Buttons;

type
  TForm6 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ADOStoredProc1: TADOStoredProc;
    ADOTable1: TADOTable;
    Edit1: TEdit;
    DBLookupComboBoxDiagnosis: TDBLookupComboBox;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    BitBtn1: TBitBtn;
    ADOTable_SickLeaveCert: TADOTable;
    ADOTable2: TADOTable;
    ADOStoredProcLeave: TADOStoredProc;
    EditPatient: TEdit;
    CheckBox1: TCheckBox;
    EditDoctorName: TEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DateTimePicker2: TDateTimePicker;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DataSourceUnits: TDataSource;
    ADOTableUnits: TADOTable;
    ADOTablePositions: TADOTable;
    DataSourcePositions: TDataSource;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    DataSourceDoctor_Ex: TDataSource;
    ADODataSetDoctors: TADODataSet;
    ADODataSetPatients: TADODataSet;
    DataSourceDoctorsDataSet: TDataSource;
    DataSourcePatientDataSet: TDataSource;
    Label14: TLabel;
    Button4: TButton;
    DBEdit5: TDBEdit;
    CheckBox2: TCheckBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
if   ADOStoredProc1.Parameters.Count>0 then
 begin
ADOStoredProc1.Parameters[0].Value:= DBLookupComboBox1.KeyValue;
ADOStoredProc1.Parameters[1].Value:= DateTimePicker1.DateTime;
ADOStoredProc1.Parameters[2].Value:= DBLookupComboBox2.KeyValue;
ADOStoredProc1.Parameters[3].Value:= DBLookupComboBox3.KeyValue;
ADOStoredProc1.Parameters[4].Value:= edit1.Text;
if ADOStoredProc1.Parameters[5].Value=0 then  ADOStoredProc1.Parameters[5].Value:= -1;
ADOStoredProc1.Prepared:=true;
ADOStoredProc1.ExecProc;
ADOStoredProc1.Parameters.Refresh;

end;
ADOStoredProc1.Close;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form4.ADOExResoults.close;
form4.ADOExResoults.open;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
if ADOStoredProcLeave.ProcedureName='close_sick_leave_cert' then
ADOStoredProcLeave.parameters.ParamByName('date_end_').value:=DateTimePicker8.Date
else
begin
ADOStoredProcLeave.parameters.ParamByName('patient_name_').value:=EditPatient.text;
ADOStoredProcLeave.parameters.ParamByName('diagnosis_').value:=DBLookupComboBoxDiagnosis.keyvalue;
ADOStoredProcLeave.parameters.ParamByName('date_begin_').value:=DateTimePicker7.Date;
if not (CheckBox1.checked) then  ADOStoredProcLeave.parameters.ParamByName('date_end_').value:=DateTimePicker8.Date
else ADOStoredProcLeave.parameters.ParamByName('date_end_').value:=null;
ADOStoredProcLeave.parameters.ParamByName('doctor_name_').value:=EditDoctorName.text;
end;
ADOStoredProcLeave.Open;
ADOStoredProcLeave.execproc;
ADOStoredProcLeave.close;
//ADOTableV_SickLeaveCert
form4.ADOTableV_SickLeaveCert.Close;
form4.ADOTableV_SickLeaveCert.open;
EditPatient.Enabled:=true;
EditDoctorName.Enabled:=true;
DateTimePicker7.Enabled:=true;
DBLookupComboBoxDiagnosis.Enabled:=true;
close;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
form4.ADODoctors.FieldByName('date_on').Value:= DateTimePicker2.Date;
form4.ADODoctors.post;
showmessage('Запись успешно сохранена');
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
form4.ADOPatinetsStat.FieldByName('patient').Value:=dblookupcombobox6.KeyValue;
//form4.ADOPatinetsStat.FieldByName('diagnosis').Value:=dblookupcombobox8.KeyValue;
form4.ADOPatinetsStat.FieldByName('doctor').Value:=dblookupcombobox7.KeyValue;
form4.ADOPatinetsStat.FieldByName('date_on').Value:=DateTimePicker3.date;
form4.ADOPatinetsStat.FieldByName('date_off').Value:=DateTimePicker4.date;
form4.ADOPatinetsStat.Post;
close;
end;

end.
