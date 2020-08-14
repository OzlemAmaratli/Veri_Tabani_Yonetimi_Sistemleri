unit UntMeskenTanimla;

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
  TFrmMeskenTanimla = class(TForm)
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
    dsMeskenTanimla: TUniDataSource;
    QMeskenTanimla: TUniQuery;
    cxGroupBox2: TcxGroupBox;
    dxBarLargeButton9: TdxBarLargeButton;
    Label5: TLabel;
    Label8: TLabel;
    Label22: TLabel;
    dxBarManager1Bar2: TdxBar;
    Label13: TLabel;
    Label24: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    Label43: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dsAdi: TUniDataSource;
    QAdi: TUniQuery;
    dsTur: TUniDataSource;
    QTur: TUniQuery;
    dsBina: TUniDataSource;
    QBina: TUniQuery;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure QMeskenTanimlaNewRecord(DataSet: TDataSet);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

  public
    procedure PersonelSec(sid: string);
  end;

var
  FrmMeskenTanimla: TFrmMeskenTanimla;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmMeskenTanimla.PersonelSec(sid: string);
begin
  if sid='0' then exit;

  with QMeskenTanimla do
  begin
    Close;
     SQL.Text :='Select * From public."MeskenTanimla" WHERE "ID" = '+sid;
    Open;
  end;
end;

procedure TFrmMeskenTanimla.cxDBTextEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmMeskenTanimla.dxBarLargeButton1Click(Sender: TObject);
label EndSchema;
var
  q:Integer;
begin
   if cxDBLookupComboBox3.Text = '' then
     begin
       if Application.MessageBox('Lütfen Daire Türünü Seçiniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBLookupComboBox3.SetFocus;
       Exit
     end;

   if cxDBLookupComboBox4.Text = '' then
     begin
       if Application.MessageBox('Lütfen Bina Adýný Seçiniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBLookupComboBox4.SetFocus;
       Exit
     end;

   if cxDBTextEdit19.Text = '' then
     begin
       if Application.MessageBox('Lütfen Kat No Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit19.SetFocus;
       Exit
     end;

   if cxDBTextEdit20.Text = '' then
     begin
       if Application.MessageBox('Lütfen Kapý No Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit20.SetFocus;
       Exit
     end;

    if Application.MessageBox('Kayýt Edecek misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        begin
          if QMeskenTanimla.Active then
            begin
              if QMeskenTanimla.State in [dsEdit,dsInsert] then
              QMeskenTanimla.Post;
            end;
        end;
end;

procedure TFrmMeskenTanimla.btnNewClick(Sender: TObject);
begin
  if btnNew.Visible=ivNever then Abort;
    if QMeskenTanimla.Active then
      begin
        if QMeskenTanimla.State in [dsEdit,dsInsert] then
           QMeskenTanimla.Cancel;
      end;
        QMeskenTanimla.Append;
        cxDBLookupComboBox3.SetFocus;
end;

procedure TFrmMeskenTanimla.btnDelClick(Sender: TObject);
begin
  if btnDel.Visible=ivNever then Abort;
     if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        if QMeskenTanimla.Active then
          begin
            QMeskenTanimla.Delete;
          end;
end;

procedure TFrmMeskenTanimla.dxBarLargeButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmMeskenTanimla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmMeskenTanimla.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmMeskenTanimla.FormShow(Sender: TObject);
begin
  cxDBLookupComboBox3.SetFocus;

  Connection.OpenTable(QMeskenTanimla,'Select * From public."MeskenTanimla" where 1=2');

  Connection.OpenTable(QAdi,'select * from public."KisiTanimla"');
  Connection.OpenTable(QTur,'SELECT "ID", "PARAMETREID", "PARAMETREKOD", "PARAMETREADI" AS List '+
                              ' FROM public."GenelTanimlar" where "PARAMETREID"=6');

  connection.OpenTable(QBina,'Select * From public."BinaTanimla"');
end;


procedure TFrmMeskenTanimla.QMeskenTanimlaNewRecord(DataSet: TDataSet);
begin
//  QMeskenTanimla.FieldByName('PERSON_NUMBER').AsString := Connection.getKodFromID(14);
//  if Length(cxDBButtonEdit1.Text)>0 then
//  begin
//    cxDBButtonEdit1.Enabled:=False;
//    cxDBLookupComboBox1.SetFocus;
//  end
//  else
//    cxDBButtonEdit1.SetFocus;
end;

end.
