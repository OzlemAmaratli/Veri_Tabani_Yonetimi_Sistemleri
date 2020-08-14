unit UntSiteListe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, DBAccess, Uni, MemDS, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  dxBar, dxRibbon, cxCheckBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxDBLookupComboBox, cxCalendar, cxTimeEdit, cxSpinEdit, cxRadioGroup,
  cxBarEditItem, cxCurrencyEdit, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, cxgridexportlink, cxDropDownEdit, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu;

type
  TFrmSiteListe = class(TForm)
    cxGridPopupMenu1: TcxGridPopupMenu;
    QSiteListe: TUniQuery;
    dsSiteListe: TUniDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dsSehir: TUniDataSource;
    dsilce: TUniDataSource;
    Qilce: TUniQuery;
    QSehir: TUniQuery;
    cxGrid1DBTableView1SITEADI: TcxGridDBColumn;
    cxGrid1DBTableView1BLOKSAYISI: TcxGridDBColumn;
    cxGrid1DBTableView1KATSAYISI: TcxGridDBColumn;
    cxGrid1DBTableView1MESKENSAYISI: TcxGridDBColumn;
    cxGrid1DBTableView1ADRES: TcxGridDBColumn;
    cxGrid1DBTableView1IL: TcxGridDBColumn;
    cxGrid1DBTableView1ILCE: TcxGridDBColumn;
    cxGrid1DBTableView1YONETICI: TcxGridDBColumn;
    cxGrid1DBTableView1AIDAT: TcxGridDBColumn;
    cxGrid1DBTableView1SITEKODU: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
  private

  public
    iconid:integer;
  end;

var
  FrmSiteListe: TFrmSiteListe;

implementation

{$R *.dfm}

uses UntDM, UntPersonelTanimla, UntSiteTanimla;



procedure TFrmSiteListe.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if QSiteListe.Active=False then Exit;
  if QSiteListe.RecordCount=0 then Exit;

    Application.CreateForm(TFrmSiteTanimla,FrmSiteTanimla);
    FrmSiteTanimla.PersonelSec(QSiteListe.FieldByName('ID').AsString);
    FrmSiteTanimla.Show;
end;

procedure TFrmSiteListe.dxBarButton1Click(Sender: TObject);
begin
 if savedialog1.execute then
  begin
    ExportGridDataToXLSX(SaveDialog1.FileName,cxGrid1, False, True, True, 'xlsx');
  end;
end;

procedure TFrmSiteListe.dxBarButton2Click(Sender: TObject);
begin
   dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmSiteListe.dxBarLargeButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFrmSiteTanimla,FrmSiteTanimla);
   FrmSiteTanimla.Show;
   FrmSiteTanimla.QSiteTanimla.Append;
end;

procedure TFrmSiteListe.dxBarLargeButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSiteListe.dxBarLargeButton6Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Print(True, nil);
end;

procedure TFrmSiteListe.dxBarLargeButton7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview();
end;

procedure TFrmSiteListe.FormActivate(Sender: TObject);
begin
  connection.DbYenile(QSiteListe);
end;

procedure TFrmSiteListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmSiteListe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmSiteListe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    connection.OnTabs(Self,Key);
end;

procedure TFrmSiteListe.FormShow(Sender: TObject);
begin
   dxRibbon1Tab1.Active := True;

  cxGrid1.SetFocus;

  connection.OpenTable(QSiteListe,'Select * From public."SiteTanimla"');

  Connection.OpenTable(QSehir,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                              ' FROM public."GenelTanimlar" where "PARAMETREID"=4');

  Connection.OpenTable(Qilce,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                              ' FROM public."GenelTanimlar" where "PARAMETREID"=5');
end;

end.
