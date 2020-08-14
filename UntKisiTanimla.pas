unit UntKisiTanimla;

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
  TFrmKisiTanimla = class(TForm)
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
    dsKisiTanimla: TUniDataSource;
    QKisiTanimla: TUniQuery;
    cxGroupBox2: TcxGroupBox;
    dxBarLargeButton9: TdxBarLargeButton;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    Label22: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    dxBarManager1Bar2: TdxBar;
    cxDBTextEdit2: TcxDBTextEdit;
    Label13: TLabel;
    Label24: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label1: TLabel;
    cxDBMemo2: TcxDBMemo;
    Label3: TLabel;
    cxDBMemo3: TcxDBMemo;
    cxDBTextEdit1: TcxDBTextEdit;
    sMaster: TUniStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure QKisiTanimlaNewRecord(DataSet: TDataSet);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

  public
    KisiID:integer;
    procedure PersonelSec(sid: string);
  end;

var
  FrmKisiTanimla: TFrmKisiTanimla;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmKisiTanimla.PersonelSec(sid: string);
begin
  if sid='0' then exit;

  with QKisiTanimla do
  begin
    Close;
     SQL.Text :='Select * From public."KisiTanimla" WHERE "ID" = '+sid;
    Open;
  end;
end;

procedure TFrmKisiTanimla.cxDBTextEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmKisiTanimla.dxBarLargeButton1Click(Sender: TObject);
label EndSchema;
var
  q:Integer;
begin
   if cxDBTextEdit4.Text = '' then
     begin
       if Application.MessageBox('Lütfen Adý Soyadý Giriniz.','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit4.SetFocus;
       Exit
     end;


    if Application.MessageBox('Kayýt Edecek misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        begin
          if QKisiTanimla.Active then
            begin
              if QKisiTanimla.State in [dsEdit,dsInsert] then
              QKisiTanimla.Post;
            end;
        end;
end;

procedure TFrmKisiTanimla.btnNewClick(Sender: TObject);
begin
  if btnNew.Visible=ivNever then Abort;
    if QKisiTanimla.Active then
      begin
        if QKisiTanimla.State in [dsEdit,dsInsert] then
           QKisiTanimla.Cancel;
      end;
        QKisiTanimla.Append;
        cxDBTextEdit4.SetFocus;
end;

procedure TFrmKisiTanimla.btnDelClick(Sender: TObject);
begin
  if btnDel.Visible=ivNever then Abort;
     if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        if QKisiTanimla.Active then
          begin
            QKisiTanimla.Delete;
          end;
end;

procedure TFrmKisiTanimla.dxBarLargeButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmKisiTanimla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmKisiTanimla.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmKisiTanimla.FormShow(Sender: TObject);
begin
  cxDBTextEdit4.SetFocus;

  Connection.OpenTable(QKisiTanimla,'Select * From public."KisiTanimla" where 1=2');
end;


procedure TFrmKisiTanimla.QKisiTanimlaNewRecord(DataSet: TDataSet);
begin
//  QKisiTanimla.FieldByName('PERSON_NUMBER').AsString := Connection.getKodFromID(14);
//  if Length(cxDBButtonEdit1.Text)>0 then
//  begin
//    cxDBButtonEdit1.Enabled:=False;
//    cxDBLookupComboBox1.SetFocus;
//  end
//  else
//    cxDBButtonEdit1.SetFocus;
end;

end.
