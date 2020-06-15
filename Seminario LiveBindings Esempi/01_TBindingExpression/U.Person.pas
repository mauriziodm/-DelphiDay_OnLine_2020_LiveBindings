unit U.Person;

interface

uses
  System.Bindings.EvalProtocol;

type

  TPerson = class
  private
    FBirthDate: TDate;
    FLastName: String;
    FFirstName: String;
    function GetIsAdult: Boolean;
    function GetAge: Integer;
    function GetFullName: String;
  public
    constructor Create(const AFirstName, ALastName, AStrBirthDate: String);
    property FirstName: String read FFirstName write FFirstName;
    property LastName: String read FLastName write FLastName;
    property FullName: String read GetFullName;
    property BirthDate: TDate read FBirthDate write FBirthDate;
    property Age: Integer read GetAge;
    property IsAdult: Boolean read GetIsAdult;
  end;

  function GetDictionaryScope: IScope;
  function GetPersonScopeSimple: IScope;

implementation

uses
  System.DateUtils,
  System.SysUtils,
  System.Bindings.EvalSys,
  System.Bindings.ObjEval;

function GetDictionaryScope: IScope;
var
  LPerson: TPerson;
  LPersonScope: IScope;
  LDictionaryScope: TDictionaryScope;
begin
  LPerson := TPerson.Create('Maurizio', 'Del Magno', '22/10/1970');
  LPersonScope := WrapObject(LPerson);
  LDictionaryScope := TDictionaryScope.Create;
  LDictionaryScope.Map.Add('Person', LPersonScope);
  Result := LDictionaryScope;

  // Compressed version
//  Result := TDictionaryScope.Create.Map.Add('Person', WrapObject(TPerson.Create('Maurizio', 'Del Magno', '22/10/1970')));
end;

function GetPersonScopeSimple: IScope;
begin
  Result := WrapObject(TPerson.Create('Marco', 'Mottadelli', '01/07/1980'));
end;

{ TPerson }

constructor TPerson.Create(const AFirstName, ALastName, AStrBirthDate: String);
begin
  FFirstName := AFirstName;
  FLastName := ALastName;
  FBirthDate := StrToDate(AStrBirthDate);
end;

function TPerson.GetIsAdult: Boolean;
begin
  Result := Age >= 18;
end;

function TPerson.GetAge: Integer;
begin
  Result := YearsBetween(Now, FBirthDate);
end;

function TPerson.GetFullName: String;
begin
  Result := FFirstName + ' ' + FLastName;
end;

end.
