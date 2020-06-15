unit U.Methods;

interface

uses
  System.Bindings.EvalProtocol;

procedure RegisterCurrencyCleanMethodOnFactory;

implementation

uses
  System.Bindings.Methods,
  System.Bindings.Helper,
  System.Character,
  System.SysUtils;


procedure RegisterCurrencyCleanMethodOnFactory;
var
  LMethodDescription: TMethodDescription;
  LInvokable: IInvokable;
begin
  TBindingMethodsFactory.RegisterMethod(
    TMethodDescription.Create(MakeInvokable(

      function(Args: TArray<IValue>): IValue
      var
        StrValue, StrResult: String;
        CurrChar: Char;
      begin
        StrValue := Args[0].GetValue.AsString;
        for CurrChar in StrValue do
          if CurrChar.IsDigit or (CurrChar = ',') then
            StrResult := StrResult + CurrChar;
        Result := TValueWrapper.Create(StrToFloat(StrResult));
      end),

      'CurrencyClean',   // Method identifier
      'CurrencyClean',   // Method name
      'Utilities',    // Unit name where the method is defined
      True,           // Enabled
      'Clean currency value from EUR symbol and other chars', // Long method description (Hint)
      nil             // Method's platform (TComponent=VCL; TFMXComponent=FMX; nil=both)
    )
  );
end;

initialization
  RegisterCurrencyCleanMethodOnFactory;

end.
