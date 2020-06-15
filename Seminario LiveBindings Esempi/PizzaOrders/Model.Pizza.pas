unit Model.Pizza;

interface

uses
  Model.Interfaces, FMX.Graphics, iORM.Attributes;

type

  [ioEntity, diImplements(IPizza)]
  TPizza = class(TInterfacedObject, IPizza)
  private
    FID: Integer;
    FName: String;
    FPrice: Currency;
    FPhoto: TBitMap;
    function GetID: Integer;
    function GetName: String;
    function GetPrice: Currency;
    function GetPhoto: TBitMap;
    procedure SetID(const Value: Integer);
    procedure SetName(const Value: String);
    procedure SetPrice(const Value: Currency);
    procedure SetPhoto(const Value: TBitMap);
  public
    constructor Create;
    destructor Destroy; override;
    property ID:Integer read GetID write SetID;
    property Name:String read GetName write SetName;
    property Photo:TBitMap read GetPhoto write SetPhoto;
    property Price:Currency read GetPrice write SetPrice;
  end;

implementation

{ TPizza }

constructor TPizza.Create;
begin
  FPhoto := TBitMap.Create;
end;

destructor TPizza.Destroy;
begin
  FPhoto.Free;
  inherited;
end;

function TPizza.GetID: Integer;
begin
  Result := FID;
end;

function TPizza.GetName: String;
begin
  Result := FName;
end;

function TPizza.GetPhoto: TBitMap;
begin
  Result := FPhoto;
end;

function TPizza.GetPrice: Currency;
begin
  Result := FPrice;
end;

procedure TPizza.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TPizza.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TPizza.SetPhoto(const Value: TBitMap);
begin
  FPhoto := Value;
end;

procedure TPizza.SetPrice(const Value: Currency);
begin
  FPrice := Value;
end;

end.
