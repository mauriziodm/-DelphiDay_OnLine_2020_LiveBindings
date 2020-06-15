unit Model.Customer;

interface

uses
  System.Generics.Collections, iORM.Attributes, Model.PhoneNumber;

type

  [ioEntity]
  TCustomer = class
  private
    FID: Integer;
    FFirstName: String;
    FLastName: String;
    FAddress: String;
    FNumbers: TObjectList<TPhoneNumber>;
    function GetFullName: String;
  public
    constructor Create;
    destructor Destroy; override;
    property ID:Integer read FID write FID;
    property FirstName: String read FFirstName write FFirstName;
    property LastName: String read FLastName write FLastName;
    property Address:String read FAddress write FAddress;
    [ioHasMany(TPhoneNumber, 'CustomerID')]
    property Numbers:TObjectList<TPhoneNumber> read FNumbers write FNumbers;
    [ioSkip]
    property FullName:String read GetFullName;
  end;

implementation

{ TCustomer }

constructor TCustomer.Create;
begin
  FNumbers := TObjectList<TPhoneNumber>.Create;
end;

destructor TCustomer.Destroy;
begin
  FNumbers.Free;
  inherited;
end;

function TCustomer.GetFullName: String;
begin
  Result := FFirstName + ' ' + FLastName;
end;

end.
