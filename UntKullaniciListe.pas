unit UntKullaniciListe;

interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm, dxBar,
  cxClasses, dxRibbon, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalendar,
  cxDBLookupComboBox, cxCheckBox, DBAccess, Uni, MemDS, cxGridLevel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxTextEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, cxgridexportlink,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters, dxPScxSchedulerLnk;


type
  TFrmKullaniciListe = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton8: TdxBarLargeButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QKullaniciListe: TUniQuery;
    dsKullaniciListe: TUniDataSource;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    OpenDialog1: TOpenDialog;
    QGroup: TUniQuery;
    dsGroup: TUniDataSource;
    dsLanguage: TUniDataSource;
    QLanguage: TUniQuery;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    SaveDialog1: TSaveDialog;
    dxBarLargeButton4: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxGrid1DBTableView1KULLANICIKODU: TcxGridDBColumn;
    cxGrid1DBTableView1ADISOYADI: TcxGridDBColumn;
    cxGrid1DBTableView1SIFRE: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFON: TcxGridDBColumn;
    cxGrid1DBTableView1EPOSTA: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    Querys         : Array[0..10] of TUniQuery;
  end;

var
  FrmKullaniciListe: TFrmKullaniciListe;

implementation

{$R *.dfm}

uses UntDM, UntKullaniciTanimla;

procedure TFrmKullaniciListe.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if QKullaniciListe.Active=False then Exit;
  if QKullaniciListe.RecordCount=0 then Exit;

    Application.CreateForm(TFrmKullaniciTanimla,FrmKullaniciTanimla);
    FrmKullaniciTanimla.KullaniciSec(QKullaniciListe.FieldByName('ID').AsString);
    FrmKullaniciTanimla.Show;
end;

procedure TFrmKullaniciListe.dxBarButton1Click(Sender: TObject);
begin
 if savedialog1.execute then
  begin
    ExportGridDataToXLSX(SaveDialog1.FileName,cxGrid1, False, True, True, 'xlsx');
  end;
end;

procedure TFrmKullaniciListe.dxBarButton2Click(Sender: TObject);
begin
   dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmKullaniciListe.dxBarLargeButton3Click(Sender: TObject);
begin
    QKullaniciListe.Edit;
end;

procedure TFrmKullaniciListe.dxBarLargeButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFrmKullaniciTanimla,FrmKullaniciTanimla);
   FrmKullaniciTanimla.Show;
end;

procedure TFrmKullaniciListe.dxBarLargeButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmKullaniciListe.dxBarLargeButton6Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Print(True, nil);
end;

procedure TFrmKullaniciListe.dxBarLargeButton7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview();
end;

procedure TFrmKullaniciListe.FormActivate(Sender: TObject);
begin
  Connection.DbYenile(QKullaniciListe);
end;

procedure TFrmKullaniciListe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmKullaniciListe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmKullaniciListe.FormShow(Sender: TObject);
begin
  dxRibbon1Tab1.Active := True;

  cxGrid1.SetFocus;

  Connection.OpenTable(QKullaniciListe,'Select * From public."KullaniciTanimla"');
end;

end.
