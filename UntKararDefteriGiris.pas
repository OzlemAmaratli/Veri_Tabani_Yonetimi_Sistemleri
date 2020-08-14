unit UntKararDefteriGiris;

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
  cxBlobEdit, cxCurrencyEdit, dxDateRanges, Vcl.Menus, cxButtons ;

type
  TFrmKararDefteriGiris = class(TForm)
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
    dsKararDefteriGiris: TUniDataSource;
    QKararDefteriGiris: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxBarLargeButton9: TdxBarLargeButton;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    dxBarManager1Bar2: TdxBar;
    cxDBTextEdit19: TcxDBTextEdit;
    Label26: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dsKatilanlar: TUniDataSource;
    QKatilanlar: TUniQuery;
    dsKararlar: TUniDataSource;
    QKararlar: TUniQuery;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView2KARARNO: TcxGridDBColumn;
    cxGridDBTableView2ALINANKARARLAR: TcxGridDBColumn;
    cxGridDBTableView1NO: TcxGridDBColumn;
    cxGridDBTableView1KATILANLAR: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure QKararDefteriGirisNewRecord(DataSet: TDataSet);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure QKararDefteriGirisAfterScroll(DataSet: TDataSet);
    procedure QKararlarNewRecord(DataSet: TDataSet);
    procedure QKatilanlarNewRecord(DataSet: TDataSet);
    procedure QKararlarAfterPost(DataSet: TDataSet);
    procedure QKatilanlarAfterPost(DataSet: TDataSet);
  private

  public
    procedure PersonelSec(sid: string);
  end;

var
  FrmKararDefteriGiris: TFrmKararDefteriGiris;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmKararDefteriGiris.PersonelSec(sid: string);
begin
  if sid='0' then exit;

  with QKararDefteriGiris do
  begin
    Close;
     SQL.Text :='Select * From public."KararDefteri" WHERE "ID" = '+sid;
    Open;
  end;
end;

procedure TFrmKararDefteriGiris.cxDBTextEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmKararDefteriGiris.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  //
end;

procedure TFrmKararDefteriGiris.dxBarLargeButton1Click(Sender: TObject);
label EndSchema;
var
  q:Integer;
begin
   if cxDBButtonEdit1.Text = '' then
     begin
       if Application.MessageBox('Lütfen Toplantý No Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBButtonEdit1.SetFocus;
       Exit
     end;

   if cxDBDateEdit1.Text = '' then
     begin
       if Application.MessageBox('Lütfen Toplantý Tarihi Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBDateEdit1.SetFocus;
       Exit
     end;

   if cxDBTextEdit4.Text = '' then
     begin
       if Application.MessageBox('Lütfen Toplantý Adý Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit4.SetFocus;
       Exit
     end;

    if Application.MessageBox('Kayýt Edecek misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        begin
          if QKararDefteriGiris.Active then
            begin
              if QKararDefteriGiris.State in [dsEdit,dsInsert] then
              QKararDefteriGiris.Post;
            end;
        end;
end;

procedure TFrmKararDefteriGiris.btnNewClick(Sender: TObject);
begin
  if btnNew.Visible=ivNever then Abort;
    if QKararDefteriGiris.Active then
      begin
        if QKararDefteriGiris.State in [dsEdit,dsInsert] then
           QKararDefteriGiris.Cancel;
      end;
        QKararDefteriGiris.Append;
        if cxDBButtonEdit1.Enabled = False then
          cxDBButtonEdit1.Enabled := True;
          cxDBButtonEdit1.SetFocus;
end;

procedure TFrmKararDefteriGiris.btnDelClick(Sender: TObject);
begin
  if btnDel.Visible=ivNever then Abort;
     if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        if QKararDefteriGiris.Active then
          begin
            QKararDefteriGiris.Delete;
          end;
end;

procedure TFrmKararDefteriGiris.dxBarLargeButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmKararDefteriGiris.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmKararDefteriGiris.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmKararDefteriGiris.FormShow(Sender: TObject);
begin
  cxDBButtonEdit1.SetFocus;

  Connection.OpenTable(QKararDefteriGiris,'Select * From public."KararDefteri" where 1=2');
  Connection.OpenTable(QKatilanlar,'Select * From public."Katilimcilar" where 1=2');
  Connection.OpenTable(QKararlar,'Select * From public."AlinanKararlar" where 1=2');
end;


procedure TFrmKararDefteriGiris.QKararDefteriGirisAfterScroll(
  DataSet: TDataSet);
begin
  QKararlar.Close;
  QKatilanlar.Close;
    if QKararDefteriGiris.FieldByName('ID').AsInteger = 0 then
      begin
        QKararlar.SQL.Text     :='select * from public."AlinanKararlar" where "KARARDEFTERID"=-1';
        QKatilanlar.SQL.Text   :='select * from public."Katilimcilar" where "KARARDEFTERID"=-1';
      end
      else
      begin
        QKararlar.SQL.Text     :='select * from public."AlinanKararlar" where "KARARDEFTERID"='+QKararDefteriGiris.FieldByName('ID').AsString;
        QKatilanlar.SQL.Text   :='select * from public."Katilimcilar" where "KARARDEFTERID"='+QKararDefteriGiris.FieldByName('ID').AsString;
      end;
  QKararlar.Open;
  QKatilanlar.Open;
end;

procedure TFrmKararDefteriGiris.QKararDefteriGirisNewRecord(DataSet: TDataSet);
begin

//  QKararDefteriGiris.FieldByName('PERSON_NUMBER').AsString := Connection.getKodFromID(14);
//  if Length(cxDBButtonEdit1.Text)>0 then
//  begin
//    cxDBButtonEdit1.Enabled:=False;
//    cxDBLookupComboBox1.SetFocus;
//  end
//  else
//    cxDBButtonEdit1.SetFocus;
end;

procedure TFrmKararDefteriGiris.QKararlarAfterPost(DataSet: TDataSet);
begin
   if QKararlar.State=dsBrowse then QKararlar.Edit;
   QKararlar.FieldByName('KARARDEFTERID').AsInteger := QKararDefteriGiris.FieldByName('ID').AsInteger;
end;

procedure TFrmKararDefteriGiris.QKararlarNewRecord(DataSet: TDataSet);
begin
     QKararlar.FieldByName('KARARDEFTERID').AsInteger:=QKararDefteriGiris.FieldByName('ID').AsInteger;
     if QKararDefteriGiris.State=dsBrowse then QKararDefteriGiris.Edit;
     QKararDefteriGiris.Post;
end;

procedure TFrmKararDefteriGiris.QKatilanlarAfterPost(DataSet: TDataSet);
begin
   if QKatilanlar.State=dsBrowse then QKararlar.Edit;
   QKatilanlar.FieldByName('KARARDEFTERID').AsInteger := QKararDefteriGiris.FieldByName('ID').AsInteger;
end;

procedure TFrmKararDefteriGiris.QKatilanlarNewRecord(DataSet: TDataSet);
begin
     if QKararDefteriGiris.State=dsBrowse then QKararDefteriGiris.Edit;
     QKararDefteriGiris.Post;
end;

end.
