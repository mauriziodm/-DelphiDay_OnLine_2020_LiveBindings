unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, FMX.Edit;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    TrackBar1: TTrackBar;
    BindingsList1: TBindingsList;
    ProgressBar1: TProgressBar;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    BindExprItems1: TBindExprItems;
    BindExpression3: TBindExpression;
    Edit2: TEdit;
    BindExpression4: TBindExpression;
    BindExpression1: TBindExpression;
    BindExpression2: TBindExpression;
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.Bindings.Methods, System.Generics.Collections, System.Bindings.EvalProtocol,
  System.Character;

{$R *.fmx}

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  BindingsList1.Notify(Sender, '');
end;

initialization

  TBindingMethodsFactory.RegisterMethod(
    TMethodDescription.Create(MakeInvokable(
      function(Args: TArray<IValue>): IValue
      var
        LValue, LResult: String;
        LChar: Char;
      begin
        LValue := Args[0].GetValue.AsString;
        LResult := '0';
        for LChar in LValue do
          if LChar.IsDigit then
            LResult := LResult + LChar;
        Result := TValueWrapper.Create(LResult.ToInteger);
      end
    ), 'DigitsOnly', 'DigitsOnly', 'Unit1', True, 'DigitsOnly description', nil)
  );

finalization

  TBindingMethodsFactory.UnRegisterMethod('DigitsOnly');

end.
