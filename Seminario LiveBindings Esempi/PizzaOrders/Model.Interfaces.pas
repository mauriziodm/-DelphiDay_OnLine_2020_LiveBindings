unit Model.Interfaces;

interface

uses
  FMX.Graphics, System.Generics.Collections, Model.PhoneNumber;

type

  IPizza = interface
    ['{17F036A2-FE50-4834-887B-4358B068EA05}']
    function GetID: Integer;
    function GetName: String;
    function GetPhoto: TBitMap;
    function GetPrice: Currency;
    procedure SetID(const Value: Integer);
    procedure SetName(const Value: String);
    procedure SetPhoto(const Value: TBitMap);
    procedure SetPrice(const Value: Currency);
    // Properties
    property ID:Integer read GetID write SetID;
    property Name:String read GetName write SetName;
    property Price:Currency read GetPrice write SetPrice;
    property Photo:TBitMap read GetPhoto write SetPhoto;
  end;

implementation

end.
