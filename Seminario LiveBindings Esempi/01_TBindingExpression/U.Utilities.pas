unit U.Utilities;

interface

function CapitalizeString(const AValue: String): String;

implementation

uses
  System.SysUtils;

function CapitalizeString(const AValue: String): String;
const
  ALLOWEDCHARS = ['a'..'z', '_'];
var
  LIndex: Integer;
  LCapitalizeNext: Boolean;
begin
  LCapitalizeNext := True;
  Result := LowerCase(AValue);
  if not Result.IsEmpty then
  begin
    for LIndex := 1 to Length(Result) do
      if LCapitalizeNext then
      begin
        Result[LIndex] := UpCase(Result[LIndex]);
        LCapitalizeNext := False;
      end
      else
      if not CharInSet(Result[LIndex], ALLOWEDCHARS) then
        LCapitalizeNext := True;
  end;
end;

end.
