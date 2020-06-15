object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'LinkLiveBindings sample'
  ClientHeight = 646
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 227
    Top = 12
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 278
    Top = 12
    Width = 45
    Height = 13
    Caption = 'Company'
  end
  object Label3: TLabel
    Left = 523
    Top = 12
    Width = 19
    Height = 13
    Caption = 'City'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 39
    Width = 213
    Height = 577
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Alfreds Futterkiste,  Berlin'
      'Ana Trujillo Emparedados y helados,  Mexico D.F.'
      'Antonio Moreno Taqueria,  Mexico D.F.'
      'Around the Horn,  London'
      'Berglunds snabbkop,  R'
      'Blauer See Delikatessen,  Mannheim'
      'Blondesddsl pere et fils,  Strasbourg'
      'Bolido Comidas preparadas,  Madrid'
      'Bon app'#39',  Marseille'
      'Bottom-Dollar Markets,  Tsawassen'
      'B'#39's Beverages,  London'
      'Cactus Comidas para llevar,  Buenos Aires'
      'Centro comercial Moctezuma,  Mexico D.F.'
      'Chop-suey Chinese,  Bern'
      'Comercio Mineiro,  Sao Paulo'
      'Consolidated Holdings,  London'
      'Drachenblut Delikatessen,  Aachen'
      'Du monde entier,  Nantes'
      'Eastern Connection,  London'
      'Ernst Handel,  Graz'
      'Familia Arquibaldo,  Sao Paulo'
      'FISSA Fabrica Inter. Salchichas S.A.,  Madrid'
      'Folies gourmandes,  Lille'
      'Folk och fa HB,  Bracke'
      'Frankenversand,  Munchen'
      'France restauration,  Nantes'
      'Franchi S.p.A.,  Torino'
      'Furia Bacalhau e Frutos do Mar,  Lisboa'
      'Galeria del gastronomo,  Barcelona'
      'Godos Cocina Tipica,  Sevilla'
      'Gourmet Lanchonetes,  Campinas'
      'Great Lakes Food Market,  Eugene'
      'GROSELLA-Restaurante,  Caracas'
      'Hanari Carnes,  Rio de Janeiro'
      'HILARION-Abastos,  San Cristobal'
      'Hungry Coyote Import Store,  Elgin'
      'Hungry Owl All-Night Grocers,  Cork'
      'Island Trading,  Cowes'
      'Koniglich Essen,  Brandenburg'
      'La corne d'#39'abondance,  Versailles'
      'La maison d'#39'Asie,  Toulouse'
      'Laughing Bacchus Wine Cellars,  Vancouver'
      'Lazy K Kountry Store,  Walla Walla'
      'Lehmanns Marktstand,  Frankfurt a.M.'
      'Let'#39's Stop N Shop,  San Francisco'
      'LILA-Supermercado,  Barquisimeto'
      'LINO-Delicateses,  I. de Margarita'
      'Lonesome Pine Restaurant,  Portland'
      'Magazzini Alimentari Riuniti,  Bergamo'
      'Maison Dewey,  Bruxelles'
      'Mere Paillarde,  Montreal'
      'Morgenstern Gesundkost,  Leipzig'
      'North/South,  London'
      'Oceano Atlantico Ltda.,  Buenos Aires'
      'Old World Delicatessen,  Anchorage'
      'Ottilies Kaseladen,  Koln'
      'Paris specialites,  Paris'
      'Pericles Comidas clasicas,  Mexico D.F.'
      'Piccolo und mehr,  Salzburg'
      'Princesa Isabel Vinhos,  Lisboa'
      'Que Delicia,  Rio de Janeiro'
      'Queen Cozinha,  Sao Paulo'
      'QUICK-Stop,  Cunewalde'
      'Rancho grande,  Buenos Aires'
      'Rattlesnake Canyon Grocery,  Albuquerque'
      'Reggiani Caseifici,  Reggio Emilia'
      'Ricardo Adocicados,  Rio de Janeiro'
      'Richter Supermarkt,  Geneve'
      'Romero y tomillo,  Madrid'
      'Sante Gourmet,  Stavern'
      'Save-a-lot Markets,  Boise'
      'Seven Seas Imports,  London'
      'Simons bistro,  Kobenhavn'
      'Specialites du monde,  Paris'
      'Split Rail Beer & Ale,  Lander'
      'Supremes delices,  Charleroi'
      'The Big Cheese,  Portland'
      'The Cracker Box,  Butte'
      'Toms Spezialitaten,  Munster'
      'Tortuga Restaurante,  Mexico D.F.'
      'Tradicao Hipermercados,  Sao Paulo'
      'Trail'#39's Head Gourmet Provisioners,  Kirkland'
      'Vaffeljernet,  Arhus'
      'Victuailles en stock,  Lyon'
      'Vins et alcools Chevalier,  Reims'
      'Die Wandernde Kuh,  Stuttgart'
      'Wartian Herkku,  Oulu'
      'Wellington Importadora,  Resende'
      'White Clover Markets,  Seattle'
      'Wilman Kala,  Helsinki'
      'Wolski  Zajazd,  Warszawa')
    ParentFont = False
    TabOrder = 0
  end
  object StringGrid1: TStringGrid
    Left = 227
    Top = 72
    Width = 628
    Height = 521
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
      64
      165
      171
      64
      64)
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
  end
  object BindNavigator1: TBindNavigator
    Left = 8
    Top = 8
    Width = 192
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
  object ScrollBar1: TScrollBar
    Left = 227
    Top = 599
    Width = 628
    Height = 17
    Ctl3D = True
    Max = 90
    PageSize = 0
    ParentCtl3D = False
    TabOrder = 6
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 627
    Width = 863
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Record 1 of 91'
  end
  object ButtonEnableDisable: TButton
    Left = 748
    Top = 31
    Width = 107
    Height = 25
    Caption = 'Enable/Disable'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
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
    object BindLink1: TBindLink
      Category = 'Links'
      SourceMemberName = 'CustomerID'
      ControlComponent = EditID
      SourceComponent = BindSourceDB1
      ParseExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      ClearExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = #39'No data to display'#39
        end>
      Track = False
    end
    object BindLink2: TBindLink
      Category = 'Links'
      SourceMemberName = 'CompanyName'
      ControlComponent = EditCompany
      SourceComponent = BindSourceDB1
      ParseExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      ClearExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = #39'No data to display'#39
        end>
      Track = False
    end
    object BindLink3: TBindLink
      Category = 'Links'
      SourceMemberName = 'City'
      ControlComponent = EditCity
      SourceComponent = BindSourceDB1
      ParseExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      ClearExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = #39'No data to display'#39
        end>
      Track = False
    end
    object BindListLink1: TBindListLink
      Category = 'Links'
      ControlComponent = ListBox1
      SourceComponent = BindSourceDB1
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'CompanyName.AsString + '#39',  '#39' + City.AsString'
        end>
      ParseExpressions = <>
      PosControlExpressions = <
        item
          ControlExpression = 'ItemIndex'
          SourceExpression = 'RecNo-1'
        end>
      PosSourceExpressions = <
        item
          ControlExpression = 'ItemIndex+1'
          SourceExpression = 'RecNo'
        end>
      FormatControlExpressions = <>
      ClearControlExpressions = <>
    end
    object BindGridLink1: TBindGridLink
      Category = 'Links'
      ControlComponent = StringGrid1
      SourceComponent = BindSourceDB1
      ColumnExpressions = <
        item
          Name = 'RecNo'
          ColumnIndex = 0
          ParseCellExpressions = <>
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[0]'
              SourceExpression = 'ToStr(RecNo)'
            end>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[0,0]'
              SourceExpression = #39'RecNo'#39
            end>
        end
        item
          ColumnName = 'CompanyName'
          ColumnIndex = 1
          SourceMemberName = 'CompanyName'
          ParseCellExpressions = <
            item
              ControlExpression = 'SelectedText(Self)'
              SourceExpression = 'AsString'
            end>
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[1]'
              SourceExpression = 'AsString'
            end>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[1,0]'
              SourceExpression = #39'Company'#39
            end>
        end
        item
          Name = 'ContactTitleAndName'
          ColumnIndex = 2
          ParseCellExpressions = <>
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[2]'
              SourceExpression = 'ContactTitle.AsString + '#39' - '#39' + ContactName.AsString'
            end>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[2,0]'
              SourceExpression = #39'Contact'#39
            end>
        end
        item
          ColumnName = 'City'
          ColumnIndex = 3
          SourceMemberName = 'City'
          ParseCellExpressions = <
            item
              ControlExpression = 'SelectedText(Self)'
              SourceExpression = 'AsString'
            end>
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[3]'
              SourceExpression = 'AsString'
            end>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[3,0]'
              SourceExpression = #39'City'#39
            end>
        end
        item
          ColumnName = 'Country'
          ColumnIndex = 4
          SourceMemberName = 'Country'
          ParseCellExpressions = <
            item
              ControlExpression = 'SelectedText(Self)'
              SourceExpression = 'AsString'
            end>
          FormatCellExpressions = <
            item
              ControlExpression = 'cells[4]'
              SourceExpression = 'AsString'
            end>
          FormatColumnExpressions = <
            item
              ControlExpression = 'cells[4,0]'
              SourceExpression = #39'Country'#39
            end>
        end>
      PosControlExpressions = <
        item
          ControlExpression = 'Row'
          SourceExpression = 'RecNo'
        end>
      PosSourceExpressions = <
        item
          ControlExpression = 'Row'
          SourceExpression = 'RecNo'
        end>
      FormatControlExpressions = <>
      ClearControlExpressions = <
        item
          ControlExpression = 'RowCount'
          SourceExpression = '0'
        end>
    end
    object BindPosition1: TBindPosition
      Category = 'Links'
      ControlComponent = ScrollBar1
      SourceComponent = BindSourceDB1
      PosSourceExpressions = <
        item
          ControlExpression = 'Position + 1'
          SourceExpression = 'RecNo'
        end>
      PosControlExpressions = <
        item
          ControlExpression = 'Position'
          SourceExpression = 'Math_Max(0,  RecNo - 1)'
        end
        item
          ControlExpression = 'Max'
          SourceExpression = 'RecordCount - 1'
        end>
      PosClearExpressions = <>
    end
    object BindPosition2: TBindPosition
      Category = 'Links'
      ControlComponent = StatusBar1
      SourceComponent = BindSourceDB1
      PosSourceExpressions = <>
      PosControlExpressions = <
        item
          ControlExpression = 'SimpleText'
          SourceExpression = #39'Record '#39' + ToStr(RecNo) + '#39' of '#39' + ToStr(RecordCount)'
        end>
      PosClearExpressions = <
        item
          ControlExpression = 'SimpleText'
          SourceExpression = #39'No data to display'#39
        end>
    end
  end
end
