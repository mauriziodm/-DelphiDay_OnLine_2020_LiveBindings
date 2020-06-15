program CustomConverters_03;

uses
  Vcl.Forms,
  F.Main in 'F.Main.pas' {MainForm},
  U.Converters in 'U.Converters.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
