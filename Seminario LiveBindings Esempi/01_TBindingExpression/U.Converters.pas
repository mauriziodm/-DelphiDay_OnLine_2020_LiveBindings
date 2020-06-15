unit U.Converters;

interface

procedure RegisterStringToListBoxConverter;
procedure RegisterStringToBrushColorConverter;

implementation

uses
  System.Bindings.Outputs,
  System.Rtti,
  Vcl.StdCtrls,
  Vcl.Graphics,
  System.SysUtils;

procedure RegisterStringToListBoxConverter;
var
  LConverterDescription: TConverterDescription;
begin
  // Create the converter description object
  LConverterDescription := TConverterDescription.Create(
    procedure(const InValue: TValue; var OutValue: TValue)
    var
      LListBox: TListBox;
    begin
      LListBox := OutValue.AsObject as TListBox;
      if LListBox.ItemIndex > -1 then
        LListBox.Items[LListBox.ItemIndex] := InValue.AsString;
    end,
    'StringToListBox', // Converter ID
    'StringToListBox', // Converter name
    'U.Converters', // Unit name
    True, // Enabled
    'StringToListBox', // Converter long description (hint)
    nil // Converter platform (TComponent=VCL; TFMXComponent=FMX; nil=both)
  );

  // Register in the converter factory
  TValueRefConverterFactory.RegisterConversion(
    TypeInfo(String),
    TypeInfo(TListBox),
    LConverterDescription
  );
end;

procedure RegisterStringToBrushColorConverter;
var
  LConverterDescription: TConverterDescription;
begin
  // Create the converter description object
  LConverterDescription := TConverterDescription.Create(
    procedure(const InValue: TValue; var OutValue: TValue)
    var
      LBrush: TBrush;
      LColorStr: String;
      LColor: TColor;
    begin
      // In & out value extraction
      LBrush := OutValue.AsObject as TBrush;
      LColorStr := LowerCase(InValue.AsString.Trim);
      // Color recognition
      if LColorStr = 'red' then
        LColor := clRed
      else if LColorStr = 'green' then
        LColor := clGreen
      else if LColorStr = 'lime' then
        LColor := clLime
      else if LColorStr = 'blue' then
        LColor := clBlue
      else if LColorStr = 'yellow' then
        LColor := clYellow
      else if LColorStr = 'gray' then
        LColor := clGray
      else if LColorStr = 'black' then
        LColor := clblack
      else
        LColor := clWhite;
      // Set the color
      LBrush.Color := LColor;
    end,
    'StringToBrushColor',   // Converter ID
    'StringToBrushColor',   // Converter name
    'U.Converters',         // Unit name
    True,                   // Enabled
    'StringToBrushColor',   // Converter long description (hint)
    nil                     // Converter platform (TComponent=VCL; TFMXComponent=FMX; nil=both)
  );

  // Register in the converter factory
  TValueRefConverterFactory.RegisterConversion(
    TypeInfo(String),
    TypeInfo(TBrush),
    LConverterDescription
  );
end;

end.
