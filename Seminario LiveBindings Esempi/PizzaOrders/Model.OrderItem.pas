unit Model.OrderItem;

interface

uses
  Model.Interfaces, System.Generics.Collections, iORM.Attributes, FMX.Graphics;

type

  [ioEntity]
  TOrderItem = class
  private
    FID, FOrderID: Integer;
    FPizza: IPizza;
    FQty: Integer;
    function GetListViewDetail: String;
    function GetListViewText: String;
    function GetTotal: Currency;
    function GetListViewPhoto: TBitMap;
  public
    constructor Create(const APizza: IPizza; const AQty: Integer); overload;
    constructor Create(const APizza: TObject); overload;
    property ID: Integer read FID write FID;
    property OrderID: Integer read FOrderID write FOrderID;
    property Qty: Integer read FQty write FQty;
    [ioBelongsTo(IPizza)]
    property Pizza: IPizza read FPizza write FPizza;
    [ioSkip]
    property ListViewText: String read GetListViewText;
    [ioSkip]
    property ListViewDetail: String read GetListViewDetail;
    [ioSkip]
    property ListViewPhoto: TBitMap read GetListViewPhoto;
    [ioSkip]
    property Total: Currency read GetTotal;
  end;

implementation

uses
  System.SysUtils;

{ TOrderItem }

constructor TOrderItem.Create(const APizza: IPizza; const AQty: Integer);
begin
  FPizza := APizza;
  FQty := AQty;
end;

constructor TOrderItem.Create(const APizza: TObject);
var
  LPizza: IPizza;
begin
  if not Supports(APizza, IPizza, LPizza) then
    raise Exception.Create('This is not a pizza');
  FPizza := LPizza;
  FQty := 1;
end;

function TOrderItem.GetListViewDetail: String;
begin
  Result := Format('%m x %d = %m', [FPizza.Price, Qty, Total]);
end;

function TOrderItem.GetListViewPhoto: TBitMap;
begin
  Result := FPizza.Photo;
end;

function TOrderItem.GetListViewText: String;
begin
  Result := Format('%s (%d)', [FPizza.Name, FPizza.ID]);
end;

function TOrderItem.GetTotal: Currency;
begin
  Result := FPizza.Price * FQty;
end;

end.
