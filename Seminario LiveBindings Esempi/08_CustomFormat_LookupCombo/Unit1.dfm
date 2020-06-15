object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Currency & LookupCombo sample'
  ClientHeight = 616
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    865
    616)
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Tag = 4
    Left = 8
    Top = 8
    Width = 626
    Height = 600
    Anchors = [akLeft, akTop, akRight, akBottom]
    ColCount = 4
    FixedCols = 0
    RowCount = 78
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ColWidths = (
      30
      300
      150
      40)
    ColAligments = (
      1
      0
      1
      1)
  end
  object EditCategID: TEdit
    Left = 640
    Top = 23
    Width = 33
    Height = 31
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = '1'
  end
  object ComboBoxCateg: TComboBox
    Left = 679
    Top = 23
    Width = 178
    Height = 31
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'Beverages'
    Items.Strings = (
      'Beverages'
      'Condiments'
      'Confections'
      'Dairy Products'
      'Grains/Cereals'
      'Meat/Poultry'
      'Produce'
      'Seafood')
  end
  object EditPrice: TEdit
    Left = 679
    Top = 72
    Width = 178
    Height = 31
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = #8364' 12,36 pz'
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 723
    Top = 262
  end
  object ProductsTable: TFDQuery
    Active = True
    Connection = Sqlite_demoConnection
    SQL.Strings = (
      'SELECT * FROM Products')
    Left = 683
    Top = 334
    object ProductsTableProductID: TFDAutoIncField
      FieldName = 'ProductID'
      Origin = 'ProductID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ProductsTableProductName: TStringField
      FieldName = 'ProductName'
      Origin = 'ProductName'
      Required = True
      Size = 40
    end
    object ProductsTableCategoryID: TIntegerField
      FieldName = 'CategoryID'
      Origin = 'CategoryID'
    end
    object ProductsTableSupplierID: TIntegerField
      FieldName = 'SupplierID'
      Origin = 'SupplierID'
    end
    object ProductsTableQuantityPerUnit: TStringField
      FieldName = 'QuantityPerUnit'
      Origin = 'QuantityPerUnit'
    end
    object ProductsTableUnitPrice: TCurrencyField
      FieldName = 'UnitPrice'
      Origin = 'UnitPrice'
    end
    object ProductsTableUnitsInStock: TSmallintField
      FieldName = 'UnitsInStock'
      Origin = 'UnitsInStock'
    end
    object ProductsTableUnitsOnOrder: TSmallintField
      FieldName = 'UnitsOnOrder'
      Origin = 'UnitsOnOrder'
    end
    object ProductsTableReorderLevel: TSmallintField
      FieldName = 'ReorderLevel'
      Origin = 'ReorderLevel'
    end
    object ProductsTableDiscontinued: TBooleanField
      FieldName = 'Discontinued'
      Origin = 'Discontinued'
      Required = True
    end
  end
  object CategoriesTable: TFDQuery
    Active = True
    Connection = Sqlite_demoConnection
    SQL.Strings = (
      'SELECT * FROM Categories')
    Left = 775
    Top = 331
    object CategoriesTableCategoryID: TFDAutoIncField
      FieldName = 'CategoryID'
      Origin = 'CategoryID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CategoriesTableCategoryName: TStringField
      FieldName = 'CategoryName'
      Origin = 'CategoryName'
      Required = True
      Size = 15
    end
    object CategoriesTableDescription: TMemoField
      FieldName = 'Description'
      Origin = 'Description'
      BlobType = ftMemo
    end
    object CategoriesTablePicture: TBlobField
      FieldName = 'Picture'
      Origin = 'Picture'
    end
  end
  object BSProducts: TBindSourceDB
    DataSet = ProductsTable
    ScopeMappings = <>
    Left = 680
    Top = 392
  end
  object BSCategories: TBindSourceDB
    DataSet = CategoriesTable
    ScopeMappings = <>
    Left = 776
    Top = 392
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 724
    Top = 197
    object LinkGridToDataSourceBSProducts: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BSProducts
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'ProductID'
          Width = 30
        end
        item
          MemberName = 'ProductName'
          Width = 300
        end
        item
          MemberName = 'UnitPrice'
          Width = 150
          CustomFormat = 'Format('#39'%%m pz'#39', Self.AsFloat)'
        end
        item
          MemberName = 'CategoryID'
          Width = 40
        end>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BSProducts
      FieldName = 'UnitPrice'
      Control = EditPrice
      Track = True
      CustomFormat = 'Format('#39'%%m pz'#39', Self.AsFloat)'
      CustomParse = 'CurrencyClean(%s)'
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BSProducts
      FieldName = 'CategoryID'
      Control = EditCategID
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BSProducts
      FieldName = 'CategoryID'
      Control = ComboBoxCateg
      Track = True
      FillDataSource = BSCategories
      FillValueFieldName = 'CategoryID'
      FillDisplayFieldName = 'CategoryName'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
