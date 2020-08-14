unit UntGiderTakip;

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
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu,
  cxButtonEdit;

type
  TFrmGiderTakip = class(TForm)
    cxGridPopupMenu1: TcxGridPopupMenu;
    QGiderTakip: TUniQuery;
    dsGiderTakip: TUniDataSource;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar3: TdxBar;
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
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2TARIH: TcxGridDBColumn;
    cxGridDBTableView2MASRAF: TcxGridDBColumn;
    cxGridDBTableView2FIRMA: TcxGridDBColumn;
    cxGridDBTableView2TOTAL: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    dsTur: TUniDataSource;
    QTur: TUniQuery;
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
    procedure QGiderTakipNewRecord(DataSet: TDataSet);
  private

  public
    iconid:integer;
  end;

var
  FrmGiderTakip: TFrmGiderTakip;

implementation

{$R *.dfm}

uses UntDM, UntPersonelTanimla;



procedure TFrmGiderTakip.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if QGiderTakip.Active=False then Exit;
  if QGiderTakip.RecordCount=0 then Exit;

    Application.CreateForm(TFrmPersonelTanimla,FrmPersonelTanimla);
    FrmPersonelTanimla.PersonelSec(QGiderTakip.FieldByName('ID').AsString);
    FrmPersonelTanimla.Show;
end;

procedure TFrmGiderTakip.dxBarButton1Click(Sender: TObject);
begin
 if savedialog1.execute then
  begin
    ExportGridDataToXLSX(SaveDialog1.FileName,cxGrid2, False, True, True, 'xlsx');
  end;
end;

procedure TFrmGiderTakip.dxBarButton2Click(Sender: TObject);
begin
   dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmGiderTakip.dxBarLargeButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmGiderTakip.dxBarLargeButton6Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Print(True, nil);
end;

procedure TFrmGiderTakip.dxBarLargeButton7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview();
end;

procedure TFrmGiderTakip.FormActivate(Sender: TObject);
begin
  connection.DbYenile(QGiderTakip);
end;

procedure TFrmGiderTakip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmGiderTakip.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmGiderTakip.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    connection.OnTabs(Self,Key);
end;

procedure TFrmGiderTakip.FormShow(Sender: TObject);
begin
   dxRibbon1Tab1.Active := True;

  cxGrid2.SetFocus;

  connection.OpenTable(QGiderTakip,'Select * From public."GiderIslemleri"');

  Connection.OpenTable(QTur,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                              'FROM public."GenelTanimlar" where "PARAMETREID"=3');
end;

procedure TFrmGiderTakip.QGiderTakipNewRecord(DataSet: TDataSet);
begin
    QGiderTakip.FieldByName('TIP').AsInteger := 2;
end;

end.
