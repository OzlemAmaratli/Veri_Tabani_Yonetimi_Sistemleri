object FrmSifreDegistir: TFrmSifreDegistir
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Kullan'#305'c'#305' '#350'ifre De'#287'i'#351'tir'
  ClientHeight = 293
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 449
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
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 0
    end
  end
  object cxLabel1: TcxLabel
    Left = 23
    Top = 159
    Caption = 'Kullan'#305'c'#305' Ad'#305
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clWindowText
    Style.TextStyle = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 23
    Top = 187
    Caption = 'Mevcut '#350'ifre'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clWindowText
    Style.TextStyle = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 23
    Top = 215
    Caption = 'Yeni '#350'ifre'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clWindowText
    Style.TextStyle = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object edtUSERNAME: TcxTextEdit
    Left = 165
    Top = 157
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 265
  end
  object edtOLDPASS: TcxTextEdit
    Left = 165
    Top = 185
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    TextHint = 'Mevcut '#350'ifrenizi Giriniz'
    Width = 265
  end
  object edtNEWPASS: TcxTextEdit
    Left = 165
    Top = 213
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 7
    TextHint = 'Yeni '#350'ifreyi Giriniz'
    Width = 265
  end
  object cxLabel4: TcxLabel
    Left = 23
    Top = 243
    Caption = 'Yeni '#350'ifre Tekrar'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clWindowText
    Style.TextStyle = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxTextEdit1: TcxTextEdit
    Left = 165
    Top = 241
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 8
    TextHint = 'Yeni '#350'ifreyi Tekrar Giriniz'
    Width = 265
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
    Left = 264
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 74
      DockedTop = 0
      FloatLeft = 444
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Kaydet'
      Category = 0
      Hint = 'Kaydet'
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
        303B3C7374796C6520747970653D22746578742F637373223E2E477265656E7B
        66696C6C3A233033394332333B7D3C2F7374796C653E0D0A3C7061746820636C
        6173733D22477265656E2220643D224D32392C32682D35763130483856324833
        43322E342C322C322C322E342C322C3376323663302C302E362C302E342C312C
        312C3168323663302E362C302C312D302E342C312D3156334333302C322E342C
        32392E362C322C32392C327A204D32342C32344838762D3620202623393B6831
        365632347A204D31302C327638683856324831307A204D31342C38682D325634
        683256387A222F3E0D0A3C2F7376673E0D0A}
      OnClick = dxBarLargeButton3Click
      LargeImageIndex = 1
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
    object dxBarLargeButton1: TdxBarLargeButton
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
  end
  object dsSifDeg: TUniDataSource
    DataSet = QSifDeg
    Left = 217
    Top = 247
  end
  object QSifDeg: TUniQuery
    Connection = Connection.sqlConnection
    SQL.Strings = (
      'Select * from S_KT')
    Left = 273
    Top = 239
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 384
    Top = 16
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
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
