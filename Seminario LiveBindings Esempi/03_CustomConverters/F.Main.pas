unit F.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.ExtCtrls, U.Converters;

type
  TMainForm = class(TForm)
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    BindingsList1: TBindingsList;
    Edit2: TEdit;
    Shape1: TShape;
    BindExpressionCheckBox: TBindExpression;
    BindExpressionShapeBrushColor: TBindExpression;
    Edit3: TEdit;
    ListBox1: TListBox;
    BindExpressionStringToListBox: TBindExpression;
    BindExpressionListBoxToString: TBindExpression;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.Edit1Change(Sender: TObject);
begin
  BindingsList1.Notify(Sender, '');
end;

initialization
  RegisterStringToListBoxConverter;
  RegisterStringToBrushColorConverter;

end.
