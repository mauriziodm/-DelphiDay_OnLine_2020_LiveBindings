unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.Components, Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.ComCtrls,
  FireDAC.Phys.SQLiteWrapper.Stat;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    BindingsList1: TBindingsList;
    Sqlite_demoConnection: TFDConnection;
    EmployeesTable: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindList1: TBindList;
    Button1: TButton;
    Edit1: TEdit;
    BindExpression1: TBindExpression;
    ComboBox1: TComboBox;
    BindList2: TBindList;
    ListView1: TListView;
    BindList3: TBindList;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  EmployeesTable.Active := not EmployeesTable.Active;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  BindingsList1.Notify(Sender, '');
end;

end.
