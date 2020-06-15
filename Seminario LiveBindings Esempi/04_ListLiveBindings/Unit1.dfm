object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 426
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 8
    Top = 40
    Width = 185
    Height = 321
    ItemHeight = 13
    Items.Strings = (
      'NANCY DAVOLIO - 1'
      'ANDREW FULLER - 2'
      'JANET LEVERLING - 3'
      'MARGARET PEACOCK - 4'
      'STEVEN BUCHANAN - 5'
      'MICHAEL SUYAMA - 6'
      'ROBERT KING - 7'
      'LAURA CALLAHAN - 8'
      'ANNE DODSWORTH - 9')
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object Button1: TButton
    Left = 8
    Top = 9
    Width = 89
    Height = 25
    Caption = 'Enable/Disable'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 351
    Width = 185
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 378
    Width = 185
    Height = 21
    TabOrder = 3
    Text = 'ComboBox1'
    Items.Strings = (
      'NANCY DAVOLIO - 1'
      'ANDREW FULLER - 2'
      'JANET LEVERLING - 3'
      'MARGARET PEACOCK - 4'
      'STEVEN BUCHANAN - 5'
      'MICHAEL SUYAMA - 6'
      'ROBERT KING - 7'
      'LAURA CALLAHAN - 8'
      'ANNE DODSWORTH - 9')
  end
  object ListView1: TListView
    Left = 208
    Top = 40
    Width = 225
    Height = 359
    Columns = <>
    Items.ItemData = {
      05F60100000900000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF130000
      000E4E0061006E0063007900200020004400610076006F006C0069006F000000
      0000FFFFFFFFFFFFFFFF00000000FFFFFFFF140000000E41006E006400720065
      00770020002000460075006C006C006500720000000000FFFFFFFFFFFFFFFF00
      000000FFFFFFFF15000000104A0061006E0065007400200020004C0065007600
      650072006C0069006E00670000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF
      16000000114D0061007200670061007200650074002000200050006500610063
      006F0063006B0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF1700000010
      530074006500760065006E0020002000420075006300680061006E0061006E00
      00000000FFFFFFFFFFFFFFFF00000000FFFFFFFF180000000F4D006900630068
      00610065006C002000200053007500790061006D00610000000000FFFFFFFFFF
      FFFFFF00000000FFFFFFFF190000000C52006F00620065007200740020002000
      4B0069006E00670000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF1A000000
      0F4C00610075007200610020002000430061006C006C006100680061006E0000
      000000FFFFFFFFFFFFFFFF00000000FFFFFFFF1B0000000F41006E006E006500
      2000200044006F006400730077006F00720074006800}
    TabOrder = 4
    ViewStyle = vsList
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 224
    Top = 8
    object BindList1: TBindList
      Category = 'Lists'
      ControlComponent = ListBox1
      SourceComponent = BindSourceDB1
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 
            'UpperCase(FirstName.AsString + '#39' '#39' + LastName.AsString + '#39' - '#39' +' +
            ' EmployeeID.AsString)'
        end>
      FormatControlExpressions = <
        item
          ControlExpression = 'Visible'
          SourceExpression = 'True'
        end>
      ClearControlExpressions = <
        item
          ControlExpression = 'Visible'
          SourceExpression = 'False'
        end>
    end
    object BindExpression1: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = Edit1
      SourceComponent = ListBox1
      SourceExpression = 
        'IfThen(ItemIndex > -1, Items.Strings[ItemIndex], '#39'Select an item' +
        ' please'#39')'
      ControlExpression = 'Text'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object BindList2: TBindList
      Category = 'Lists'
      ControlComponent = ComboBox1
      SourceComponent = BindSourceDB1
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 
            'UpperCase(FirstName.AsString + '#39' '#39' + LastName.AsString + '#39' - '#39' +' +
            ' EmployeeID.AsString)'
        end>
      FormatControlExpressions = <>
      ClearControlExpressions = <>
    end
    object BindList3: TBindList
      Category = 'Lists'
      ControlComponent = ListView1
      SourceComponent = BindSourceDB1
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'FirstName.AsString + '#39'  '#39' + LastName.AsString'
        end>
      FormatControlExpressions = <>
      ClearControlExpressions = <>
    end
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 389
    Top = 16
  end
  object EmployeesTable: TFDQuery
    Active = True
    Connection = Sqlite_demoConnection
    SQL.Strings = (
      'SELECT * FROM Employees')
    Left = 389
    Top = 64
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = EmployeesTable
    ScopeMappings = <>
    Left = 384
    Top = 120
  end
end
