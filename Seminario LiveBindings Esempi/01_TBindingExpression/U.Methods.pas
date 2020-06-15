unit U.Methods;

interface

uses
  System.Bindings.EvalProtocol;


procedure PrintFactoryMethodList;
procedure RegisterCapitalizeMethodOnFactory;
function GetPutStarsMethodScope: IScope;

implementation

uses
  U.Utilities,
  System.Bindings.Methods,
  System.Bindings.Helper;


// PrintFactoryMethodList
procedure PrintFactoryMethodList;
var
  LFirst: Boolean;
  LMethod: TMethodDescription;
begin
  LFirst := True;
  WriteLn('Registered methods in the global factory:');
  Write('[');
  for LMethod in TBindingMethodsFactory.GetRegisteredMethods do
  begin
    if not LFirst then
      Write(', ');
    Write(LMethod.Name);
    LFirst := False;
  end;
  WriteLn(']');
  WriteLn('-----');
end;


// RegisterCustomMethodOnFactory
procedure RegisterCapitalizeMethodOnFactory;
var
  LMethodDescription: TMethodDescription;
  LInvokable: IInvokable;
begin
  // Make IInvokable implementation
  LInvokable := MakeInvokable(
    function(Args: TArray<IValue>): IValue
    var
      StrValue: String;
    begin
      StrValue := Args[0].GetValue.AsString;
      Result := TValueWrapper.Create(CapitalizeString(StrValue));
    end
  );

  // Create a TMethodDescription instance
  LMethodDescription := TMethodDescription.Create(
    LInvokable,   // Anonimous method wrapped in a IInvokable implementation instance
    'Capitalize', // Method identifier
    'Capitalize', // Method name
    'U.Utilities',  // Unit name where the method is defined
    True,         // Enabled
    'Capitalize the first letter of every word in the string', // Long method description (Hint)
    nil           // Method's platform (TComponent=VCL; TFMXComponent=FMX; nil=both)
  );

  // Register in the methods factory
  TBindingMethodsFactory.RegisterMethod(LMethodDescription);

  // Compressed version
//  TBindingMethodsFactory.RegisterMethod(
//    TMethodDescription.Create(MakeInvokable(
//      function(Args: TArray<IValue>): IValue
//      var
//        StrValue: String;
//      begin
//        StrValue := Args[0].GetValue.AsString;
//        Result := TValueWrapper.Create(CapitalizeString(StrValue));
//      end),
//      'Capitalize',   // Method identifier
//      'Capitalize',   // Method name
//      'Utilities',    // Unit name where the method is defined
//      True,           // Enabled
//      'Capitalize the first letter of every word in the string', // Long method description (Hint)
//      nil             // Method's platform (TComponent=VCL; TFMXComponent=FMX; nil=both)
//    )
//  );
end;


// GetCustomMethodScope
function GetPutStarsMethodScope: IScope;
begin
  Result := TBindings.CreateMethodScope('PutStars',
    MakeInvokable(  // IInvokable
      function(Args: TArray<IValue>): IValue
      begin
        Result := TValueWrapper.Create('*** ' + Args[0].GetValue.AsString + ' ***');
      end
    )
  );
end;

end.
