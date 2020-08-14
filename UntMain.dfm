object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Apartman Y'#246'netim Sistemi'
  ClientHeight = 476
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 453
    Width = 932
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = [fsBold]
        PanelStyle.ParentFont = False
        Text = 'Kullan'#305'c'#305
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Width = 200
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = [fsBold]
        PanelStyle.ParentFont = False
        Width = 50
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = -103
    ExplicitTop = 366
    ExplicitWidth = 912
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 712
    Top = 328
  end
  object dxTabbedMDIManager1: TdxTabbedMDIManager
    Active = True
    LookAndFeel.NativeStyle = False
    TabProperties.AllowTabDragDrop = True
    TabProperties.CloseButtonMode = cbmActiveAndHoverTabs
    TabProperties.CloseTabWithMiddleClick = True
    TabProperties.CustomButtons.Buttons = <>
    TabProperties.ShowTabHints = True
    TabProperties.Style = 10
    TabProperties.TabPosition = tpBottom
    TabProperties.TabSlants.Positions = [spLeft, spRight]
    Left = 712
    Top = 239
    PixelsPerInch = 96
  end
end
