unit Unit4;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ADODB, DB, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids,
  DBCtrls,DateUtils, DBTables, Mask, Buttons, XPMan;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label14: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADODataSet2: TADODataSet;
    ADOStoredProc1: TADOStoredProc;
    cv: TDataSource;
    ADODataSet3: TADODataSet;
    DataSource4: TDataSource;
    ADODataSet4: TADODataSet;
    ADODataSet5: TADODataSet;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    ADODataSet6: TADODataSet;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    DataSource7: TDataSource;
    ADOTable1: TADOTable;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    DBGrid3: TDBGrid;
    ADODataSetSickLeaveCert: TADODataSet;
    DataSourceSickLeaveCert: TDataSource;
    ADOStoredProc2: TADOStoredProc;
    UpdateSQL1: TUpdateSQL;
    ADOCommand1: TADOCommand;
    ADOQuery2: TADOQuery;
    ADOTable2: TADOTable;
    ADOPatients: TADOTable;
    ADODiagnos: TADOTable;
    DataSourceDiagnos: TDataSource;
    DataSourcePatients: TDataSource;
    DataSource9: TDataSource;
    DataSourceDiagn: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid4: TDBGrid;
    DBNavigator2: TDBNavigator;
    GroupBox3: TGroupBox;
    ADOConnection1: TADOConnection;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DateTimePicker9: TDateTimePicker;
    DBRichEdit1: TDBRichEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Button10: TButton;
    Button11: TButton;
    DBGrid5: TDBGrid;
    ADOExResoults: TADOTable;
    DataSourceExResoults: TDataSource;
    N9: TMenuItem;
    N10: TMenuItem;
    DataSourceDoctors: TDataSource;
    ADODoctors: TADOTable;
    GroupBox1: TGroupBox;
    Label26: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker5: TDateTimePicker;
    Label20: TLabel;
    Label21: TLabel;
    EditDoctorSeek: TEdit;
    EditPatientSeek: TEdit;
    Button1: TButton;
    ADOTableV_SickLeaveCert: TADOTable;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    DateTimePicker3: TDateTimePicker;
    Edit10: TEdit;
    Button5: TButton;
    Label25: TLabel;
    Label27: TLabel;
    N12: TMenuItem;
    Button8: TButton;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    ADOTableV_doctors: TADOTable;
    DataSourcDocrors_V: TDataSource;
    Label13: TLabel;
    Edit5: TEdit;
    Button13: TButton;
    Button14: TButton;
    DBGrid2: TDBGrid;
    GroupBox6: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ADODataSetHolidays: TADODataSet;
    DBGrid6: TDBGrid;
    DataSourceHolidays: TDataSource;
    ADOHolidays: TADOTable;
    GroupBox5: TGroupBox;
    ADODataSetDoctors2: TADODataSet;
    DataSourceDoctors2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DatePickerHolidayBegin: TDateTimePicker;
    DatePickerHolidayEnd: TDateTimePicker;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    N14: TMenuItem;
    DataSourcePatientsStat: TDataSource;
    ADOV_PatientsStat: TADOTable;
    ADOPatinetsStat: TADOTable;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    N2: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    DataSourcePatinetsStat: TDataSource;
    SpeedButton2: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSourceADOHolidays: TDataSource;
    DateTimePicker1: TDateTimePicker;
    BitBtn6: TBitBtn;
    Edit2: TEdit;
    Button2: TButton;
    XPManifest1: TXPManifest;
    BitBtn7: TBitBtn;
    Button4: TButton;


    procedure N4Click(Sender: TObject);

 
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  

    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure EditPatientSeekChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditDoctorSeekChange(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure DateTimePicker3CloseUp(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
   
    procedure BitBtn7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public

  end;

  procedure setAdm(flag:integer);
  procedure setName_(name_user:string);
var
  Form4: TForm4;




implementation

uses Unit2, Unit3, Unit5, Unit6, Unit8;
var admin:integer;
name_usr:string;
{$R *.dfm}

procedure setAdm(flag:integer);
begin
admin:= flag;
end;
procedure setName_(name_user:string);
begin
name_usr:= name_user;
end;
procedure TForm4.DateTimePicker1CloseUp(Sender: TObject);
begin
ADOTableV_SickLeaveCert.Filtered:=false;
ADOTableV_SickLeaveCert.Filter:='';
ADOTableV_SickLeaveCert.Filter:='date_end= '+ datetostr(DateTimePicker1.DAte);
ADOTableV_SickLeaveCert.Filtered:=true;
end;

procedure TForm4.Button13Click(Sender: TObject);
begin
adodoctors.insert;
form6.PageControl1.ActivePageIndex:=2;
form6.showmodal;
end;

procedure TForm4.Button14Click(Sender: TObject);
begin
if ADOTableV_doctors.RecordCount>0  then begin
ADODoctors.Locate('id_doctor',ADOTableV_doctors.FieldValues['id_doctor'],[loCaseInsensitive]);

ADODoctors.Edit;
form6.PageControl1.ActivePageIndex:=2;
form6.ShowModal;
end;

end;




procedure TForm4.N4Click(Sender: TObject);
begin
Form3.Show();
end;



procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
halt;
end;



procedure TForm4.N6Click(Sender: TObject);
begin
form5.ADOStoredProc1.Active:=false;
form5.table:='s_diagnosis';
form5.ADOStoredProc1.Parameters[0].Value:= 's_diagnosis';
form5.ADOStoredProc1.Active:=true;
form5.ADOStoredProc1.ExecProc;
form5.Show;
end;

procedure TForm4.N7Click(Sender: TObject);
begin
form5.ADOStoredProc1.Active:=false;
form5.table:='s_units';
form5.ADOStoredProc1.Parameters[0].Value:= 's_units';
form5.ADOStoredProc1.Active:=true;
form5.ADOStoredProc1.ExecProc;
form5.Show;
end;

procedure TForm4.N8Click(Sender: TObject);
begin
form5.ADOStoredProc1.Active:=false;
form5.table:='s_positions';
form5.ADOStoredProc1.Parameters[0].Value:= 's_positions';
form5.ADOStoredProc1.Active:=true;
form5.ADOStoredProc1.ExecProc;
form5.Show;
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
form6.ADOStoredProcLeave.Close;
form6.ADOStoredProcLeave.parameters.refresh;
form6.ShowModal;
{adodiagnos.Open;
adotable2.Open;
adotable2.Insert;
dbedit1.SetFocus;    }
end;

procedure TForm4.Button9Click(Sender: TObject);
begin
{adotable2.Post;
adotable2.Edit;
adotable2.fieldbyname('date_begin').Value:= DateTimePicker7.Date;
//adotable2.FieldValues['date_begin'].value:=;
adotable2.fieldbyname('date_end').Value:=datetimepicker8.Date;    }
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
//ADODataSet7.close;
//ADODataSet7.Open;

end;



procedure TForm4.Button10Click(Sender: TObject);
begin
adopatients.Last;
adopatients.Insert;
end;

procedure TForm4.Button11Click(Sender: TObject);
begin
adopatients.Edit;
adopatients.FieldByName('date_of_birth').Value:= DateTimePicker9.Date;
adopatients.Post;
end;

procedure TForm4.DBGrid4CellClick(Column: TColumn);
begin
datetimepicker9.Date:=adopatients.FieldValues['date_of_birth'];
end;

procedure TForm4.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
if Button=nbInsert then Button10.Click;
end;

procedure TForm4.Button1Click(Sender: TObject);

begin
if ADOTableV_SickLeaveCert.RecordCount>0  then begin
form6.ADOStoredProcLeave.Close;
form6.ADOStoredProcLeave.ProcedureName:='close_sick_leave_cert';
form6.ADOStoredProcLeave.parameters.refresh;
form6.ADOStoredProcLeave.Parameters.ParamByName('id_sick_leave_cert').Value:=ADOTableV_SickLeaveCert.FieldValues['id_slc'];
form6.EditPatient.Enabled:=false;
form6.EditDoctorName.Enabled:=false;
form6.DateTimePicker7.Enabled:=false;
form6.DBLookupComboBoxDiagnosis.Enabled:=false;
//form6.tablecontrol1..activePage:='TabSheet2';
form6.ShowModal;
end;
if ADOExResoults.RecordCount>0  then begin
form6.ADOStoredProc1.Close;
form6.ADOStoredProc1.parameters.refresh;
ADOStoredProc1.Parameters.ParamByName('id_ex').Value:=ADOExResoults.FieldValues['id_slc'];
form6.ShowModal;
//.FieldByName('')
end;
end;

procedure TForm4.N10Click(Sender: TObject);
begin
form6.ADOStoredProc1.Parameters.Refresh;
//form6.tablecontrol1.activePage:='TabSheet1';
form6.showmodal;
end;

procedure TForm4.EditPatientSeekChange(Sender: TObject);
begin
if length(EditPatientSeek.Text)>3 then begin
ADOExResoults.Filtered:=false;
ADOExResoults.Filter:='';
ADOExResoults.Filter:='patien like '''+'%EditPatientSeek%''';
ADOExResoults.Filtered:=true;
end;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin

if ADOTableV_SickLeaveCert.RecordCount>0  then begin
form6.ADOStoredProcLeave.Close;
form6.ADOStoredProcLeave.parameters.refresh;
form6.ADOStoredProcLeave.Parameters.ParamByName('id_ex').Value:=ADOTableV_SickLeaveCert.FieldValues['id_ext'];
form6.ShowModal;
end;
end;

procedure TForm4.EditDoctorSeekChange(Sender: TObject);
begin
if length(EditDoctorSeek.Text)>3 then begin
ADOExResoults.Filtered:=false;
ADOExResoults.Filter:='id_doctor like '''+'%EditDoctorSeek%''';
ADOExResoults.Filtered:=true;
end;
end;

procedure TForm4.Edit5Change(Sender: TObject);
begin
if length(Edit5.Text)>3 then begin
ADOtableV_doctors.Filtered:=false;
ADOtableV_doctors.Filter:='';
ADOtableV_doctors.Filter:='surname like '''+'%'+Edit5.Text+'%''';
ADOtableV_doctors.Filtered:=true;
end;
end;
procedure TForm4.BitBtn3Click(Sender: TObject);
begin
//ADOHolidays.FieldByName('id_doctor').Value:=dblookupcombobox1.KeyValue;
ADOHolidays.FieldByName('date_begin').Value:=DatePickerHolidayBegin.Date;
ADOHolidays.FieldByName('date_end').Value:=DatePickerHolidayEnd.Date;
ADOHolidays.Post;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
 ADOHolidays.Insert;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
if ADOV_PatientsStat.RecordCount>0 then begin
ADOPatinetsStat.Locate('id_doctor',ADOV_PatientsStat.FieldValues['id_pat_st'],[loCaseInsensitive]);
ADOPatinetsStat.edit;
form6.ShowModal;
end;
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
ADOPatinetsStat.Insert;
form6.ShowModal;
end;

procedure TForm4.N2Click(Sender: TObject);
begin
form8:=Tform8.Create(self);
form8.ADOStoredProc1.close;
form8.ADOStoredProc1.ProcedureName:='service_nurce';

form8.ADOStoredProc1.open;
form8.ADOStoredProc1.ExecProc;
Form8.QuickRep1.Preview;
Form8.Free;
end;

procedure TForm4.N15Click(Sender: TObject);
begin
form8:=Tform8.Create(self);
form8.ADOStoredProc1.close;
form8.ADOStoredProc1.ProcedureName:='select1';
form8.QRDBText10.DataField:='mon';
form8.QRDBText9.DataField:='pat';

form8.QRLabel7.Caption:='Число различных пациентов выписанных из стационара (по месяцам)';
form8.ADOStoredProc1.Parameters.Refresh;
form8.ADOStoredProc1.Parameters[0].Value:=2014;
form8.ADOStoredProc1.open;
Form8.QuickRep2.Preview;
Form8.QuickRep2.Destroy;
Form8.Free;

end;

procedure TForm4.N16Click(Sender: TObject);
begin
form8:=Tform8.Create(self);
form8.ADOStoredProc1.close;
form8.ADOStoredProc1.ProcedureName:='select3';
form8.ADOStoredProc1.Parameters.Refresh;
form8.ADOStoredProc1.Parameters[0].Value:=2014;
form8.ADOStoredProc1.open;

form8.QRDBText10.DataField:='doctor';
form8.QRDBText9.DataField:='par_d';

form8.QRLabel7.Caption:='Число различных пациентов в стационаре у врача';
Form8.QuickRep2.Preview;
Form8.Free;
end;

procedure TForm4.Edit3Change(Sender: TObject);
begin
if length(Edit3.Text)>3 then begin
ADOV_PatientsStat.Filtered:=false;
ADOV_PatientsStat.Filter:='';
ADOV_PatientsStat.Filter:='patient like '''+'%'+Edit3.text+'%''';
ADOV_PatientsStat.Filtered:=true;
 
end;
end;
procedure TForm4.Edit1Change(Sender: TObject);
begin
if length(Edit1.Text)>3 then begin
ADOV_PatientsStat.Filtered:=false;
ADOV_PatientsStat.Filter:='';
ADOV_PatientsStat.Filter:='nurse_serv like '''+'%'+Edit1.text+'%''';
ADOV_PatientsStat.Filtered:=true;

end;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
ADOV_PatientsStat.Filtered:=false;
ADOV_PatientsStat.Sort:='patient';
end;

procedure TForm4.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked=true then begin
ADOV_PatientsStat.Filtered:=false;
ADOV_PatientsStat.Filter:='';
ADOV_PatientsStat.Filter:='date_off=null' ;
ADOV_PatientsStat.Filtered:=true;
  end;

end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
ADOtableV_doctors.Filtered:=false;
end;

procedure TForm4.DBLookupComboBox2CloseUp(Sender: TObject);
begin
ADOtableV_doctors.Filtered:=false;
ADOtableV_doctors.Filter:='';
ADOtableV_doctors.Filter:='unit='''+DBLookupComboBox2.Text+'''';
ADOtableV_doctors.Filtered:=true;
end;

procedure TForm4.DBGrid6DblClick(Sender: TObject);
begin
ADOHolidays.close;
ADOHolidays.open;
ADOHolidays.Locate('id_holiday',ADODataSetHolidays.FieldValues['id_holiday'],[loCaseInsensitive]);
ADOHolidays.Edit;


end;

procedure TForm4.FormShow(Sender: TObject);
begin
Label27.Caption:='Пользователь: '+ name_usr;
if admin=0 then  bitbtn2.Visible:=true else bitbtn2.Visible:=false;
if admin=0 then  button14.Visible:=true else button14.Visible:=false;
if admin=0 then  groupbox5.Visible:=true else groupbox5.Visible:=false;
if admin=0 then  button1.Visible:=true else button1.Visible:=false;
if admin=0 then  groupbox3.Visible:=true else groupbox3.Visible:=false;
if admin=0 then  N3.Visible:=true else N3.Visible:=false;
if admin=0 then  N9.Visible:=true else N9.Visible:=false;



end;

procedure TForm4.Edit10Change(Sender: TObject);
begin
ADOTableV_SickLeaveCert.Filtered:=false;
ADOTableV_SickLeaveCert.Filter:='';
ADOTableV_SickLeaveCert.Filter:='diagn like '''+'%'+Edit10.text+'%''';
ADOTableV_SickLeaveCert.Filtered:=true;
end;

procedure TForm4.DateTimePicker3CloseUp(Sender: TObject);
begin
ADOTableV_SickLeaveCert.Filtered:=false;
ADOTableV_SickLeaveCert.Filter:='';
ADOTableV_SickLeaveCert.Filter:='date_begin='+ datetostr(DateTimePicker3.DAte);
ADOTableV_SickLeaveCert.Filtered:=true;
end;

procedure TForm4.BitBtn6Click(Sender: TObject);
begin
ADOTableV_SickLeaveCert.Filtered:=false;
end;

procedure TForm4.Edit2Change(Sender: TObject);
begin
ADOTableV_SickLeaveCert.Filtered:=false;
ADOTableV_SickLeaveCert.Filter:='';
ADOTableV_SickLeaveCert.Filter:='patient_name like '''+'%'+Edit2.text+'%''';
ADOTableV_SickLeaveCert.Filtered:=true;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
   form6.PageControl1.ActivePageIndex:=1;
form6.ShowModal;
end;



procedure TForm4.BitBtn7Click(Sender: TObject);

var val:string;
begin
if ADOV_PatientsStat.RecordCount>0  then begin
form2:=Tform2.Create(self);
val:=ADOV_PatientsStat.FieldValues['id_pat_st'];
ADOV_PatientsStat.Filtered:=false;
ADOV_PatientsStat.Filter:='';
ADOV_PatientsStat.Filter:='id_pat_st='+val;
ADOV_PatientsStat.Filtered:=true;
Form2.QuickRep1.Preview;
ADOV_PatientsStat.Filtered:=false;
ADOV_PatientsStat.Locate('id_pat_st',val,[loCaseInsensitive]);
Form2.Free;
end;
end;
procedure TForm4.Button4Click(Sender: TObject);
var val:string;
begin
if ADOExResoults.RecordCount>0  then begin
form2:=Tform2.Create(self);
val:=ADOExResoults.FieldValues['id_exr'];
ADOExResoults.Filtered:=false;
ADOExResoults.Filter:='';
ADOExResoults.Filter:='id_exr='+val;
ADOExResoults.Filtered:=true;
Form2.QuickRep2.Preview;
ADOExResoults.Filtered:=false;
ADOExResoults.Locate('id_exr',val,[loCaseInsensitive]);
Form2.Free;
end;
end;

end.
