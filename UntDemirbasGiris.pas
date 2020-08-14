unit UntDemirbasGiris;

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
  TFrmDemirbasGiris = class(TForm)
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
    dsDemirbasGiris: TUniDataSource;
    QDemirbasGiris: TUniQuery;
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
    Label36: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    Label26: TLabel;
    Label43: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label2: TLabel;
    cxDBMemo1: TcxDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure QDemirbasGirisNewRecord(DataSet: TDataSet);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

  public
    procedure PersonelSec(sid: string);
  end;

var
  FrmDemirbasGiris: TFrmDemirbasGiris;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmDemirbasGiris.PersonelSec(sid: string);
begin
  if sid='0' then exit;

  with QDemirbasGiris do
  begin
    Close;
     SQL.Text :='Select * From public."DemirbasTakip" WHERE "ID" = '+sid;
    Open;
  end;
end;

procedure TFrmDemirbasGiris.cxDBTextEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmDemirbasGiris.dxBarLargeButton1Click(Sender: TObject);
label EndSchema;
var
  q:Integer;
begin
   if cxDBButtonEdit1.Text = '' then
     begin
       if Application.MessageBox('Lütfen Demirbaþ No Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBButtonEdit1.SetFocus;
       Exit
     end;

   if cxDBTextEdit4.Text = '' then
     begin
       if Application.MessageBox('Lütfen Demirbaþ Adý Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit4.SetFocus;
       Exit
     end;

   if cxDBTextEdit16.Text = '' then
     begin
       if Application.MessageBox('Lütfen Adet Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit16.SetFocus;
       Exit
     end;

    if Application.MessageBox('Kayýt Edecek misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        begin
          if QDemirbasGiris.Active then
            begin
              if QDemirbasGiris.State in [dsEdit,dsInsert] then
              QDemirbasGiris.Post;
            end;
        end;
end;

procedure TFrmDemirbasGiris.btnNewClick(Sender: TObject);
begin
  if btnNew.Visible=ivNever then Abort;
    if QDemirbasGiris.Active then
      begin
        if QDemirbasGiris.State in [dsEdit,dsInsert] then
           QDemirbasGiris.Cancel;
      end;
        QDemirbasGiris.Append;
        if cxDBButtonEdit1.Enabled = False then
          cxDBButtonEdit1.Enabled := True;
          cxDBButtonEdit1.SetFocus;
end;

procedure TFrmDemirbasGiris.btnDelClick(Sender: TObject);
begin
  if btnDel.Visible=ivNever then Abort;
     if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        if QDemirbasGiris.Active then
          begin
            QDemirbasGiris.Delete;
          end;
end;

procedure TFrmDemirbasGiris.dxBarLargeButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmDemirbasGiris.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmDemirbasGiris.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmDemirbasGiris.FormShow(Sender: TObject);
begin
  cxDBButtonEdit1.SetFocus;

  Connection.OpenTable(QDemirbasGiris,'Select * From public."DemirbasTakip" where 1=2');
end;


procedure TFrmDemirbasGiris.QDemirbasGirisNewRecord(DataSet: TDataSet);
begin
//  QDemirbasGiris.FieldByName('PERSON_NUMBER').AsString := Connection.getKodFromID(14);
//  if Length(cxDBButtonEdit1.Text)>0 then
//  begin
//    cxDBButtonEdit1.Enabled:=False;
//    cxDBLookupComboBox1.SetFocus;
//  end
//  else
//    cxDBButtonEdit1.SetFocus;
end;

end.
