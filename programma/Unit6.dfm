object Form6: TForm6
  Left = 310
  Top = 574
  Width = 587
  Height = 372
  BorderIcons = [biSystemMenu, biMinimize]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 16
    Top = 8
    Width = 561
    Height = 313
    ActivePage = TabSheet4
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1054#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
      object Label1: TLabel
        Left = 16
        Top = 40
        Width = 20
        Height = 13
        Caption = #1055#1072#1094
      end
      object Label2: TLabel
        Left = 16
        Top = 72
        Width = 24
        Height = 13
        Caption = #1044#1048#1040
      end
      object Label3: TLabel
        Left = 16
        Top = 104
        Width = 21
        Height = 13
        Caption = #1044#1086#1082
      end
      object Label4: TLabel
        Left = 16
        Top = 160
        Width = 22
        Height = 13
        Caption = #1089#1090#1072#1090
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 56
        Top = 40
        Width = 473
        Height = 21
        KeyField = 'id_patient'
        ListField = 'pat_'
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 56
        Top = 72
        Width = 473
        Height = 21
        KeyField = 'id_diag'
        ListField = 'diagnosis_name'
        ListSource = Form4.DataSourceDiagn
        TabOrder = 1
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 56
        Top = 104
        Width = 473
        Height = 21
        KeyField = 'id_doctor'
        ListField = 'doc_'
        TabOrder = 2
      end
      object DateTimePicker1: TDateTimePicker
        Left = 24
        Top = 200
        Width = 242
        Height = 21
        Date = 42138.577829826390000000
        Time = 42138.577829826390000000
        DateFormat = dfLong
        TabOrder = 3
      end
      object Button1: TButton
        Left = 144
        Top = 248
        Width = 75
        Height = 25
        Caption = #1054#1050
        TabOrder = 4
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 56
        Top = 152
        Width = 153
        Height = 21
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1041#1086#1083#1100#1085#1080#1095#1085#1099#1077' '#1083#1080#1089#1090#1099
      ImageIndex = 1
      object Label15: TLabel
        Left = 104
        Top = 8
        Width = 79
        Height = 13
        Caption = #1055#1072#1094#1080#1077#1085#1090' ('#1060#1048#1054')'
      end
      object Label16: TLabel
        Left = 104
        Top = 32
        Width = 44
        Height = 13
        Caption = #1044#1080#1072#1075#1085#1086#1079
      end
      object Label17: TLabel
        Left = 104
        Top = 56
        Width = 64
        Height = 13
        Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      end
      object Label18: TLabel
        Left = 72
        Top = 104
        Width = 108
        Height = 13
        Caption = #1051#1077#1095#1072#1097#1080#1081' '#1074#1088#1072#1095' ('#1060#1048#1054')'
      end
      object Label19: TLabel
        Left = 104
        Top = 80
        Width = 82
        Height = 13
        Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      end
      object DBLookupComboBoxDiagnosis: TDBLookupComboBox
        Left = 192
        Top = 32
        Width = 217
        Height = 21
        KeyField = 'id_diag'
        ListField = 'diagnosis_name'
        ListSource = Form4.DataSourceDiagn
        TabOrder = 0
      end
      object DateTimePicker7: TDateTimePicker
        Left = 192
        Top = 56
        Width = 225
        Height = 21
        Date = 42135.619728518520000000
        Time = 42135.619728518520000000
        TabOrder = 1
      end
      object DateTimePicker8: TDateTimePicker
        Left = 192
        Top = 80
        Width = 225
        Height = 21
        Date = 42135.619766643520000000
        Time = 42135.619766643520000000
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 304
        Top = 200
        Width = 163
        Height = 25
        Caption = #1057#1054#1061#1056#1040#1053#1048#1058#1068
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object EditPatient: TEdit
        Left = 192
        Top = 8
        Width = 305
        Height = 21
        TabOrder = 4
      end
      object CheckBox1: TCheckBox
        Left = 424
        Top = 80
        Width = 97
        Height = 17
        Caption = #1054#1090#1082#1088#1099#1090#1072#1103' '#1076#1072#1090#1072
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object EditDoctorName: TEdit
        Left = 192
        Top = 104
        Width = 297
        Height = 21
        TabOrder = 6
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1044#1086#1082#1090#1086#1088#1072
      ImageIndex = 2
      object Label5: TLabel
        Left = 40
        Top = 16
        Width = 49
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label6: TLabel
        Left = 40
        Top = 40
        Width = 22
        Height = 13
        Caption = #1048#1084#1103
      end
      object Label7: TLabel
        Left = 40
        Top = 64
        Width = 47
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      end
      object Label8: TLabel
        Left = 16
        Top = 88
        Width = 70
        Height = 26
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1085#1072' '#1088#1072#1073#1086#1090#1091
        WordWrap = True
      end
      object Label9: TLabel
        Left = 24
        Top = 120
        Width = 58
        Height = 13
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      end
      object Label10: TLabel
        Left = 24
        Top = 144
        Width = 55
        Height = 13
        Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 16
        Width = 265
        Height = 21
        DataField = 'surname'
        DataSource = Form4.DataSourceDoctors
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 40
        Width = 265
        Height = 21
        DataField = 'name'
        DataSource = Form4.DataSourceDoctors
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 64
        Width = 265
        Height = 21
        DataField = 'lastname'
        DataSource = Form4.DataSourceDoctors
        TabOrder = 2
      end
      object DateTimePicker2: TDateTimePicker
        Left = 104
        Top = 88
        Width = 265
        Height = 21
        Date = 42148.799476446760000000
        Time = 42148.799476446760000000
        TabOrder = 3
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 104
        Top = 112
        Width = 265
        Height = 21
        DataField = 'position'
        DataSource = Form4.DataSourceDoctors
        KeyField = 'id_position'
        ListField = 'position_name'
        ListSource = DataSourcePositions
        TabOrder = 4
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 104
        Top = 136
        Width = 265
        Height = 21
        DataField = 'unit'
        DataSource = Form4.DataSourceDoctors
        KeyField = 'id_unit'
        ListField = 'unit'
        ListSource = DataSourceUnits
        TabOrder = 5
      end
      object BitBtn2: TBitBtn
        Left = 448
        Top = 224
        Width = 97
        Height = 33
        Caption = #1057#1054#1061#1056#1040#1053#1048#1058#1068
        TabOrder = 6
        OnClick = BitBtn2Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1072#1094#1080#1077#1085#1090#1099' '#1089#1090#1072#1094#1080#1086#1085#1072#1088#1072
      ImageIndex = 3
      object Label11: TLabel
        Left = 16
        Top = 40
        Width = 20
        Height = 13
        Caption = #1055#1072#1094
      end
      object Label12: TLabel
        Left = 16
        Top = 88
        Width = 24
        Height = 13
        Caption = #1044#1048#1040
      end
      object Label13: TLabel
        Left = 16
        Top = 64
        Width = 21
        Height = 13
        Caption = #1044#1086#1082
      end
      object Label14: TLabel
        Left = 16
        Top = 168
        Width = 20
        Height = 13
        Caption = #1084#1077#1076
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 56
        Top = 40
        Width = 473
        Height = 21
        DataSource = Form4.DataSourcePatientsStat
        KeyField = 'id_patient'
        ListField = 'pat'
        ListSource = DataSourcePatientDataSet
        TabOrder = 0
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 56
        Top = 88
        Width = 473
        Height = 21
        KeyField = 'id_diag'
        ListField = 'diagnosis_name'
        ListSource = Form4.DataSourceDiagn
        TabOrder = 1
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 56
        Top = 64
        Width = 473
        Height = 21
        KeyField = 'id_doctor'
        ListField = 'doc'
        ListSource = DataSourceDoctorsDataSet
        TabOrder = 2
      end
      object DateTimePicker3: TDateTimePicker
        Left = 344
        Top = 112
        Width = 186
        Height = 21
        Date = 42149.419089282410000000
        Time = 42149.419089282410000000
        TabOrder = 3
      end
      object DateTimePicker4: TDateTimePicker
        Left = 344
        Top = 136
        Width = 186
        Height = 21
        Date = 42149.419128842590000000
        Time = 42149.419128842590000000
        TabOrder = 4
      end
      object Button4: TButton
        Left = 408
        Top = 224
        Width = 113
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 5
        OnClick = Button4Click
      end
      object DBEdit5: TDBEdit
        Left = 56
        Top = 168
        Width = 473
        Height = 21
        DataField = 'nurse_serv'
        DataSource = Form4.DataSourcePatinetsStat
        TabOrder = 6
      end
      object CheckBox2: TCheckBox
        Left = 280
        Top = 136
        Width = 49
        Height = 17
        Caption = #1085#1077#1090
        TabOrder = 7
      end
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form4.ADOConnection1
    ProcedureName = 'add_or_updt_examination'
    Parameters = <
      item
        Name = 'patient_'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'date__'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'diagnosis_'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'doctor_'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'stat_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'id_ex'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 484
    Top = 272
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    TableName = 'examination_resoults'
    Left = 412
    Top = 200
  end
  object ADOTable_SickLeaveCert: TADOTable
    Active = True
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    TableName = 'sick_leave_certificates'
    Left = 272
    Top = 312
  end
  object ADOTable2: TADOTable
    TableName = 'sick_leave_certificates'
    Left = 480
    Top = 376
  end
  object ADOStoredProcLeave: TADOStoredProc
    Connection = Form4.ADOConnection1
    ProcedureName = 'add_sick_leave'
    Parameters = <
      item
        Name = 'patient_name_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = 'diagnosis_'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'date_begin_'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'date_end_'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'doctor_name_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end>
    Left = 180
    Top = 192
  end
  object DataSourceUnits: TDataSource
    DataSet = ADOTableUnits
    Left = 44
    Top = 224
  end
  object ADOTableUnits: TADOTable
    Active = True
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    TableName = 's_units'
    Left = 244
    Top = 224
  end
  object ADOTablePositions: TADOTable
    Active = True
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    TableName = 's_positions'
    Left = 244
    Top = 184
  end
  object DataSourcePositions: TDataSource
    DataSet = ADOTablePositions
    Left = 132
    Top = 208
  end
  object DataSourceDoctor_Ex: TDataSource
    Left = 492
    Top = 136
  end
  object ADODataSetDoctors: TADODataSet
    Active = True
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select id_doctor, concat(surname,'#39' '#39',name,'#39' '#39',lastname) as doc  ' +
      'from doctors'
    Parameters = <>
    Left = 452
    Top = 128
  end
  object ADODataSetPatients: TADODataSet
    Active = True
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select id_patient, concat(surname ,'#39' '#39',name,'#39' '#39',lastname,'#39', '#1075'.'#1088'.' +
      ' '#39',date_of_birth ) as pat from  patients'
    Parameters = <>
    Left = 468
    Top = 64
  end
  object DataSourceDoctorsDataSet: TDataSource
    DataSet = ADODataSetDoctors
    Left = 420
    Top = 136
  end
  object DataSourcePatientDataSet: TDataSource
    DataSet = ADODataSetPatients
    Left = 412
    Top = 64
  end
end
