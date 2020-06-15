unit Model.Order;

interface

uses
  Model.OrderItem, System.Generics.Collections, iORM.Attributes, Model.Customer;

type

  [ioEntity('Orders')]
  TOrder = class
  private
    FID: Integer;
    FCustomer: TCustomer;
    FNote: String;
    FOrderItems: TObjectList<TOrderItem>;
    function GetGrandTotal: Currency;
    function GetListViewDetail: String;
    function GetListViewText: String;
  public
    constructor Create;
    destructor Destroy; override;
    property ID: Integer read FID write FID;
    property Note: String read FNote write FNote;
    [ioBelongsTo(TCustomer)]
    property Customer: TCustomer read FCustomer write FCustomer;
    [ioHasMany(TOrderItem, 'OrderID')]
    property OrderItems: TObjectList<TOrderItem> read FOrderItems write FOrderItems;
    [ioSkip]
    property GrandTotal: Currency read GetGrandTotal;
    [ioSkip]
    property ListViewText: String read GetListViewText;
    [ioSkip]
    property ListViewDetail: String read GetListViewDetail;
  end;

implementation

uses
  System.SysUtils, iORM;

{ TOrder }

constructor TOrder.Create;
begin
  FOrderItems := TObjectList<TOrderItem>.Create;
end;

destructor TOrder.Destroy;
begin
  FOrderItems.Free;
  inherited;
end;

function TOrder.GetGrandTotal: Currency;
var
  LOrderItem: TOrderItem;
begin
  Result := 0;
  for LOrderItem in FOrderItems do
    Result := Result + LOrderItem.Total;
end;

function TOrder.GetListViewDetail: String;
begin
  Result := Format('%m - %s', [GrandTotal, FNote]);
end;

function TOrder.GetListViewText: String;
begin
  if Assigned(FCustomer) then
    Result := FCustomer.FullName
  else
    Result := '- - -';
end;

end.
