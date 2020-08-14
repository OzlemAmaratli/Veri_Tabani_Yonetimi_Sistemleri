unit UntSiteTanimla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxRibbonCustomizationForm, dxBar, cxClasses, dxRibbon, Data.DB, MemDS,
  DBAccess, Uni, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Vcl.StdCtrls,
  cxMaskEdit, cxButtonEdit, cxGroupBox, cxSpinEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxImage,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxCalendar,
  cxShellBrowserDialog,Shellapi, System.ImageList, Vcl.ImgList, cxMemo, cxCalc,
  cxBlobEdit, cxCurrencyEdit ;

type
  TFrmSiteTanimla = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    btnDel: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    btnNew: TdxBarLargeButton;
    dsSiteTanimla: TUniDataSource;
    QSiteTanimla: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxBarLargeButton9: TdxBarLargeButton;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    Label22: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    dxBarManager1Bar2: TdxBar;
    cxDBTextEdit2: TcxDBTextEdit;
    Label24: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    Label43: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    dsSehir: TUniDataSource;
    QSehir: TUniQuery;
    dsilce: TUniDataSource;
    Qilce: TUniQuery;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure QSiteTanimlaNewRecord(DataSet: TDataSet);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBLookupComboBox7PropertiesEditValueChanged(Sender: TObject);
  private

  public
    procedure PersonelSec(sid: string);
  end;

var
  FrmSiteTanimla: TFrmSiteTanimla;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmSiteTanimla.PersonelSec(sid: string);
begin
  if sid='0' then exit;

  with QSiteTanimla do
  begin
    Close;
     SQL.Text :='Select * From public."SiteTanimla" WHERE "ID" = '+sid;
    Open;
  end;
end;

procedure TFrmSiteTanimla.cxDBLookupComboBox7PropertiesEditValueChanged(
  Sender: TObject);
begin
  Connection.OpenTable(Qilce,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                             ' FROM public."GenelTanimlar" where "PARAMETREID"=5   and "PARAMETREKOD"='+QuotedStr (cxDBLookupComboBox7.EditValue));
end;

procedure TFrmSiteTanimla.cxDBTextEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmSiteTanimla.dxBarLargeButton1Click(Sender: TObject);
label EndSchema;
var
  q:Integer;
begin
   if cxDBButtonEdit1.Text = '' then
     begin
       if Application.MessageBox('Lütfen Site No Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBButtonEdit1.SetFocus;
       Exit
     end;

   if cxDBTextEdit4.Text = '' then
     begin
       if Application.MessageBox('Lütfen Site Adý Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit4.SetFocus;
       Exit
     end;


   if cxDBTextEdit16.Text = '' then
     begin
       if Application.MessageBox('Lütfen Blok Sayýsýný Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit16.SetFocus;
       Exit
     end;

    if Application.MessageBox('Kayýt Edecek misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        begin
          if QSiteTanimla.Active then
            begin
              if QSiteTanimla.State in [dsEdit,dsInsert] then
              QSiteTanimla.Post;
            end;
        end;
end;

procedure TFrmSiteTanimla.btnNewClick(Sender: TObject);
begin
  if btnNew.Visible=ivNever then Abort;
    if QSiteTanimla.Active then
      begin
        if QSiteTanimla.State in [dsEdit,dsInsert] then
           QSiteTanimla.Cancel;
      end;
        QSiteTanimla.Append;
        if cxDBButtonEdit1.Enabled = False then
          cxDBButtonEdit1.Enabled := True;
          cxDBButtonEdit1.SetFocus;
end;

procedure TFrmSiteTanimla.btnDelClick(Sender: TObject);
begin
  if btnDel.Visible=ivNever then Abort;
     if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        if QSiteTanimla.Active then
          begin
            QSiteTanimla.Delete;
          end;
end;

procedure TFrmSiteTanimla.dxBarLargeButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmSiteTanimla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmSiteTanimla.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmSiteTanimla.FormShow(Sender: TObject);
begin
  cxDBButtonEdit1.SetFocus;

  Connection.OpenTable(QSiteTanimla,'Select * From public."SiteTanimla" where 1=2');

  Connection.OpenTable(QSehir,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                              ' FROM public."GenelTanimlar" where "PARAMETREID"=4');
end;


procedure TFrmSiteTanimla.QSiteTanimlaNewRecord(DataSet: TDataSet);
begin
//  QSiteTanimla.FieldByName('PERSON_NUMBER').AsString := Connection.getKodFromID(14);
//  if Length(cxDBButtonEdit1.Text)>0 then
//  begin
//    cxDBButtonEdit1.Enabled:=False;
//    cxDBLookupComboBox1.SetFocus;
//  end
//  else
//    cxDBButtonEdit1.SetFocus;
end;

end.
