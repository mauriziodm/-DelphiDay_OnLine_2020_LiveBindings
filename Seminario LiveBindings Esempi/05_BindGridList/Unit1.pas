unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Grids, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Menus, Vcl.Bind.Navigator,
  Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  FireDAC.Phys.SQLiteWrapper.Stat;

type
  TForm1 = class(TForm)
    Sqlite_demoConnection: TFDConnection;
    EmployeesTable: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    StringGrid1: TStringGrid;
    BindGridList1: TBindGridList;
    ActionList1: TActionList;
    acEnableDisable: TAction;
    Button1: TButton;
    MainMenu1: TMainMenu;
    MenuFile: TMenuItem;
    acEnableDisable1: TMenuItem;
    BindNavigator1: TBindNavigator;
    BindExpression1: TBindExpression;
    StatusBar1: TStatusBar;
    BindExpression2: TBindExpression;
    Label1: TLabel;
    procedure acEnableDisableExecute(Sender: TObject);
    procedure EmployeesTableAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.acEnableDisableExecute(Sender: TObject);
begin
  EmployeesTable.Active := not EmployeesTable.Active;
end;

procedure TForm1.EmployeesTableAfterScroll(DataSet: TDataSet);
begin
  BindingsList1.Notify(DataSet, 'RecNo');
end;

end.
