unit MainForm;

interface

uses FMX.ListView.Types, Data.Bind.Controls, System.Rtti, Data.Bind.GenData,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Bindings.Outputs,
  Fmx.Bind.Editors, Fmx.Bind.Grid, FMX.TabControl, System.Classes,
  System.Actions, FMX.ActnList, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.ObjectScope, FMX.Edit,
  FMX.StdCtrls, FMX.Layouts, FMX.Grid, Fmx.Bind.Navigator, FMX.ListView,
  FMX.Controls, FMX.Types, FMX.Forms, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Grid.Style, Fmx.Bind.GenData;

type

  TForm1 = class(TForm)
    BindingsList1: TBindingsList;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ToolBar1: TToolBar;
    MasterListView: TListView;
    Label1: TLabel;
    DetailListView: TListView;
    Label2: TLabel;
    ToolBar2: TToolBar;
    DetailBindNavigator: TBindNavigator;
    ActionList1: TActionList;
    Button1: TButton;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    ToolBar3: TToolBar;
    Button2: TButton;
    Grid1: TGrid;
    Panel1: TPanel;
    MasterBindNavigator: TBindNavigator;
    EditID: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditFirstname: TEdit;
    Label5: TLabel;
    EditLastname: TEdit;
    Label6: TLabel;
    EditFidelityCardCode: TEdit;
    Label7: TLabel;
    EditVipCard: TEdit;
    Label8: TLabel;
    EditBranchOffice: TEdit;
    PBSMaster: TPrototypeBindSource;
    PBSDetail: TPrototypeBindSource;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkGridToDataSourcePBSDetail: TLinkGridToDataSource;
    BindNavigator1: TBindNavigator;
    procedure PBSMasterCreateAdapter(Sender: TObject; var ABindSourceAdapter: TBindSourceAdapter);
    procedure AfterScrollEventHandler(Adapter: TBindSourceAdapter);
    procedure PBSDetailCreateAdapter(Sender: TObject; var ABindSourceAdapter: TBindSourceAdapter);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Model, SampleData, System.Generics.Collections, FMX.Dialogs;

{$R *.fmx}

procedure TForm1.PBSMasterCreateAdapter(Sender: TObject; var ABindSourceAdapter: TBindSourceAdapter);
var
  LList: TObjectList<TPerson>;
begin
  LList := TSampleData.CreateSampleData;
  ABindSourceAdapter := TListBindSourceAdapter<TPerson>.Create(Self, LList, True);
  ABindSourceAdapter.AfterScroll := AfterScrollEventHandler; // <-- Master-Detail
end;

procedure TForm1.PBSDetailCreateAdapter(Sender: TObject; var ABindSourceAdapter: TBindSourceAdapter);
begin
  ABindSourceAdapter := TListBindSourceAdapter<TPhoneNumber>.Create(Self, nil, True);
end;

procedure TForm1.AfterScrollEventHandler(Adapter: TBindSourceAdapter);
var
  LPerson: TPerson;
  LDetailAdapter: TListBindSourceAdapter<TPhoneNumber>;
begin
  LPerson := PBSMaster.InternalAdapter.Current as TPerson;
  LDetailAdapter := PBSDetail.InternalAdapter as TListBindSourceAdapter<TPhoneNumber>;
//  LDetailAdapter.First; // <-- Bug prevention
  LDetailAdapter.Active := False;
  LDetailAdapter.SetList(LPerson.Phones, False); // <-- False = AV prevention
  LDetailAdapter.Active := True;
end;

end.
