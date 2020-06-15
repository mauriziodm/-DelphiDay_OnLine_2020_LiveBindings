object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Output converters'
  ClientHeight = 242
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 216
    Top = 96
    Width = 121
    Height = 73
  end
  object CheckBox1: TCheckBox
    Left = 32
    Top = 152
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 32
    Top = 192
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 216
    Top = 192
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = Edit1Change
  end
  object Edit3: TEdit
    Left = 400
    Top = 192
    Width = 321
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = Edit1Change
  end
  object ListBox1: TListBox
    Left = 400
    Top = 16
    Width = 321
    Height = 153
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    Items.Strings = (
      'Antonio Polito'
      'Carlo Narcisi'
      'Fabio Codebue'
      'Marco Mottadelli'
      'Maurizio Del Magno'
      'Omar Bossoni'
      'Thomas Ranzetti')
    ParentFont = False
    TabOrder = 4
    OnClick = Edit1Change
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 16
    Top = 8
    object BindExpressionCheckBox: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = CheckBox1
      SourceComponent = Edit1
      SourceExpression = 'Text'
      ControlExpression = 'Checked'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object BindExpressionShapeBrushColor: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = Shape1
      SourceComponent = Edit2
      SourceExpression = 'Text'
      ControlExpression = 'Brush'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object BindExpressionStringToListBox: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = Owner
      SourceComponent = Edit3
      SourceExpression = 'Text'
      ControlExpression = 'ListBox1'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object BindExpressionListBoxToString: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = Edit3
      SourceComponent = ListBox1
      SourceExpression = 'SelectedText(Self)'
      ControlExpression = 'Text'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
  end
end
