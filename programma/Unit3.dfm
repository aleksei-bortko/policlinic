object Form3: TForm3
  Left = 245
  Top = 354
  Width = 727
  Height = 264
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 368
    Top = 104
    Width = 115
    Height = 13
    Caption = #1043#1088#1091#1087#1087#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  end
  object Label2: TLabel
    Left = 160
    Top = 136
    Width = 73
    Height = 13
    Caption = #1053#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
  end
  object Label3: TLabel
    Left = 432
    Top = 8
    Width = 49
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label4: TLabel
    Left = 456
    Top = 32
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label5: TLabel
    Left = 432
    Top = 56
    Width = 47
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label6: TLabel
    Left = 440
    Top = 80
    Width = 38
    Height = 13
    Caption = #1051#1054#1043#1048#1053
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 321
    Height = 121
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_user'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'fam'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lastname'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'login'
        Width = 78
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 624
    Top = 208
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 200
    Width = 375
    Height = 25
    DataSource = DataSource2
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 488
    Top = 104
    Width = 209
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'ComboBox1'
    Items.Strings = (
      #1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
      #1088#1077#1075#1080#1089#1090#1088#1072#1090#1086#1088
      #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100)
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 136
    Width = 113
    Height = 17
    Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 248
    Top = 136
    Width = 289
    Height = 21
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 488
    Top = 8
    Width = 209
    Height = 21
    DataField = 'fam'
    DataSource = DataSource2
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 488
    Top = 32
    Width = 209
    Height = 21
    DataField = 'name'
    DataSource = DataSource2
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 488
    Top = 56
    Width = 209
    Height = 21
    DataField = 'lastname'
    DataSource = DataSource2
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 488
    Top = 80
    Width = 209
    Height = 21
    DataField = 'login'
    DataSource = DataSource2
    TabOrder = 9
  end
  object Button2: TButton
    Left = 544
    Top = 168
    Width = 155
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 544
    Top = 136
    Width = 153
    Height = 25
    Caption = #1053#1086#1074#1099#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    TabOrder = 11
    OnClick = Button3Click
  end
  object DataSource2: TDataSource
    DataSet = ADOUsers
    Left = 496
    Top = 200
  end
  object ADOUsers: TADOTable
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 456
    Top = 200
  end
end
