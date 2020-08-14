object FrmKullaniciListe: TFrmKullaniciListe
  Tag = 220002
  Left = 0
  Top = 0
  Caption = 'Kullan'#305'c'#305' Listesi'
  ClientHeight = 446
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1012
    Height = 132
    ParentCustomHint = False
    BarManager = dxBarManager1
    Style = rs2019
    ColorSchemeName = 'Colorful'
    PopupMenuItems = []
    ShowMinimizeButton = False
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          Caption = ''
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          Caption = ''
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Caption = 'G'#246'r'#252'nt'#252'le'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Visible = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 132
    Width = 1012
    Height = 314
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsKullaniciListe
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Bir filtre tan'#305'mlamak i'#231'in buray'#305' t'#305'klay'#305'n'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.InfoText = 'Yeni bir sat'#305'r eklemek i'#231'in buray'#305' t'#305'klay'#305'n'
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<G'#246'r'#252'nt'#252'lenecek veri yok>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1KULLANICIKODU: TcxGridDBColumn
        Caption = 'Kullan'#305'c'#305' Kodu'
        DataBinding.FieldName = 'KULLANICIKODU'
        Width = 96
      end
      object cxGrid1DBTableView1ADISOYADI: TcxGridDBColumn
        Caption = 'Ad'#305' Soyad'#305
        DataBinding.FieldName = 'ADISOYADI'
        Width = 241
      end
      object cxGrid1DBTableView1SIFRE: TcxGridDBColumn
        Caption = #350'ifre'
        DataBinding.FieldName = 'SIFRE'
        Width = 104
      end
      object cxGrid1DBTableView1TELEFON: TcxGridDBColumn
        Caption = 'Telefon'
        DataBinding.FieldName = 'TELEFON'
        Width = 98
      end
      object cxGrid1DBTableView1EPOSTA: TcxGridDBColumn
        Caption = 'E-Posta'
        DataBinding.FieldName = 'EPOSTA'
        Width = 150
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    AutoHideEmptyBars = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    PopupMenuLinks = <>
    StoreInRegistry = True
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 419
    Top = 64
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 907
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 907
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 64
      DockedTop = 0
      FloatLeft = 961
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #304'ptal'
      Category = 0
      Hint = #304'ptal'
      Visible = ivNever
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000023744558745469746C650043616E63656C3B53746F703B
        457869743B426172733B526962626F6E3B4C9696B2000000F549444154785EED
        D7310AC240108561B31750922BD9A44802F1081E554451B4F62AA9D6090CAC84
        98C7CC63D122C56BF7FF8A8DAC9B18E34FF79F8015F03AEE994DCF0A5EC05676
        92D51E80C61BD959B63301347E9345D960447CC6073DE3FE0D31170FAA8E3A0F
        22C5757A6601018A38243D42E0B8623AEB1DE801828863004470710C3020709C
        0060048A93008C00711A801138CE033022C547686E40B300A83300707C8AC805
        680C97B066009678B7F489D2001CC7BF132400C7ED080C40F1364509040018E2
        1C622E5EC82E20EE415C2D0F9252F670C6C7C014F19455D63B50AABA251EA5BD
        9E5179BF8290FB59BEFE335A016F69850D637E4FD7AD0000000049454E44AE42
        6082}
      LargeImageIndex = 2
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'D'#252'zenle'
      Category = 0
      Hint = 'D'#252'zenle'
      Visible = ivNever
      OnClick = dxBarLargeButton3Click
      LargeImageIndex = 18
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Kapat'
      Category = 0
      Hint = 'Kapat'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
        373237323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
        31314331433B7D3C2F7374796C653E0D0A3C672069643D2245786974223E0D0A
        09093C706F6C79676F6E20636C6173733D225265642220706F696E74733D2231
        362C31302032322C31362031362C32322031362C313820322C313820322C3134
        2031362C3134202623393B222F3E0D0A09093C706F6C79676F6E20636C617373
        3D22426C61636B2220706F696E74733D22382C3220382C31322031302C313220
        31302C342032382C342032382C32382031302C32382031302C323020382C3230
        20382C33302033302C33302033302C32202623393B222F3E0D0A093C2F673E0D
        0A3C2F7376673E0D0A}
      OnClick = dxBarLargeButton5Click
      LargeImageIndex = 4
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Yazd'#305'r'
      Category = 0
      Hint = 'Yazd'#305'r'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2251
        7569636B5F5072696E742220786D6C6E733D22687474703A2F2F7777772E7733
        2E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D2268747470
        3A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D22307078
        2220793D22307078222076696577426F783D2230203020333220333222207374
        796C653D22656E61626C652D6261636B67726F756E643A6E6577203020302033
        322033323B2220786D6C3A73706163653D227072657365727665223E26233133
        3B262331303B3C7374796C6520747970653D22746578742F637373223E2E426C
        61636B7B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C706174
        6820636C6173733D22426C61636B2220643D224D31302C326831327638683256
        304838763130683256327A204D32382C38682D32763363302C302E362D302E34
        2C312D312C314837632D302E362C302D312D302E342D312D3156384834632D31
        2E312C302D322C302E392D322C3276313220202623393B63302C312E312C302E
        392C322C322C3268347636683136762D36683463312E312C302C322D302E392C
        322D325631304333302C382E392C32392E312C382C32382C387A204D32322C32
        3276327634483130762D34762D32762D346831325632327A204D32302C323468
        2D38763268385632347A204D32302C3230682D38763220202623393B68385632
        307A222F3E0D0A3C2F7376673E0D0A}
      OnClick = dxBarLargeButton6Click
      LargeImageIndex = 5
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = #214'n '#304'zleme'
      Category = 0
      Hint = #214'n '#304'zleme'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2250
        72696E745F507265766965772220786D6C6E733D22687474703A2F2F7777772E
        77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D226874
        74703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230
        70782220793D22307078222076696577426F783D223020302033322033322220
        7374796C653D22656E61626C652D6261636B67726F756E643A6E657720302030
        2033322033323B2220786D6C3A73706163653D227072657365727665223E2623
        31333B262331303B3C7374796C6520747970653D22746578742F637373222078
        6D6C3A73706163653D227072657365727665223E2E426C61636B7B66696C6C3A
        233732373237323B7D262331333B262331303B2623393B2E426C75657B66696C
        6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C617373
        3D22426C61636B2220643D224D31392E342C323648313663302C302C302C302C
        302C3063302C302C302C302C302C3048365634683132763563302C302E362C30
        2E342C312C312C3168357631312E346C322C3256396C2D372D37483543342E34
        2C322C342C322E342C342C3376323420202623393B63302C302E362C302E342C
        312C312C316831362E344C31392E342C32367A222F3E0D0A3C7061746820636C
        6173733D22426C75652220643D224D31362C313263332E332C302C362C322E37
        2C362C3663302C312E322D302E342C322E332D312C332E336C342E362C342E36
        63302E352C302E352C302E352C312E332C302C312E37632D302E352C302E352D
        312E332C302E352D312E372C304C31392E332C323320202623393B632D302E39
        2C302E362D322E312C312D332E332C31632D332E332C302D362D322E372D362D
        364331302C31342E372C31322E372C31322C31362C31327A204D31362C323263
        322E322C302C342D312E382C342D34732D312E382D342D342D34732D342C312E
        382D342C345331332E382C32322C31362C32327A222F3E0D0A3C2F7376673E0D
        0A}
      OnClick = dxBarLargeButton7Click
      LargeImageIndex = 6
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'Grafik Yazd'#305'r'
      Category = 0
      Hint = 'Grafik Yazd'#305'r'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'D'#305#351'ar'#305' Aktar'
      Category = 0
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
        46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
        643D224578706F7274223E0D0A09093C7061746820636C6173733D22426C6163
        6B2220643D224D31302C31324836563668345631327A204D32322C3132763676
        3963302C302E362D302E342C312D312C314831632D302E362C302D312D302E34
        2D312D31563763302D302E362C302E342D312C312D3168337638683134762D32
        4832327A204D31382C3138483420202623393B2623393B76366831345631387A
        222F3E0D0A09093C706F6C79676F6E20636C6173733D22477265656E2220706F
        696E74733D2231362C31302032342C31302032342C31342033322C382032342C
        322032342C362031362C36202623393B222F3E0D0A093C2F673E0D0A3C2F7376
        673E0D0A}
      LargeImageIndex = 7
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Excel Aktar (XLSX)'
      Category = 0
      Hint = 'Excel Aktar (XLSX)'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'PDF Aktar (PDF)'
      Category = 0
      Hint = 'PDF Aktar (PDF)'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton2Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Mail G'#246'nder'
      Category = 0
      Hint = 'Mail G'#246'nder'
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Kaydet'
      Category = 0
      Hint = 'Kaydet'
      Visible = ivNever
      LargeImageIndex = 1
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'Yard'#305'm'
      Category = 0
      Hint = 'Yard'#305'm'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000021744558745469746C6500446F63756D656E746174696F
        6E3B48656C703B5175657374696F6EE093CC980000016B49444154785EC59731
        8E83301045975B20AAF46E72042EB0524A4A4A8E616DBD32ED7639C2B6299038
        418472027C839494DED9D5141672F60F0C928B97C24AC60F3C3319BF8510B2F2
        F7F1FE719350110DE18881F0C4C2785E73FC9D4A104F2C60084B3C8820E4C1BF
        311A8182E8883B117672E718C5568192F8E4206A3856291528892F221C09C72C
        91402178F299E88996A8990BAFCD823751FC27D08100169515095C8144F74AC0
        0812AE660124F10D12D3A4042C1B4201963EF1119C120267F426D70295B0CE6B
        A24D9CF5252181FA44150B34C24C9E5EAC8F290140130B3865895D53470070B1
        C0A01078AEF2409A4F432CE0159B9F934F8FF1B1C072E0E64FA1C0A215A8579B
        B71B632C9A2398579BD73B1EC06B9270849D0F3368CA703A40C08146041923E6
        1D020D6EC59889050200B6E25FEC8E124C971FC682BF63489FE8FDFD8639D1C8
        0792E3053A3C92E98F008F6478289527A16628CD3F96E7BF98E4BF9AE5BF9C66
        E5076BE393219367BB640000000049454E44AE426082}
      LargeImageIndex = 3
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Kay'#305't Ekle'
      Category = 0
      Visible = ivNever
      LargeImageIndex = 11
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Yeni Kay'#305't Ekle'
      Category = 0
      Hint = 'Yeni Kay'#305't Ekle'
      Visible = ivAlways
      ImageIndex = 0
    end
    object dxBarButton7: TdxBarButton
      Caption = 'H'#305'zl'#305' Kay'#305't Ekle'
      Category = 0
      Hint = 'H'#305'zl'#305' Kay'#305't Ekle'
      Visible = ivAlways
      ImageIndex = 1
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #304#231'eri Aktar'
      Category = 0
      Hint = #304#231'eri Aktar'
      Visible = ivAlways
      LargeImageIndex = 8
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Yeni'
      Category = 0
      Hint = 'Yeni'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
        46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
        3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
        696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
        6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
        74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
        643D224E6577223E0D0A09093C7061746820636C6173733D22426C61636B2220
        643D224D31392C32483543342E342C322C342C322E342C342C3376323663302C
        302E362C302E342C312C312C3168323063302E362C302C312D302E342C312D31
        56394C31392C327A204D32342C323848365634683132763563302C302E362C30
        2E342C312C312C31683520202623393B2623393B5632387A222F3E0D0A093C2F
        673E0D0A3C2F7376673E0D0A}
      OnClick = dxBarLargeButton4Click
      LargeImageIndex = 0
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Resim Aktar (JPG)'
      Category = 0
      Hint = 'Resim Aktar (JPG)'
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Word Aktar (DOCX)'
      Category = 0
      Hint = 'Word Aktar (DOCX)'
      Visible = ivAlways
      ImageIndex = 0
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 586
    Top = 295
  end
  object QKullaniciListe: TUniQuery
    Connection = Connection.sqlConnection
    SQL.Strings = (
      'select * from public."KullaniciTanimla"')
    Left = 784
    Top = 224
  end
  object dsKullaniciListe: TUniDataSource
    DataSet = QKullaniciListe
    Left = 784
    Top = 288
  end
  object OpenDialog1: TOpenDialog
    Left = 592
    Top = 240
  end
  object QGroup: TUniQuery
    Connection = Connection.sqlConnection
    SQL.Strings = (
      '')
    Left = 432
    Top = 240
  end
  object dsGroup: TUniDataSource
    DataSet = QGroup
    Left = 432
    Top = 304
  end
  object dsLanguage: TUniDataSource
    DataSet = QLanguage
    Left = 491
    Top = 304
  end
  object QLanguage: TUniQuery
    Connection = Connection.sqlConnection
    Left = 491
    Top = 240
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Kullan'#305'c'#305' Listesi'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Kullan'#305'c'#305' Listesi'
    Version = 0
    Left = 56
    Top = 336
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
      PDFExportOptions.Creator = 'ZeniPlus'
      PDFExportOptions.Title = 'Kullan'#305'c'#305' Listesi'
      PDFExportOptions.IsCreatorAssigned = True
      PDFExportOptions.IsTitleAssigned = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Kullan'#305'c'#305' Listesi'
      ReportDocument.CreationDate = 44055.621411539350000000
      ReportDocument.Creator = 'ZeniPlus'
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clRed
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = 'Kullan'#305'c'#305' Listesi'
      TimeFormat = 0
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Kullan'#305'c'#305' Listesi'
    Filter = 'Excel Dosyas'#305'|*.xls|Excel Dosyas'#305'|*.xlsx'
    Title = 'Dosya Kaydet'
    Left = 56
    Top = 264
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 280
    Top = 384
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = cl3DLight
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
end
