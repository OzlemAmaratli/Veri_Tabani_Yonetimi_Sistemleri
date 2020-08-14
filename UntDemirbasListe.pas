unit UntDemirbasListe;

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
  TFrmDemirbasListe = class(TForm)
    cxGridPopupMenu1: TcxGridPopupMenu;
    QDemirbasListe: TUniQuery;
    dsDemirbasListe: TUniDataSource;
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
    cxGrid1DBTableView1DEMIRBASNO: TcxGridDBColumn;
    cxGrid1DBTableView1DEMIRBASADI: TcxGridDBColumn;
    cxGrid1DBTableView1ADET: TcxGridDBColumn;
    cxGrid1DBTableView1KULLANIMYERI: TcxGridDBColumn;
    cxGrid1DBTableView1KAYITTARIH: TcxGridDBColumn;
    cxGrid1DBTableView1MALIYET: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
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
  FrmDemirbasListe: TFrmDemirbasListe;

implementation

{$R *.dfm}

uses UntDM, UntPersonelTanimla, UntDemirbasGiris;



procedure TFrmDemirbasListe.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if QDemirbasListe.Active=False then Exit;
  if QDemirbasListe.RecordCount=0 then Exit;

    Application.CreateForm(TFrmDemirbasGiris,FrmDemirbasGiris);
    FrmDemirbasGiris.PersonelSec(QDemirbasListe.FieldByName('ID').AsString);
    FrmDemirbasGiris.Show;
end;

procedure TFrmDemirbasListe.dxBarButton1Click(Sender: TObject);
begin
 if savedialog1.execute then
  begin
    ExportGridDataToXLSX(SaveDialog1.FileName,cxGrid1, False, True, True, 'xlsx');
  end;
end;

procedure TFrmDemirbasListe.dxBarButton2Click(Sender: TObject);
begin
   dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmDemirbasListe.dxBarLargeButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFrmDemirbasGiris,FrmDemirbasGiris);
   FrmDemirbasGiris.Show;
   FrmDemirbasGiris.QDemirbasGiris.Append;
end;

procedure TFrmDemirbasListe.dxBarLargeButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDemirbasListe.dxBarLargeButton6Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Print(True, nil);
end;

procedure TFrmDemirbasListe.dxBarLargeButton7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview();
end;

procedure TFrmDemirbasListe.FormActivate(Sender: TObject);
begin
  connection.DbYenile(QDemirbasListe);
end;

procedure TFrmDemirbasListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmDemirbasListe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmDemirbasListe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    connection.OnTabs(Self,Key);
end;

procedure TFrmDemirbasListe.FormShow(Sender: TObject);
begin
   dxRibbon1Tab1.Active := True;

  cxGrid1.SetFocus;

  connection.OpenTable(QDemirbasListe,'Select * From public."DemirbasTakip"');

//  Connection.OpenTable(QSehir,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
//                              ' FROM public."GenelTanimlar" where "PARAMETREID"=4');
//
//  Connection.OpenTable(Qilce,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
//                              ' FROM public."GenelTanimlar" where "PARAMETREID"=5');
end;

end.
