unit UntAidatGiris;

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
  TFrmAidatGiris = class(TForm)
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
    dsAidatGiris: TUniDataSource;
    QAidatGiris: TUniQuery;
    cxGroupBox2: TcxGroupBox;
    dxBarLargeButton9: TdxBarLargeButton;
    Label5: TLabel;
    Label8: TLabel;
    dxBarManager1Bar2: TdxBar;
    Label13: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    cxDBMemo3: TcxDBMemo;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dsAdi: TUniDataSource;
    QAdi: TUniQuery;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dsTur: TUniDataSource;
    QTur: TUniQuery;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure QAidatGirisNewRecord(DataSet: TDataSet);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

  public
    procedure PersonelSec(sid: string);
  end;

var
  FrmAidatGiris: TFrmAidatGiris;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmAidatGiris.PersonelSec(sid: string);
begin
  if sid='0' then exit;

  with QAidatGiris do
  begin
    Close;
     SQL.Text :='Select * From public."KisiIslemleri" WHERE "ID" = '+sid;
    Open;
  end;
end;

procedure TFrmAidatGiris.cxDBTextEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmAidatGiris.dxBarLargeButton1Click(Sender: TObject);
label EndSchema;
var
  q:Integer;
begin
   if cxDBLookupComboBox1.Text = '' then
     begin
       if Application.MessageBox('Lütfen Adý Soyadý Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBLookupComboBox1.SetFocus;
       Exit
     end;


    if Application.MessageBox('Kayýt Edecek misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        begin
          if QAidatGiris.Active then
            begin
              if QAidatGiris.State in [dsEdit,dsInsert] then
              QAidatGiris.Post;
            end;
        end;
end;

procedure TFrmAidatGiris.btnNewClick(Sender: TObject);
begin
  if btnNew.Visible=ivNever then Abort;
    if QAidatGiris.Active then
      begin
        if QAidatGiris.State in [dsEdit,dsInsert] then
           QAidatGiris.Cancel;
      end;
        QAidatGiris.Append;
        cxDBLookupComboBox1.SetFocus;
end;

procedure TFrmAidatGiris.btnDelClick(Sender: TObject);
begin
  if btnDel.Visible=ivNever then Abort;
     if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        if QAidatGiris.Active then
          begin
            QAidatGiris.Delete;
          end;
end;

procedure TFrmAidatGiris.dxBarLargeButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmAidatGiris.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmAidatGiris.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmAidatGiris.FormShow(Sender: TObject);
begin
  cxDBLookupComboBox1.SetFocus;

  Connection.OpenTable(QAidatGiris,'Select * From public."KisiIslemleri" where 1=2');

  Connection.OpenTable(QAdi,'select * from public."KisiTanimla"');

  Connection.OpenTable(QTur,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                            'FROM public."GenelTanimlar" where "PARAMETREID"=2');

end;


procedure TFrmAidatGiris.QAidatGirisNewRecord(DataSet: TDataSet);
begin
//  QAidatGiris.FieldByName('PERSON_NUMBER').AsString := Connection.getKodFromID(14);
//  if Length(cxDBButtonEdit1.Text)>0 then
//  begin
//    cxDBButtonEdit1.Enabled:=False;
//    cxDBLookupComboBox1.SetFocus;
//  end
//  else
//    cxDBButtonEdit1.SetFocus;
end;

end.
