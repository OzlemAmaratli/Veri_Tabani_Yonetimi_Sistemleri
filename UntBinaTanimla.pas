unit UntBinaTanimla;

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
  TFrmBinaTanimla = class(TForm)
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
    dsBinaTanimla: TUniDataSource;
    QBinaTanimla: TUniQuery;
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
    Label24: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    Label43: TLabel;
    dsSehir: TUniDataSource;
    QSehir: TUniQuery;
    dsilce: TUniDataSource;
    Qilce: TUniQuery;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dsPersonel: TUniDataSource;
    QPersonel: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure QBinaTanimlaNewRecord(DataSet: TDataSet);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

  public
    procedure PersonelSec(sid: string);
  end;

var
  FrmBinaTanimla: TFrmBinaTanimla;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmBinaTanimla.PersonelSec(sid: string);
begin
  if sid='0' then exit;

  with QBinaTanimla do
  begin
    Close;
     SQL.Text :='Select * From public."BinaTanimla" WHERE "ID" = '+sid;
    Open;
  end;
end;

procedure TFrmBinaTanimla.cxDBTextEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmBinaTanimla.dxBarLargeButton1Click(Sender: TObject);
label EndSchema;
var
  q:Integer;
begin
   if cxDBButtonEdit1.Text = '' then
     begin
       if Application.MessageBox('Lütfen Bina No Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBButtonEdit1.SetFocus;
       Exit
     end;

   if cxDBTextEdit4.Text = '' then
     begin
       if Application.MessageBox('Lütfen Bina Adý Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit4.SetFocus;
       Exit
     end;

    if Application.MessageBox('Kayýt Edecek misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        begin
          if QBinaTanimla.Active then
            begin
              if QBinaTanimla.State in [dsEdit,dsInsert] then
              QBinaTanimla.Post;
            end;
        end;
end;

procedure TFrmBinaTanimla.btnNewClick(Sender: TObject);
begin
  if btnNew.Visible=ivNever then Abort;
    if QBinaTanimla.Active then
      begin
        if QBinaTanimla.State in [dsEdit,dsInsert] then
           QBinaTanimla.Cancel;
      end;
        QBinaTanimla.Append;
        if cxDBButtonEdit1.Enabled = False then
          cxDBButtonEdit1.Enabled := True;
          cxDBButtonEdit1.SetFocus;
end;

procedure TFrmBinaTanimla.btnDelClick(Sender: TObject);
begin
  if btnDel.Visible=ivNever then Abort;
     if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        if QBinaTanimla.Active then
          begin
            QBinaTanimla.Delete;
          end;
end;

procedure TFrmBinaTanimla.dxBarLargeButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmBinaTanimla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmBinaTanimla.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmBinaTanimla.FormShow(Sender: TObject);
begin
  cxDBButtonEdit1.SetFocus;

  Connection.OpenTable(QBinaTanimla,'Select * From public."BinaTanimla" where 1=2');

  Connection.OpenTable(QPersonel, 'Select * from public."PersonelTanimla"');
end;


procedure TFrmBinaTanimla.QBinaTanimlaNewRecord(DataSet: TDataSet);
begin
//  QBinaTanimla.FieldByName('PERSON_NUMBER').AsString := Connection.getKodFromID(14);
//  if Length(cxDBButtonEdit1.Text)>0 then
//  begin
//    cxDBButtonEdit1.Enabled:=False;
//    cxDBLookupComboBox1.SetFocus;
//  end
//  else
//    cxDBButtonEdit1.SetFocus;
end;

end.
