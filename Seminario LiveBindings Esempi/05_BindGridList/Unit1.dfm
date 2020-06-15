object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'BindGridList sample'
  ClientHeight = 455
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 152
    Top = 11
    Width = 287
    Height = 16
    Caption = 'NB:  BindExpression1 sincronizza posizione (error)'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 39
    Width = 710
    Height = 389
    ColCount = 4
    RowCount = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ColWidths = (
      25
      64
      81
      200)
    RowHeights = (
      24
      20
      24
      24
      24
      24
      24
      24
      24
      24)
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Action = acEnableDisable
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object BindNavigator1: TBindNavigator
    Left = 478
    Top = 8
    Width = 240
    Height = 25
    DataSource = BindSourceDB1
    Orientation = orHorizontal
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 436
    Width = 726
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 566
    Top = 78
  end
  object EmployeesTable: TFDQuery
    Active = True
    AfterScroll = EmployeesTableAfterScroll
    Connection = Sqlite_demoConnection
    SQL.Strings = (
      'SELECT * FROM Employees')
    Left = 566
    Top = 126
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = EmployeesTable
    ScopeMappings = <>
    Left = 568
    Top = 192
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 416
    Top = 96
    object BindGridList1: TBindGridList
      Category = 'Lists'
      ControlComponent = StringGrid1
      SourceComponent = BindSourceDB1
      ColumnExpressions = <
        item
          ColumnIndex = 0
          SourceMemberName = 'EmployeeID'
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[0]'
              SourceExpression = 'AsString'
            end>
          FormatCellHeaderExpressions = <>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[0,0]'
              SourceExpression = '"ID"'
            end>
        end
        item
          ColumnIndex = 1
          SourceMemberName = 'FirstName'
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[1]'
              SourceExpression = 'AsString'
            end>
          FormatCellHeaderExpressions = <>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[1,0]'
              SourceExpression = '"FirstName"'
            end>
        end
        item
          ColumnIndex = 2
          SourceMemberName = 'LastName'
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[2]'
              SourceExpression = 'AsString'
            end>
          FormatCellHeaderExpressions = <>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[2,0]'
              SourceExpression = '"LastName"'
            end>
        end
        item
          Name = 'City'
          ColumnIndex = 3
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[3]'
              SourceExpression = #39'From: '#39' + City.AsString + '#39' - '#39' + Country.AsString'
            end>
          FormatCellHeaderExpressions = <>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[3,0]'
              SourceExpression = '"City"'
            end>
        end>
      FormatControlExpressions = <
        item
          ControlExpression = 'Visible'
          SourceExpression = 'True'
        end
        item
          ControlExpression = 'ColWidths[0]'
          SourceExpression = '25'
        end
        item
          ControlExpression = 'ColCount'
          SourceExpression = '4'
        end
        item
          ControlExpression = 'Owner.acEnableDisable.Caption'
          SourceExpression = #39'Disable'#39
        end
        item
          ControlExpression = 'ColWidths[3]'
          SourceExpression = '200'
        end>
      ClearControlExpressions = <
        item
          ControlExpression = 'Visible'
          SourceExpression = 'False'
        end
        item
          ControlExpression = 'Owner.acEnableDisable.Caption'
          SourceExpression = #39'Enable'#39
        end>
      BreakGroups = <>
    end
    object BindExpression1: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = StringGrid1
      SourceComponent = EmployeesTable
      SourceExpression = 'RecNo'
      ControlExpression = 'Row'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object BindExpression2: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = StatusBar1
      SourceComponent = EmployeesTable
      SourceExpression = 'Format('#39'Record %d of %d'#39', RecNo, RecordCount)'
      ControlExpression = 'SimpleText'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
  end
  object ActionList1: TActionList
    Left = 408
    Top = 168
    object acEnableDisable: TAction
      Caption = 'Disable'
      OnExecute = acEnableDisableExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 232
    object MenuFile: TMenuItem
      Caption = 'File'
      object acEnableDisable1: TMenuItem
        Action = acEnableDisable
      end
    end
  end
end
