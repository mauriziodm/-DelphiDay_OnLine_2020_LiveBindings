unit FormMain;

interface

uses
  System.SysUtils, U.SampleData, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, iORM.DB.Components.ConnectionDef, iORM.AbstractionLayer.Framework.FMX, FMX.TabControl,
  FMX.StdCtrls, FMX.Objects, FMX.Controls.Presentation, Data.Bind.Components, Data.Bind.ObjectScope,
  iORM.LiveBindings.PrototypeBindSource, Data.Bind.GenData, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Actions, FMX.ActnList, FMX.StdActns, FMX.Layouts, FMX.ListBox, FMX.Edit, Fmx.Bind.Navigator,
  Data.Bind.Controls, iORM.CommonTypes, Fmx.Bind.GenData, FMX.Grid.Style, FMX.Grid, FMX.ScrollBox, Fmx.Bind.Grid, Data.Bind.Grid;

type
  TMainForm = class(TForm)
    SQLiteConnection: TioSQLiteConnectionDef;
    FMX: TioFMX;
    TabControlMain: TTabControl;
    TabOrderList: TTabItem;
    TabOrder: TTabItem;
    TabPizzaList: TTabItem;
    MainToolBar: TToolBar;
    Rectangle7: TRectangle;
    ButtonDocCancel: TSpeedButton;
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    PBSOrders: TioPrototypeBindSource;
    ListViewOrders: TListView;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    TabLanding: TTabItem;
    Image1: TImage;
    ActionList1: TActionList;
    acExit: TWindowClose;
    acTabPrevious: TPreviousTabAction;
    acTabNext: TNextTabAction;
    ToolBar2: TToolBar;
    Rectangle2: TRectangle;
    SpeedButton2: TSpeedButton;
    Button2: TButton;
    PBSItems: TioPrototypeBindSource;
    ToolBarOrder: TToolBar;
    Rectangle3: TRectangle;
    SpeedButton3: TSpeedButton;
    ListViewItems: TListView;
    LinkListControlToField2: TLinkListControlToField;
    Layout1: TLayout;
    EditFullName: TEdit;
    LabelFullName: TLabel;
    EditAddress: TEdit;
    LabelAddress: TLabel;
    EditNote: TEdit;
    LabelNote: TLabel;
    PBSCustomer: TioPrototypeBindSource;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    Layout2: TLayout;
    LabelOrderGrandTotal: TLabel;
    BindLink1: TBindLink;
    PBSPizzaSelect: TioPrototypeBindSource;
    ListViewPizzaSelect: TListView;
    LinkListControlToField3: TLinkListControlToField;
    ButtonAddPizza: TButton;
    ButtonOrderItemsDelete: TSpeedButton;
    acOrderItemDelete: TFMXBindNavigateDelete;
    TabPizza: TTabItem;
    ToolBar3: TToolBar;
    Rectangle4: TRectangle;
    SpeedButton4: TSpeedButton;
    PBSPizza: TioPrototypeBindSource;
    Layout3: TLayout;
    EditPizzaID: TEdit;
    LabelPizzaID: TLabel;
    EditPizzaName: TEdit;
    LabelPizzaName: TLabel;
    EditPizzaPrice: TEdit;
    LabelPizzaPrice: TLabel;
    ImagePizza: TImage;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    acGoToTabPizza: TChangeTabAction;
    acGoToTabOrder: TChangeTabAction;
    ButtonEditPizza: TButton;
    TabCustomerList: TTabItem;
    ToolBar4: TToolBar;
    Rectangle5: TRectangle;
    SpeedButton5: TSpeedButton;
    Button5: TButton;
    acGoToTabCustomerSelection: TChangeTabAction;
    PBSCustSelect: TioPrototypeBindSource;
    ListViewCustomerSelect: TListView;
    Button6: TButton;
    TabCustomer: TTabItem;
    ToolBar5: TToolBar;
    Rectangle6: TRectangle;
    SpeedButton6: TSpeedButton;
    PBSPhoneNum: TioPrototypeBindSource;
    Layout4: TLayout;
    EditCustID: TEdit;
    LabelCustID: TLabel;
    EditCustFirstName: TEdit;
    LabelCustFirstName: TLabel;
    EditCustSurname: TEdit;
    LabelCustSurname: TLabel;
    EditCustAddress: TEdit;
    LabelCustAddress: TLabel;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    acCustomerNext: TFMXBindNavigateNext;
    acCustomerPrior: TFMXBindNavigatePrior;
    Layout5: TLayout;
    ToolBar6: TToolBar;
    Rectangle8: TRectangle;
    Button11: TButton;
    Button12: TButton;
    StringGridPhoneNumbers: TStringGrid;
    LinkGridToDataSourcePBSPhoneNum: TLinkGridToDataSource;
    acOrdersInsert: TFMXBindNavigateInsert;
    acPhoneNumberDelete: TFMXBindNavigateDelete;
    acPhoneNumberInsert: TFMXBindNavigateInsert;
    ButtonCustAdd: TButton;
    LinkListControlToField4: TLinkListControlToField;
    acCustomerInsert: TFMXBindNavigateInsert;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button9: TButton;
    procedure ListViewPizzaSelectItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure PBSItemsioOnSelectionObject(const ASender: TObject; var ASelected: TObject; var ASelectionType: TioSelectionType;
      var ADone: Boolean);
    procedure ListViewCustomerSelectItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  Model.OrderItem, iORM;

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TMainForm.ListViewCustomerSelectItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  PBSCustSelect.SelectCurrent;
end;

procedure TMainForm.ListViewPizzaSelectItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  PBSPizzaSelect.SelectCurrent;
end;

procedure TMainForm.PBSItemsioOnSelectionObject(const ASender: TObject; var ASelected: TObject; var ASelectionType: TioSelectionType;
  var ADone: Boolean);
begin
  ASelected := TOrderItem.Create(ASelected);
end;

end.
