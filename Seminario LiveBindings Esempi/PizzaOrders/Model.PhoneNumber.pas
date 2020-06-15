unit Model.PhoneNumber;

interface

uses
  iORM.Attributes;

type

  [ioEntity]
  TPhoneNumber = class
  private
    FID, FCustomerID: Integer;
    FNumberType: String;
    FNumber: String;
  public
    constructor Create(const ANumberType, ANumber: String);
    property ID: Integer read FID write FID;
    property CustomerID: Integer read FCustomerID write FCustomerID;
    property NumberType: String read FNumberType write FNumberType;
    property Number: String read FNumber write FNumber;
  end;

implementation

{ TPhoneNumber }

constructor TPhoneNumber.Create(const ANumberType, ANumber: String);
begin
  inherited Create;
  FNumberType := ANumberType;
  FNumber := ANumber;
end;

end.
