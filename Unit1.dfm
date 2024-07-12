object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label5: TLabel
    Left = 24
    Top = 144
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 24
    Top = 176
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object Label7: TLabel
    Left = 24
    Top = 384
    Width = 80
    Height = 13
    Caption = 'MASUKAN NAMA'
  end
  object Label8: TLabel
    Left = 336
    Top = 168
    Width = 38
    Height = 13
    Caption = 'DISKON'
  end
  object Label9: TLabel
    Left = 408
    Top = 168
    Width = 71
    Height = 13
    Caption = 'Terisi Otomatis'
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 40
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 72
    Width = 177
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 136
    Top = 104
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 136
    Top = 136
    Width = 177
    Height = 21
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 168
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = ComboBox1Change
    Items.Strings = (
      'Yes'
      'No')
  end
  object Button1: TButton
    Left = 24
    Top = 208
    Width = 113
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
  end
  object Button2: TButton
    Left = 144
    Top = 208
    Width = 113
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 272
    Top = 208
    Width = 113
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
  end
  object Button4: TButton
    Left = 400
    Top = 208
    Width = 113
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
  end
  object Button5: TButton
    Left = 528
    Top = 208
    Width = 113
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 240
    Width = 433
    Height = 121
    DataSource = DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit6: TEdit
    Left = 128
    Top = 384
    Width = 249
    Height = 21
    TabOrder = 12
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ACER\Documents\Kuliah Sem 4\Visual2\New folder\Unconfir' +
      'med 248917.crdownload'
    Left = 800
    Top = 40
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 792
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 792
    Top = 168
  end
end
