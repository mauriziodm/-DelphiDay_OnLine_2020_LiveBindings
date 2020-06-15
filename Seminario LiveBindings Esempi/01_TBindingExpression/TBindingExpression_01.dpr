program TBindingExpression_01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Bindings.Expression,
  System.Bindings.ExpressionDefaults,
  System.Bindings.EvalProtocol,
  System.Bindings.Methods,
  U.Utilities in 'U.Utilities.pas',
  U.Methods in 'U.Methods.pas',
  U.Person in 'U.Person.pas',
  U.Converters in 'U.Converters.pas';

var
  InputExpression: String;
  Expression: TBindingExpression;
  ResultValue: IValue;
begin
  WriteLn('DelphiDay 2020 - TBindingExpression (return to exit)');
{$REGION}
//  RegisterCapitalizeMethodOnFactory; // Step3
//  PrintFactoryMethodList; // Step2
{$ENDREGION}
  Expression := TBindingExpressionDefault.Create(nil);
{$REGION}
//  Expression.Associations.Add(TPerson.Create('Fabio', 'Codebue', '10/10/2005'), 'Person2'); // Step 7
{$ENDREGION}
  try
    while True do
    begin
      try
        // Get the expression
        Write('Expression: ');
        ReadLn(InputExpression);
        if InputExpression.Trim.IsEmpty then
          Break;

        // Set & compile the expression
        Expression.Source := InputExpression;
        Expression.Compile([], [], []); //Step1
{$REGION}
//        Expression.Compile([], [], [TBindingMethodsFactory.GetMethodScope]); // Step2-3
//        Expression.Compile([TBindingMethodsFactory.GetMethodScope, GetPutStarsMethodScope]); // Step 4
//        Expression.Compile([TBindingMethodsFactory.GetMethodScope, GetPersonScopeSimple]); // Step 5
//        Expression.Compile([TBindingMethodsFactory.GetMethodScope, GetDictionaryScope]); // Step 6
{$ENDREGION}
        // Evaluate & print the result value
        ResultValue := Expression.Evaluate;
        WriteLn(ResultValue.GetValue.ToString);
      except
        on E: Exception do
        begin
          Writeln(E.ClassName, ': ', E.Message);
        end;
      end;
    end;
  finally
    Expression.Free;
  end;

end.
