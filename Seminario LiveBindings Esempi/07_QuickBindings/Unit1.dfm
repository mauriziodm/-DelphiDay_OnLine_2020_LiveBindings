object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'QuickBindings sample'
  ClientHeight = 496
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 227
    Top = 12
    Width = 12
    Height = 16
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 278
    Top = 12
    Width = 53
    Height = 16
    Caption = 'Company'
  end
  object Label3: TLabel
    Left = 523
    Top = 12
    Width = 21
    Height = 16
    Caption = 'City'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 39
    Width = 213
    Height = 449
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Alfreds Futterkiste'
      'Ana Trujillo Emparedados y helados'
      'Antonio Moreno Taqueria'
      'Around the Horn'
      'Berglunds snabbkop'
      'Blauer See Delikatessen'
      'Blondesddsl pere et fils'
      'Bolido Comidas preparadas'
      'Bon app'#39
      'Bottom-Dollar Markets'
      'B'#39's Beverages'
      'Cactus Comidas para llevar'
      'Centro comercial Moctezuma'
      'Chop-suey Chinese'
      'Comercio Mineiro'
      'Consolidated Holdings'
      'Drachenblut Delikatessen'
      'Du monde entier'
      'Eastern Connection'
      'Ernst Handel'
      'Familia Arquibaldo'
      'FISSA Fabrica Inter. Salchichas S.A.'
      'Folies gourmandes'
      'Folk och fa HB'
      'Frankenversand'
      'France restauration'
      'Franchi S.p.A.'
      'Furia Bacalhau e Frutos do Mar'
      'Galeria del gastronomo'
      'Godos Cocina Tipica'
      'Gourmet Lanchonetes'
      'Great Lakes Food Market'
      'GROSELLA-Restaurante'
      'Hanari Carnes'
      'HILARION-Abastos'
      'Hungry Coyote Import Store'
      'Hungry Owl All-Night Grocers'
      'Island Trading'
      'Koniglich Essen'
      'La corne d'#39'abondance'
      'La maison d'#39'Asie'
      'Laughing Bacchus Wine Cellars'
      'Lazy K Kountry Store'
      'Lehmanns Marktstand'
      'Let'#39's Stop N Shop'
      'LILA-Supermercado'
      'LINO-Delicateses'
      'Lonesome Pine Restaurant'
      'Magazzini Alimentari Riuniti'
      'Maison Dewey'
      'Mere Paillarde'
      'Morgenstern Gesundkost'
      'North/South'
      'Oceano Atlantico Ltda.'
      'Old World Delicatessen'
      'Ottilies Kaseladen'
      'Paris specialites'
      'Pericles Comidas clasicas'
      'Piccolo und mehr'
      'Princesa Isabel Vinhos'
      'Que Delicia'
      'Queen Cozinha'
      'QUICK-Stop'
      'Rancho grande'
      'Rattlesnake Canyon Grocery'
      'Reggiani Caseifici'
      'Ricardo Adocicados'
      'Richter Supermarkt'
      'Romero y tomillo'
      'Sante Gourmet'
      'Save-a-lot Markets'
      'Seven Seas Imports'
      'Simons bistro'
      'Specialites du monde'
      'Split Rail Beer & Ale'
      'Supremes delices'
      'The Big Cheese'
      'The Cracker Box'
      'Toms Spezialitaten'
      'Tortuga Restaurante'
      'Tradicao Hipermercados'
      'Trail'#39's Head Gourmet Provisioners'
      'Vaffeljernet'
      'Victuailles en stock'
      'Vins et alcools Chevalier'
      'Die Wandernde Kuh'
      'Wartian Herkku'
      'Wellington Importadora'
      'White Clover Markets'
      'Wilman Kala'
      'Wolski  Zajazd')
    ParentFont = False
    TabOrder = 0
  end
  object StringGrid1: TStringGrid
    Tag = 11
    Left = 227
    Top = 72
    Width = 628
    Height = 416
    ColCount = 11
    FixedCols = 0
    RowCount = 92
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 1
    ColWidths = (
      71
      284
      214
      214
      424
      109
      109
      74
      109
      172
      172)
    RowHeights = (
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
    ColAligments = (
      0
      0
      0
      0
      0
      0
      0
      0
      0
      0
      0)
  end
  object BindNavigator1: TBindNavigator
    Left = 8
    Top = 8
    Width = 184
    Height = 25
    DataSource = BindSourceDB1
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Orientation = orHorizontal
    TabOrder = 2
  end
  object EditID: TEdit
    Left = 227
    Top = 31
    Width = 38
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = 'ALFKI'
  end
  object EditCompany: TEdit
    Left = 278
    Top = 31
    Width = 233
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = 'Alfreds Futterkiste'
  end
  object EditCity: TEdit
    Left = 523
    Top = 31
    Width = 210
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = 'Berlin'
  end
  object ButtonEnableDisable: TButton
    Left = 749
    Top = 30
    Width = 107
    Height = 25
    Caption = 'Enable/Disable'
    TabOrder = 6
    OnClick = ButtonEnableDisableClick
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 654
    Top = 186
  end
  object CustomersTable: TFDQuery
    Active = True
    Connection = Sqlite_demoConnection
    SQL.Strings = (
      'SELECT * FROM Customers')
    Left = 654
    Top = 234
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = CustomersTable
    ScopeMappings = <>
    Left = 656
    Top = 280
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 552
    Top = 184
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CustomerID'
      Control = EditID
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CompanyName'
      Control = EditCompany
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'City'
      Control = EditCity
      Track = True
    end
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CompanyName'
      Control = ListBox1
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
end
