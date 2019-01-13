object Form5: TForm5
  Left = 379
  Top = 154
  Width = 517
  Height = 400
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
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
    Left = 24
    Top = 240
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 24
    Top = 272
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 24
    Top = 296
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 40
    Width = 425
    Height = 185
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 240
    Width = 121
    Height = 21
    DataField = 'id_diag'
    DataSource = DataSource1
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 264
    Width = 193
    Height = 21
    DataField = 'diagnosis_name'
    DataSource = DataSource1
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 328
    Width = 121
    Height = 25
    Caption = 'Save'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 328
    Width = 123
    Height = 25
    Caption = 'New'
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBEdit3: TDBEdit
    Left = 136
    Top = 288
    Width = 193
    Height = 21
    DataSource = DataSource1
    TabOrder = 5
  end
  object ADOTable1: TADOTable
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    TableName = 's_diagnosis'
    Left = 376
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 440
    Top = 280
  end
  object ADOStoredProc1: TADOStoredProc
    Active = True
    Connection = Form4.ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'get_columns'
    Parameters = <
      item
        Name = 'table_name_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 464
    Top = 336
  end
end
