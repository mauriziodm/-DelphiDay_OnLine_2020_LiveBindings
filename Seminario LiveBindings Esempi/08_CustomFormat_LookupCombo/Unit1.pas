unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.Components, Data.Bind.DBScope, Vcl.Grids, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.StdCtrls, Data.Bind.Grid,
  FireDAC.Phys.SQLiteWrapper.Stat;

type
  TForm1 = class(TForm)
    Sqlite_demoConnection: TFDConnection;
    ProductsTable: TFDQuery;
    CategoriesTable: TFDQuery;
    BSProducts: TBindSourceDB;
    BSCategories: TBindSourceDB;
    StringGrid1: TStringGrid;
    BindingsList1: TBindingsList;
    EditCategID: TEdit;
    ComboBoxCateg: TComboBox;
    CategoriesTableCategoryID: TFDAutoIncField;
    CategoriesTableCategoryName: TStringField;
    CategoriesTableDescription: TMemoField;
    CategoriesTablePicture: TBlobField;
    ProductsTableProductID: TFDAutoIncField;
    ProductsTableProductName: TStringField;
    ProductsTableSupplierID: TIntegerField;
    ProductsTableCategoryID: TIntegerField;
    ProductsTableQuantityPerUnit: TStringField;
    ProductsTableUnitPrice: TCurrencyField;
    ProductsTableUnitsInStock: TSmallintField;
    ProductsTableUnitsOnOrder: TSmallintField;
    ProductsTableReorderLevel: TSmallintField;
    ProductsTableDiscontinued: TBooleanField;
    EditPrice: TEdit;
    LinkGridToDataSourceBSProducts: TLinkGridToDataSource;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
