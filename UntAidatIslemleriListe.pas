unit UntAidatIslemleriListe;

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
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,DateUtils, cxLabel;

type
  TFrmAidatIslemleriListe = class(TForm)
    cxGridPopupMenu1: TcxGridPopupMenu;
    QAidatIslemleriListe: TUniQuery;
    dsAidatIslemleriListe: TUniDataSource;
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
    dxBarLargeButton10: TdxBarLargeButton;
    btnDel: TdxBarLargeButton;
    Panel1: TPanel;
    cxGrid1DBTableView1ADISOYADI: TcxGridDBColumn;
    cxGrid1DBTableView1TUTAR: TcxGridDBColumn;
    cxGrid1DBTableView1TUR: TcxGridDBColumn;
    cxGrid1DBTableView1SONODEMETARIH: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    dsTur: TUniDataSource;
    QTur: TUniQuery;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    cxGrid1DBTableView1SEC: TcxGridDBColumn;
    dxBarLargeButton11: TdxBarLargeButton;
    dsAdi: TUniDataSource;
    QAdi: TUniQuery;
    UniStoredProc1: TUniStoredProc;
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
    procedure btnDelClick(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
  private

  public
    iconid:integer;
  end;

var
  FrmAidatIslemleriListe: TFrmAidatIslemleriListe;

implementation

{$R *.dfm}

uses UntDM, UntPersonelTanimla, UntAidatGiris;



procedure TFrmAidatIslemleriListe.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if QAidatIslemleriListe.Active=False then Exit;
  if QAidatIslemleriListe.RecordCount=0 then Exit;

    Application.CreateForm(TFrmAidatGiris,FrmAidatGiris);
    FrmAidatGiris.PersonelSec(QAidatIslemleriListe.FieldByName('ID').AsString);
    FrmAidatGiris.Show;
end;

procedure TFrmAidatIslemleriListe.dxBarButton1Click(Sender: TObject);
begin
 if savedialog1.execute then
  begin
    ExportGridDataToXLSX(SaveDialog1.FileName,cxGrid1, False, True, True, 'xlsx');
  end;
end;

procedure TFrmAidatIslemleriListe.dxBarButton2Click(Sender: TObject);
begin
   dxComponentPrinter1Link1.ExportToPDF;
end;

procedure TFrmAidatIslemleriListe.btnDelClick(Sender: TObject);
begin
   if QAidatIslemleriListe.RecordCount = 0 then Exit;
   if QAidatIslemleriListe.Active = False then Exit;
   
   if btnDel.Visible=ivNever then Abort;
   if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
      if QAidatIslemleriListe.Active then
        begin
          QAidatIslemleriListe.Delete;
        end;
end;

procedure TFrmAidatIslemleriListe.dxBarLargeButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFrmAidatGiris,FrmAidatGiris);
   FrmAidatGiris.Show;
   FrmAidatGiris.QAidatGiris.Append;
end;

procedure TFrmAidatIslemleriListe.dxBarLargeButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmAidatIslemleriListe.dxBarLargeButton6Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Print(True, nil);
end;

procedure TFrmAidatIslemleriListe.dxBarLargeButton7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview();
end;

procedure TFrmAidatIslemleriListe.FormActivate(Sender: TObject);
begin
  connection.DbYenile(QAidatIslemleriListe);
end;

procedure TFrmAidatIslemleriListe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmAidatIslemleriListe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmAidatIslemleriListe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    connection.OnTabs(Self,Key);
end;

procedure TFrmAidatIslemleriListe.FormShow(Sender: TObject);
begin
   dxRibbon1Tab1.Active := True;

  cxGrid1.SetFocus;

  cxDateEdit1.Date:= StartOfTheMonth(Now);
  cxDateEdit2.Date:= EndOfTheMonth(Now);

  connection.OpenTable(QAidatIslemleriListe,'select * from public."KisiIslemleri" where "SONODEMETARIH" BETWEEN '+Connection.TarihDuzenle(cxDateEdit1.Date)+' and  '+Connection.TarihDuzenle(cxDateEdit2.Date));

  Connection.OpenTable(QAdi,'select * from public."KisiTanimla"');

  Connection.OpenTable(QTur,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                            'FROM public."GenelTanimlar" where "PARAMETREID"=2');
end;

end.
