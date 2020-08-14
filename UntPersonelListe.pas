unit UntPersonelListe;

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
  TFrmPersonelListe = class(TForm)
    cxGridPopupMenu1: TcxGridPopupMenu;
    QPersonelListe: TUniQuery;
    dsPersonelListe: TUniDataSource;
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
    cxGrid1DBTableView1ADISOYADI: TcxGridDBColumn;
    cxGrid1DBTableView1TCKIMLIK: TcxGridDBColumn;
    cxGrid1DBTableView1DOGUMTARIHI: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFON: TcxGridDBColumn;
    cxGrid1DBTableView1EPOSTA: TcxGridDBColumn;
    cxGrid1DBTableView1ADRES: TcxGridDBColumn;
    cxGrid1DBTableView1GOREVI: TcxGridDBColumn;
    cxGrid1DBTableView1ISBASITARIH: TcxGridDBColumn;
    cxGrid1DBTableView1AYLIKUCRET: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    cxGrid1DBTableView1PERSONELKODU: TcxGridDBColumn;
    dsSehir: TUniDataSource;
    dsilce: TUniDataSource;
    Qilce: TUniQuery;
    QSehir: TUniQuery;
    cxGrid1DBTableView1IL: TcxGridDBColumn;
    cxGrid1DBTableView1ILCE: TcxGridDBColumn;
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
  FrmPersonelListe: TFrmPersonelListe;

implementation

{$R *.dfm}

uses UntDM, UntPersonelTanimla;



procedure TFrmPersonelListe.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if QPersonelListe.Active=False then Exit;
  if QPersonelListe.RecordCount=0 then Exit;

    Application.CreateForm(TFrmPersonelTanimla,FrmPersonelTanimla);
    FrmPersonelTanimla.PersonelSec(QPersonelListe.FieldByName('ID').AsString);
    FrmPersonelTanimla.Show;
end;

procedure TFrmPersonelListe.dxBarButton1Click(Sender: TObject);
begin
 if savedialog1.execute then
  begin
    ExportGridDataToXLSX(SaveDialog1.FileName,cxGrid1, False, True, True, 'xlsx');
  end;
end;

procedure TFrmPersonelListe.dxBarButton2Click(Sender: TObject);
begin
   dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmPersonelListe.dxBarLargeButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFrmPersonelTanimla,FrmPersonelTanimla);
   FrmPersonelTanimla.Show;
   FrmPersonelTanimla.QPersonelTanimla.Append;
end;

procedure TFrmPersonelListe.dxBarLargeButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPersonelListe.dxBarLargeButton6Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Print(True, nil);
end;

procedure TFrmPersonelListe.dxBarLargeButton7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview();
end;

procedure TFrmPersonelListe.FormActivate(Sender: TObject);
begin
  connection.DbYenile(QPersonelListe);
end;

procedure TFrmPersonelListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmPersonelListe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmPersonelListe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    connection.OnTabs(Self,Key);
end;

procedure TFrmPersonelListe.FormShow(Sender: TObject);
begin
   dxRibbon1Tab1.Active := True;

  cxGrid1.SetFocus;

  connection.OpenTable(QPersonelListe,'Select * From public."PersonelTanimla"');

  Connection.OpenTable(QSehir,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                              ' FROM public."GenelTanimlar" where "PARAMETREID"=4');

  Connection.OpenTable(Qilce,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                              ' FROM public."GenelTanimlar" where "PARAMETREID"=5');
end;

end.
