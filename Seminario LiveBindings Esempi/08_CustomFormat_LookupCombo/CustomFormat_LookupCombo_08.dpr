program CustomFormat_LookupCombo_08;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  U.Methods in 'U.Methods.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
