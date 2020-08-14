unit UntSifreGiris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, System.ImageList,
  Vcl.ImgList, cxImageList, Data.DB, MemDS, DBAccess, Uni, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, Vcl.ExtCtrls, cxImageComboBox, Vcl.StdCtrls, cxButtons,
  dxGDIPlusClasses, cxSpinEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxImage, cxProgressBar,
  cxGroupBox;

type
  TFrmSifreGiris = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pbBaseProgress: TcxProgressBar;
    imgUser: TcxImage;
    edt_USERPASS: TcxTextEdit;
    edt_UserName: TcxTextEdit;
    cxImage6: TcxImage;
    cxImage7: TcxImage;
    cxImage9: TcxImage;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    Timer1: TTimer;
    dMaster: TUniDataSource;
    qMaster: TUniQuery;
    QFirma: TUniQuery;
    dsFirma: TUniDataSource;
    cxImageList1: TcxImageList;
    Timer2: TTimer;
    Timer3: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edt_UserNameExit(Sender: TObject);
  private
    errol : Integer;
    procedure SifreSor(Sender: TObject);
  public
    UserName : String;
  end;

var
  FrmSifreGiris: TFrmSifreGiris;

implementation

{$R *.dfm}

uses UntDM;


procedure TFrmSifreGiris.btnCancelClick(Sender: TObject);
begin
  Application.Terminate;
  Exit;
end;

procedure TFrmSifreGiris.btnOkClick(Sender: TObject);
begin
   SifreSor(btnOk);
end;

procedure TFrmSifreGiris.edt_UserNameExit(Sender: TObject);
begin
  Connection.OpenTable(Connection.QLogin,'Select * From public."KullaniciTanimla" where "ADISOYADI" ='+QuotedStr(edt_UserName.Text));
   if Connection.QLogin.RecordCount = 0 then
    begin
      Application.MessageBox('Kullanýcý Bulunamadý!','Hata',MB_ICONWARNING);
      edt_UserName.SetFocus;
      exit;
    end
end;

procedure TFrmSifreGiris.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if errol = 1 then
  Application.Terminate;
end;

procedure TFrmSifreGiris.FormCreate(Sender: TObject);
begin
  ModalResult:=mrNone;
  errol :=1;
  edt_USERNAME.Text:=Connection.ReadIni(FileExi,'ApartmanUser','User');
end;

procedure TFrmSifreGiris.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Connection.OnTabs(Self, Key);
end;

procedure TFrmSifreGiris.FormShow(Sender: TObject);
var
 Items: TcxImageComboBoxItems;
 Item: TcxImageComboBoxItem;
begin
  edt_USERNAME.Text:=Connection.ReadIni(FileExi,'ApartmanUser','User');

  edt_UserName.SetFocus;
end;

procedure TFrmSifreGiris.SifreSor(Sender: TObject);
var
KulAdi,Sifre:String;
begin
  errol:=0;
    if edt_UserName.Text = '' then
     begin
     if Application.MessageBox('Kullanýcý Adý Boþ Olamaz!','Hata',MB_ICONWARNING)= MB_OK then
      edt_UserName.SetFocus;
      errol:=1;
     end;


   if edt_USERPASS.Text = '' then
    begin
     if Application.MessageBox('Parola Boþ Olamaz!','Hata',MB_ICONWARNING)= MB_OK then
     edt_USERPASS.SetFocus;
     errol:=1;
    end;

    if errol=0 then
    begin
      Connection.QLogin.Close;
      Connection.QLogin.SQL.Text := 'SELECT * FROM public."KullaniciTanimla" WHERE "ADISOYADI"='+ QuotedStr(Trim(edt_UserName.Text)) + ' AND "SIFRE"='+QuotedStr(edt_USERPASS.Text);
      Connection.QLogin.Open;

      if Connection.QLogin.RecordCount=0 Then
        Begin
         if Application.MessageBox('Kullanýcý Adýnýz veya Þifreniz Yanlýþ Kontrol Ediniz!','Hata',MB_ICONWARNING)= MB_OK then
         edt_USERPASS.Clear;
         edt_UserName.SetFocus;
         abort;
      End;

       Connection.WriteIni('ApartmanUser','User',edt_UserName.Text);

       Connection.UserID   := Connection.QLogin.FieldByName('ID').AsInteger;
       Connection.UserName := Connection.QLogin.FieldByName('ADISOYADI').AsString;

       close;
    end
    else
    begin
      exit;
      abort;
    end;
end;

end.
