object Form4: TForm4
  Left = 227
  Top = 284
  Width = 870
  Height = 573
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1041#1044' '#1055#1086#1083#1080#1082#1083#1080#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label27: TLabel
    Left = 512
    Top = 0
    Width = 76
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 16
    Top = 16
    Width = 785
    Height = 489
    ActivePage = TabSheet1
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1072#1094#1080#1077#1085#1090#1099' '#1089#1090#1072#1094#1080#1086#1085#1072#1088#1072
      object DBGrid2: TDBGrid
        Left = 0
        Top = 104
        Width = 753
        Height = 329
        DataSource = DataSourcePatientsStat
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid4CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_pat_st'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'patient'
            Title.Caption = #1055#1072#1094#1080#1077#1085#1090' ('#1060#1048#1054')'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'year_of_birth'
            Title.Caption = #1043#1086#1076' '#1088#1086#1078#1076'.'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'doctor'
            Title.Caption = #1051#1077#1095#1072#1097#1080#1081' '#1074#1088#1072#1095
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diagnos'
            Title.Caption = #1044#1080#1072#1075#1085#1086#1079
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_on'
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090'.'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_off'
            Title.Caption = #1044#1072#1090#1072' '#1074#1099#1087'.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nurse_serv'
            Title.Caption = #1054#1073#1089#1083#1091#1078'.'#1084#1077#1076#1089#1077#1089#1090#1088#1072
            Visible = True
          end>
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 8
        Width = 745
        Height = 89
        Caption = #1055#1086#1080#1089#1082' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object Label3: TLabel
          Left = 16
          Top = 20
          Width = 99
          Height = 13
          Caption = #1060#1072#1084#1080#1083#1080#1103' '#1087#1072#1094#1080#1077#1085#1090#1072
        end
        object Label4: TLabel
          Left = 16
          Top = 44
          Width = 144
          Height = 13
          Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1102#1097#1072#1103' '#1084#1077#1076#1089#1077#1089#1090#1088#1072
        end
        object SpeedButton1: TSpeedButton
          Left = 624
          Top = 16
          Width = 111
          Height = 25
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          OnClick = SpeedButton1Click
        end
        object BitBtn2: TBitBtn
          Left = 504
          Top = 48
          Width = 105
          Height = 33
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 0
          OnClick = BitBtn2Click
        end
        object BitBtn5: TBitBtn
          Left = 624
          Top = 48
          Width = 107
          Height = 33
          Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
          TabOrder = 1
          OnClick = BitBtn5Click
        end
        object Edit3: TEdit
          Left = 120
          Top = 16
          Width = 329
          Height = 21
          TabOrder = 2
          OnChange = Edit3Change
        end
        object Edit1: TEdit
          Left = 168
          Top = 40
          Width = 281
          Height = 21
          TabOrder = 3
          OnChange = Edit1Change
        end
        object CheckBox1: TCheckBox
          Left = 48
          Top = 64
          Width = 129
          Height = 17
          Caption = #1053#1077' '#1074#1099#1087#1080#1089#1072#1085#1085#1099#1077
          TabOrder = 4
          OnClick = CheckBox1Click
        end
        object BitBtn7: TBitBtn
          Left = 504
          Top = 16
          Width = 107
          Height = 25
          Caption = #1057#1087#1088#1072#1074#1082#1072
          TabOrder = 5
          OnClick = BitBtn7Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1088#1072#1095#1080
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 49
        Height = 13
        Caption = #1041#1086#1083#1100#1085#1080#1094#1072
      end
      object Label14: TLabel
        Left = 16
        Top = 64
        Width = 51
        Height = 13
        Caption = #1055#1072#1083#1072#1090#1072' '#8470
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 745
        Height = 89
        Caption = #1055#1086#1080#1089#1082' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object Label16: TLabel
          Left = 16
          Top = 20
          Width = 49
          Height = 13
          Caption = #1060#1072#1084#1080#1083#1080#1103
        end
        object Label13: TLabel
          Left = 432
          Top = 16
          Width = 55
          Height = 13
          Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
        end
        object SpeedButton2: TSpeedButton
          Left = 16
          Top = 56
          Width = 121
          Height = 22
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          OnClick = SpeedButton2Click
        end
        object Edit5: TEdit
          Left = 96
          Top = 16
          Width = 305
          Height = 21
          TabOrder = 0
          OnChange = Edit5Change
        end
        object Button13: TButton
          Left = 536
          Top = 48
          Width = 97
          Height = 33
          Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100' '
          TabOrder = 1
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 648
          Top = 48
          Width = 91
          Height = 33
          Caption = #1048#1047#1052#1045#1053#1048#1058#1068
          TabOrder = 2
          OnClick = Button14Click
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 504
          Top = 16
          Width = 193
          Height = 21
          KeyField = 'id_unit'
          ListField = 'unit'
          ListSource = Form6.DataSourceUnits
          TabOrder = 3
          OnCloseUp = DBLookupComboBox2CloseUp
        end
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 104
        Width = 737
        Height = 353
        DataSource = DataSourcDocrors_V
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id_doctor'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'surname'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lastname'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'position_name'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'unit'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'salary'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_on'
            Width = 110
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1054#1090#1087#1091#1089#1082#1072
      ImageIndex = 2
      object DBGrid6: TDBGrid
        Left = 8
        Top = 16
        Width = 737
        Height = 145
        DataSource = DataSourceHolidays
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid6DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_holiday'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'doc'
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_begin'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_end'
            Width = 82
            Visible = True
          end>
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 184
        Width = 745
        Height = 177
        Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 80
          Top = 52
          Width = 401
          Height = 21
          DataField = 'doctor'
          DataSource = DataSourceADOHolidays
          KeyField = 'id_doctor'
          ListField = 'do'
          ListSource = DataSourceDoctors2
          TabOrder = 0
        end
        object DatePickerHolidayBegin: TDateTimePicker
          Left = 80
          Top = 84
          Width = 186
          Height = 21
          Date = 42148.852073206020000000
          Time = 42148.852073206020000000
          TabOrder = 1
        end
        object DatePickerHolidayEnd: TDateTimePicker
          Left = 296
          Top = 84
          Width = 186
          Height = 21
          Date = 42148.852118773150000000
          Time = 42148.852118773150000000
          TabOrder = 2
        end
        object BitBtn3: TBitBtn
          Left = 616
          Top = 128
          Width = 97
          Height = 33
          Caption = #1057#1054#1061#1056#1040#1053#1048#1058#1068
          TabOrder = 3
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 448
          Top = 128
          Width = 97
          Height = 33
          Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
          TabOrder = 4
          OnClick = BitBtn4Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
      ImageIndex = 3
      object DBGrid5: TDBGrid
        Left = 0
        Top = 104
        Width = 737
        Height = 353
        DataSource = DataSourceExResoults
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id_exr'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'patien'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'year_of_birth'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'age'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diagnosis_name'
            Width = 216
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_doctor'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stat'
            Width = 25
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 8
        Width = 745
        Height = 89
        Caption = #1055#1086#1080#1089#1082' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object Label26: TLabel
          Left = 16
          Top = 28
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object Label20: TLabel
          Left = 16
          Top = 60
          Width = 24
          Height = 13
          Caption = #1042#1088#1072#1095
        end
        object Label21: TLabel
          Left = 376
          Top = 20
          Width = 43
          Height = 13
          Caption = #1055#1072#1094#1080#1077#1085#1090
        end
        object ComboBox1: TComboBox
          Left = 72
          Top = 20
          Width = 81
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = #1088#1072#1074#1085#1086
          Items.Strings = (
            #1088#1072#1074#1085#1086
            #1088#1072#1085#1077#1077
            #1087#1086#1079#1076#1085#1077#1077)
        end
        object DateTimePicker5: TDateTimePicker
          Left = 168
          Top = 20
          Width = 153
          Height = 21
          Date = 42138.565152870370000000
          Time = 42138.565152870370000000
          TabOrder = 1
        end
        object EditDoctorSeek: TEdit
          Left = 72
          Top = 52
          Width = 249
          Height = 21
          TabOrder = 2
          OnChange = EditDoctorSeekChange
        end
        object EditPatientSeek: TEdit
          Left = 432
          Top = 12
          Width = 297
          Height = 21
          TabOrder = 3
          OnChange = EditPatientSeekChange
        end
        object Button1: TButton
          Left = 520
          Top = 48
          Width = 99
          Height = 33
          Caption = #1048#1047#1052#1045#1053#1048#1058#1068
          TabOrder = 4
          OnClick = Button1Click
        end
        object Button8: TButton
          Left = 632
          Top = 48
          Width = 99
          Height = 33
          Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
          TabOrder = 5
          OnClick = Button8Click
        end
        object Button4: TButton
          Left = 392
          Top = 48
          Width = 105
          Height = 33
          Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1077
          TabOrder = 6
          OnClick = Button4Click
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1055#1072#1094#1080#1077#1085#1090#1099
      ImageIndex = 4
      object DBGrid4: TDBGrid
        Left = 8
        Top = 8
        Width = 753
        Height = 209
        DataSource = DataSourcePatients
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid4CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_patient'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'surname'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1048#1084#1103
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lastname'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_of_birth'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address'
            Title.Caption = #1040#1076#1088#1077#1089
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'phone'
            Title.Caption = #1058#1077#1083#1077#1092#1086#1085
            Width = 159
            Visible = True
          end>
      end
      object DBNavigator2: TDBNavigator
        Left = 16
        Top = 224
        Width = 225
        Height = 25
        DataSource = DataSourcePatients
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        TabOrder = 1
        OnClick = DBNavigator2Click
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 264
        Width = 761
        Height = 169
        Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1094#1080#1103' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object Label30: TLabel
          Left = 16
          Top = 24
          Width = 59
          Height = 13
          Caption = #1060#1040#1052#1048#1051#1048#1071
        end
        object Label31: TLabel
          Left = 48
          Top = 56
          Width = 25
          Height = 13
          Caption = #1048#1052#1071
        end
        object Label32: TLabel
          Left = 16
          Top = 88
          Width = 59
          Height = 13
          Caption = #1054#1058#1063#1045#1057#1058#1042#1054
        end
        object Label33: TLabel
          Left = 400
          Top = 24
          Width = 99
          Height = 13
          Caption = #1044#1040#1058#1040' '#1056#1054#1046#1044#1045#1053#1048#1071
        end
        object Label34: TLabel
          Left = 440
          Top = 56
          Width = 56
          Height = 13
          Caption = #1058#1045#1051#1045#1060#1054#1053
        end
        object Label35: TLabel
          Left = 456
          Top = 88
          Width = 37
          Height = 13
          Caption = #1040#1044#1056#1045#1057
        end
        object DBEdit6: TDBEdit
          Left = 88
          Top = 20
          Width = 225
          Height = 21
          DataField = 'surname'
          DataSource = DataSourcePatients
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 88
          Top = 52
          Width = 225
          Height = 21
          DataField = 'name'
          DataSource = DataSourcePatients
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 88
          Top = 84
          Width = 225
          Height = 21
          DataField = 'lastname'
          DataSource = DataSourcePatients
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 504
          Top = 52
          Width = 241
          Height = 21
          DataField = 'phone'
          DataSource = DataSourcePatients
          TabOrder = 3
        end
        object DateTimePicker9: TDateTimePicker
          Left = 504
          Top = 20
          Width = 121
          Height = 21
          Date = 42135.653076712970000000
          Time = 42135.653076712970000000
          TabOrder = 4
        end
        object DBRichEdit1: TDBRichEdit
          Left = 504
          Top = 80
          Width = 249
          Height = 65
          DataField = 'address'
          DataSource = DataSourcePatients
          MaxLength = 255
          TabOrder = 5
        end
        object Button10: TButton
          Left = 16
          Top = 128
          Width = 105
          Height = 25
          Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
          TabOrder = 6
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 192
          Top = 128
          Width = 123
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 7
          OnClick = Button11Click
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1051#1080#1089#1090#1099
      ImageIndex = 5
      object DBGrid3: TDBGrid
        Left = 0
        Top = 104
        Width = 761
        Height = 321
        DataSource = DataSourceSickLeaveCert
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id_slc'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'patient_name'
            Title.Caption = #1055#1072#1094#1080#1077#1085#1090
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diagn'
            Title.Caption = #1044#1080#1072#1075#1085#1086#1079
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_begin'
            Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'date_end'
            Title.Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'days'
            Title.Caption = #1044#1085#1077#1081
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'doctor_name'
            Title.Caption = #1051#1077#1095#1072#1097#1080#1081' '#1074#1088#1072#1095
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = -8
        Top = 432
        Width = 225
        Height = 25
        DataSource = DataSourceSickLeaveCert
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        TabOrder = 1
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 8
        Width = 745
        Height = 89
        Caption = #1055#1086#1080#1089#1082' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object Label18: TLabel
          Left = 16
          Top = 20
          Width = 64
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
        end
        object Label19: TLabel
          Left = 16
          Top = 60
          Width = 44
          Height = 13
          Caption = #1044#1080#1072#1075#1085#1086#1079
        end
        object Label22: TLabel
          Left = 408
          Top = 20
          Width = 43
          Height = 13
          Caption = #1055#1072#1094#1080#1077#1085#1090
        end
        object Label25: TLabel
          Left = 192
          Top = 20
          Width = 82
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        end
        object DateTimePicker3: TDateTimePicker
          Left = 96
          Top = 20
          Width = 81
          Height = 21
          Date = 42138.565152870370000000
          Time = 42138.565152870370000000
          TabOrder = 0
          OnCloseUp = DateTimePicker3CloseUp
        end
        object Edit10: TEdit
          Left = 72
          Top = 52
          Width = 249
          Height = 21
          TabOrder = 1
          OnChange = Edit10Change
        end
        object Button5: TButton
          Left = 592
          Top = 48
          Width = 139
          Height = 33
          Caption = #1047#1040#1050#1056#1067#1058#1068' '#1051#1048#1057#1058
          TabOrder = 2
          OnClick = Button1Click
        end
        object DateTimePicker1: TDateTimePicker
          Left = 288
          Top = 20
          Width = 81
          Height = 21
          Date = 42138.565152870370000000
          Time = 42138.565152870370000000
          TabOrder = 3
          OnCloseUp = DateTimePicker1CloseUp
        end
        object BitBtn6: TBitBtn
          Left = 336
          Top = 48
          Width = 105
          Height = 33
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn6Click
        end
        object Edit2: TEdit
          Left = 456
          Top = 16
          Width = 273
          Height = 21
          TabOrder = 5
          OnChange = Edit2Change
        end
        object Button2: TButton
          Left = 456
          Top = 48
          Width = 129
          Height = 33
          Caption = #1053#1054#1042#1067#1049' '#1051#1048#1057#1058
          TabOrder = 6
          OnClick = Button2Click
        end
      end
    end
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT id_boln, boln FROM bolca.s_boln union'#13#10'select  id_pol,pol' +
      'icl FROM bolca.s_polikl'
    Parameters = <>
    Left = 400
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 568
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet1
    Left = 364
    Top = 48
  end
  object DataSource3: TDataSource
    DataSet = ADODataSet2
    Left = 744
    Top = 128
  end
  object ADODataSet2: TADODataSet
    CursorType = ctStatic
    CommandText = 'select id, naim from s_vrachi where pers=1'
    Parameters = <>
    Left = 776
    Top = 160
  end
  object ADOStoredProc1: TADOStoredProc
    CursorType = ctStatic
    ProcedureName = 'one1'
    Parameters = <
      item
        Name = 'profil'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'uchrezh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'count_'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Value = 1
      end>
    Left = 696
    Top = 248
  end
  object cv: TDataSource
    DataSet = ADODataSet3
    Left = 732
    Top = 192
  end
  object ADODataSet3: TADODataSet
    CursorType = ctStatic
    CommandText = 'select id, naim from s_vrachi where pers=2'
    Parameters = <>
    Left = 772
    Top = 192
  end
  object DataSource4: TDataSource
    DataSet = ADODataSet4
    Left = 732
    Top = 224
  end
  object ADODataSet4: TADODataSet
    CursorType = ctStatic
    CommandText = 'select id, naim from s_vrachi where pers=1'
    Parameters = <>
    Left = 764
    Top = 224
  end
  object ADODataSet5: TADODataSet
    CursorType = ctStatic
    CommandText = 'select id, naim from s_vrachi where pers=1'
    Parameters = <>
    Left = 756
    Top = 256
  end
  object DataSource5: TDataSource
    DataSet = ADODataSet5
    Left = 724
    Top = 256
  end
  object DataSource6: TDataSource
    DataSet = ADODataSet6
    Left = 724
    Top = 280
  end
  object ADODataSet6: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT id_s,naim FROM bolca.s_step UNION'#13#10'SELECT '#13#10'id_z,naim FRO' +
      'M bolca.s_zvan'
    Parameters = <>
    Left = 756
    Top = 280
  end
  object MainMenu1: TMainMenu
    Left = 304
    Top = 16
    object N3: TMenuItem
      Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
      object N4: TMenuItem
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
        OnClick = N4Click
      end
    end
    object N5: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N6: TMenuItem
        Caption = #1044#1080#1072#1075#1085#1086#1079#1099
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
        OnClick = N8Click
      end
    end
    object N9: TMenuItem
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Visible = False
      object N10: TMenuItem
        Caption = #1054#1073#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077
        OnClick = N10Click
      end
      object N12: TMenuItem
        Caption = #1054#1090#1087#1091#1089#1082
      end
    end
    object N14: TMenuItem
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      object N2: TMenuItem
        Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1102#1097#1072#1103' '#1084#1077#1076#1089#1077#1089#1090#1088#1072
        OnClick = N2Click
      end
      object N15: TMenuItem
        Caption = #1055#1072#1094#1080#1077#1085#1090#1099' '#1089#1090#1072#1094#1080#1086#1085#1072#1088#1072
        OnClick = N15Click
      end
      object N16: TMenuItem
        Caption = #1042#1088#1072#1095#1080' '#1089#1090#1072#1094#1080#1086#1085#1072#1088#1072
        OnClick = N16Click
      end
    end
  end
  object DataSource7: TDataSource
    Left = 580
    Top = 120
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    Left = 540
    Top = 123
  end
  object ADODataSetSickLeaveCert: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from v_sick_leave_certificates'
    Parameters = <>
    Left = 660
    Top = 11
  end
  object DataSourceSickLeaveCert: TDataSource
    DataSet = ADOTableV_SickLeaveCert
    Left = 52
    Top = 227
  end
  object ADOStoredProc2: TADOStoredProc
    Parameters = <>
    Left = 332
    Top = 227
  end
  object UpdateSQL1: TUpdateSQL
    Left = 284
    Top = 227
  end
  object ADOCommand1: TADOCommand
    Parameters = <>
    Left = 204
    Top = 235
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 396
    Top = 227
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sick_leave_certificates'
    Left = 460
    Top = 227
  end
  object ADOPatients: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'patients'
    Left = 764
    Top = 435
  end
  object ADODiagnos: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 's_diagnosis'
    Left = 776
    Top = 472
  end
  object DataSourceDiagnos: TDataSource
    DataSet = ADODiagnos
    Left = 428
    Top = 299
  end
  object DataSourcePatients: TDataSource
    DataSet = ADOPatients
    Left = 792
    Top = 432
  end
  object DataSource9: TDataSource
    DataSet = ADOTable2
    Left = 492
    Top = 227
  end
  object DataSourceDiagn: TDataSource
    DataSet = ADODiagnos
    Left = 808
    Top = 472
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=mysql' +
      '_pclinic;Mode=Read'
    DefaultDatabase = 'pclinic'
    LoginPrompt = False
    Mode = cmRead
    Left = 800
    Top = 8
  end
  object ADOExResoults: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'v_examination_resoults'
    Left = 36
    Top = 299
  end
  object DataSourceExResoults: TDataSource
    DataSet = ADOExResoults
    Left = 36
    Top = 339
  end
  object DataSourceDoctors: TDataSource
    DataSet = ADODoctors
    Left = 816
    Top = 512
  end
  object ADODoctors: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'doctors'
    Left = 784
    Top = 520
  end
  object ADOTableV_SickLeaveCert: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'v_sick_leave_certificates'
    Left = 4
    Top = 299
  end
  object ADOTableV_doctors: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'v_doctors'
    Left = 20
    Top = 371
  end
  object DataSourcDocrors_V: TDataSource
    DataSet = ADOTableV_doctors
    Left = 60
    Top = 371
  end
  object ADODataSetHolidays: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select *  from v_holidays'
    Parameters = <>
    Left = 76
    Top = 163
  end
  object DataSourceHolidays: TDataSource
    DataSet = ADODataSetHolidays
    Left = 108
    Top = 171
  end
  object ADOHolidays: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'holiday'
    Left = 412
    Top = 371
  end
  object ADODataSetDoctors2: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select id_doctor, concat(surname,'#39' '#39',name,'#39' '#39',lastname) as do  f' +
      'rom doctors'
    Parameters = <>
    Left = 68
    Top = 283
  end
  object DataSourceDoctors2: TDataSource
    DataSet = ADODataSetDoctors2
    Left = 372
    Top = 291
  end
  object DataSourcePatientsStat: TDataSource
    DataSet = ADOV_PatientsStat
    Left = 60
    Top = 403
  end
  object ADOV_PatientsStat: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'v_patients_stat'
    Left = 100
    Top = 403
  end
  object ADOPatinetsStat: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'patients_stat'
    Left = 132
    Top = 403
  end
  object DataSourcePatinetsStat: TDataSource
    DataSet = ADOPatinetsStat
    Left = 108
    Top = 443
  end
  object DataSourceADOHolidays: TDataSource
    DataSet = ADOHolidays
    Left = 100
    Top = 283
  end
  object XPManifest1: TXPManifest
    Left = 824
    Top = 56
  end
end
