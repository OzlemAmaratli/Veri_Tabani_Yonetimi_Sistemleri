unit UntKullaniciTanimla;

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
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxCalendar, cxLabel,
  Vcl.Menus, cxButtons, IdBaseComponent, IdMessage,IdMessageBuilder,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, Vcl.ExtCtrls, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinsCore;

type
  TFrmKullaniciTanimla = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar3: TdxBar;
    btnSave: TdxBarLargeButton;
    btnDel: TdxBarLargeButton;
    btnClose: TdxBarLargeButton;
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
    dsUserList: TUniDataSource;
    QUserList: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label1: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxBarManager1Bar4: TdxBar;
    btnHelp: TdxBarLargeButton;
    cxDBTextEdit4: TcxDBTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure QUserListNewRecord(DataSet: TDataSet);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    ComputerName : String;
  public
    Querys         : Array[0..10] of TUniQuery;
    procedure KullaniciSec(sid: string);
  end;

var
  FrmKullaniciTanimla: TFrmKullaniciTanimla;

implementation

{$R *.dfm}

uses UntDM;


procedure TFrmKullaniciTanimla.KullaniciSec(sid: string);
begin
  if sid='0' then exit;

  with QUserList do
    begin
      Close;
      SQL.Text :='Select * From public."KullaniciTanimla" WHERE "ID" = '+sid;
      Open;
    end;
end;

procedure TFrmKullaniciTanimla.cxDBTextEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
   Close;
end;

procedure TFrmKullaniciTanimla.btnSaveClick(Sender: TObject);
label EndSchema;
var
  q:Integer;
begin
  if btnSave.Visible=ivNever then Abort;

     if cxDBButtonEdit1.Text = '' then
      begin
        if Application.MessageBox('Lütfen Personel ID Alanýný Boþ Býrakmayýnýz...','Dikkat',MB_ICONWARNING)= IDOK then
        cxDBButtonEdit1.SetFocus;
        Exit;
      end;

     if cxDBTextEdit1.Text = '' then
      begin
       if Application.MessageBox('Lütfen Adý Soyadý Alanýný Boþ Býrakmayýnýz...','Dikkat',MB_ICONWARNING)= IDOK then
       cxDBTextEdit1.SetFocus;
       Exit;
      end;

     if cxDBTextEdit2.Text = '' then
      begin
        if Application.MessageBox('Lütfen Þifre Alanýný Boþ Býrakmayýnýz...','Dikkat',MB_ICONWARNING)= IDOK then
        cxDBTextEdit2.SetFocus;
        Exit;
      end;

     if Application.MessageBox('Kayýt Edecek misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        begin
          if QUserList.Active then
            begin
              if QUserList.State in [dsEdit,dsInsert] then
              QUserList.Post;
            end;
        end;
end;

procedure TFrmKullaniciTanimla.btnNewClick(Sender: TObject);
var q:Integer;
begin
  if btnNew.Visible=ivNever then Abort;
    if QUserList.Active then
      begin
        if QUserList.State in [dsEdit,dsInsert] then
           QUserList.Cancel;
      end;
        QUserList.Append;
        if cxDBButtonEdit1.Enabled = False then
          cxDBButtonEdit1.Enabled := True;
          cxDBButtonEdit1.SetFocus;
end;

procedure TFrmKullaniciTanimla.btnDelClick(Sender: TObject);
begin
  if btnDel.Visible=ivNever then Abort;

      if Application.MessageBox('Kayýt Silinecek Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
        if QUserList.Active then
          begin
            QUserList.Delete;
          end;
end;

procedure TFrmKullaniciTanimla.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmKullaniciTanimla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmKullaniciTanimla.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmKullaniciTanimla.FormShow(Sender: TObject);
begin
    Connection.OpenTable(QUserList,'Select * From public."KullaniciTanimla" where 1=2');

    cxDBButtonEdit1.SetFocus;
end;

procedure TFrmKullaniciTanimla.QUserListNewRecord(DataSet: TDataSet);
begin
//  QUserList.FieldByName('KULLANICIKODU').AsString := Connection.getKodFromID(2016);
//  if Length(cxDBButtonEdit1.Text)>0 then
//  begin
//    cxDBButtonEdit1.Enabled:=False;
//    cxDBTextEdit1.SetFocus;
//  end
//  else
//    cxDBButtonEdit1.SetFocus;
end;

end.
