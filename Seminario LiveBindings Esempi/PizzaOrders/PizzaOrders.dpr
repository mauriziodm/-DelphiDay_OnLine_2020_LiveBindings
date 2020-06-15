program PizzaOrders;

uses
  System.StartUpCopy,
  FMX.Forms,
  FormMain in 'FormMain.pas' {MainForm},
  Model.Customer in 'Model.Customer.pas',
  Model.Interfaces in 'Model.Interfaces.pas',
  Model.Order in 'Model.Order.pas',
  Model.OrderItem in 'Model.OrderItem.pas',
  Model.PhoneNumber in 'Model.PhoneNumber.pas',
  Model.Pizza in 'Model.Pizza.pas';

{$R *.res}
{$STRONGLINKTYPES ON}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
