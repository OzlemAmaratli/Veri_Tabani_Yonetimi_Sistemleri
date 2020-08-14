object FrmGenelTanimlar: TFrmGenelTanimlar
  Tag = 330001
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Genel Tan'#305'mlamalar'
  ClientHeight = 439
  ClientWidth = 840
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 840
    Height = 55
    Align = alBottom
    TabOrder = 0
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 173
      Height = 47
      Hint = 'Vazge'#231
      Align = alLeft
      Caption = 'Kapat'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
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
      OptionsImage.ImageIndex = 14
      TabOrder = 0
      OnClick = cxButton2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 840
    Height = 384
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 398
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Hint = #304'lk Kay'#305't'
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Hint = 'Geri'
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Hint = #304'leri'
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Hint = 'Son Kay'#305't'
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Hint = 'Ekle'
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Hint = 'Sil'
      Navigator.Buttons.Edit.Hint = 'D'#252'zenle'
      Navigator.Buttons.Post.Hint = 'Kaydet'
      Navigator.Buttons.Cancel.Hint = #304'ptal'
      Navigator.Buttons.Refresh.Hint = 'Yenile'
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Bir filtre tan'#305'mlamak i'#231'in buray'#305' t'#305'klay'#305'n'
      FilterRow.Visible = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<G'#246'r'#252'nt'#252'lenecek veri yok>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1PARAMETREID: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'PARAMETREID'
        Width = 104
      end
      object cxGrid1DBTableView1PARAMETREKOD: TcxGridDBColumn
        Caption = 'Kod'
        DataBinding.FieldName = 'PARAMETREKOD'
        Width = 99
      end
      object cxGrid1DBTableView1PARAMETREADI: TcxGridDBColumn
        Caption = 'Ad'#305
        DataBinding.FieldName = 'PARAMETREADI'
        Width = 618
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dsList: TUniDataSource
    DataSet = QList
    Left = 256
    Top = 155
  end
  object QList: TUniQuery
    Connection = Connection.sqlConnection
    SQL.Strings = (
      'select * from public."GenelTanimlar"')
    Left = 256
    Top = 96
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 256
    Top = 208
  end
end
