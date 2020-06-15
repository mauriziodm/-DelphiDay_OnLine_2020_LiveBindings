unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.ComCtrls, FireDAC.Phys.SQLiteWrapper.Stat;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    StringGrid1: TStringGrid;
    BindNavigator1: TBindNavigator;
    Sqlite_demoConnection: TFDConnection;
    CustomersTable: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    EditID: TEdit;
    EditCompany: TEdit;
    EditCity: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BindLink1: TBindLink;
    BindLink2: TBindLink;
    BindLink3: TBindLink;
    BindListLink1: TBindListLink;
    BindGridLink1: TBindGridLink;
    ScrollBar1: TScrollBar;
    BindPosition1: TBindPosition;
    StatusBar1: TStatusBar;
    BindPosition2: TBindPosition;
    ButtonEnableDisable: TButton;
    procedure ButtonEnableDisableClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonEnableDisableClick(Sender: TObject);
begin
  CustomersTable.Active := not CustomersTable.Active;
end;

end.
