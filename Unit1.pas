unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Edit6: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    procedure posisiawal;
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.posisiawal;
begin
Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= False;
Button5.Enabled:= False;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
ComboBox1.Clear;
Edit1.Enabled:=False;
Edit2.Enabled:=False;
Edit3.Enabled:=False;
Edit4.Enabled:=False;
Edit5.Enabled:=False;
ComboBox1.Enabled:=False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if ZQuery1.Locate('nama',Edit2.Text,[])then
begin
  ShowMessage('Nama'+ Edit2.Text+' Sudah Ada Didalam Sistem');
end else
begin
  with ZQuery1 do
  begin
    SQL.Clear;
    SQL.Add('Insert into kustomer values(null, "' + Edit1.Text + '", "' + Edit2.Text + '", "' + Edit3.Text + '", "' + Edit4.Text + '", "' + Edit5.Text + '", "' + ComboBox1.Text + '")');
    ExecSQL;
    SQL.Clear;
    SQL.Add('Select * from kustomer');
    Open;
  end;
  ShowMessage('Data Berhasil Disimpan!');
end;
  posisiawal;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then // assuming "YES" is the first item in the combobox
    Label9.Caption := '10%' // set the label caption to "10%"
  else
    Label9.Caption := '5%' //
end;

end.
