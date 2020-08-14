unit UntSifreDegistir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxRibbonSkins, dxRibbonCustomizationForm, cxLabel,
  Uni, dxBar, cxBarEditItem, cxStyles, cxClasses, Data.DB, DBAccess, MemDS,
  dxLayoutLookAndFeels, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, dxRibbon, cxProgressBar, dxLayoutContainer, cxTextEdit,
  dxLayoutControl,  Vcl.StdCtrls;

type
  TFrmSifreDegistir = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtUSERNAME: TcxTextEdit;
    edtOLDPASS: TcxTextEdit;
    edtNEWPASS: TcxTextEdit;
    dsSifDeg: TUniDataSource;
    QSifDeg: TUniQuery;
    cxLabel4: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSifreDegistir: TFrmSifreDegistir;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmSifreDegistir.dxBarLargeButton3Click(Sender: TObject);
var
 bilgi:string;
begin
  with FrmSifreDegistir Do
   begin
    QSifDeg.close;
    QSifDeg.SQL.Text:='select * from public."KullaniciTanimla" where "SIFRE"='+quotedstr(edtOLDPASS.text) + ' And "ADISOYADI"='+quotedstr(edtUSERNAME.Text);
    QSifDeg.Open;

     if edtUSERNAME.Text <> Connection.UserName then
      begin
        if Application.MessageBox('Kendi Kullanýcý Kodunuzu Yazýnýz...','Hata',MB_ICONWARNING)= mrOk then
        Exit;
      end;

    if QSifDeg.RecordCount=0 then
   begin
     if Application.MessageBox('Eski Þifreyi Yanlýþ Girdiniz Lütfen Kontrol Ediniz!','Hata',MB_ICONWARNING)= mrOk then
   end
   else
    if edtNEWPASS.Text=cxTextEdit1.Text then
   begin
    QSifDeg.close;
    QSifDeg.SQL.Text:='update public."KullaniciTanimla" set "SIFRE"='+quotedstr(edtNEWPASS.text) + ' where "ADISOYADI"='+quotedstr(edtUSERNAME.Text);
    QSifDeg.ExecSQL;
    edtUSERNAME.Text:=''; edtOLDPASS.Text:=''; edtNEWPASS.Text:=''; cxTextEdit1.Text:='';
    if Application.MessageBox('Þifreniz Deðiþti.! Lütfen Yeni Þifrenizi Unutmayýnýz!','Dikkat',MB_ICONWARNING)= mrOk then
    close;
    end
    else
     if edtNEWPASS.Text<>cxTextEdit1.Text then
      begin
       if Application.MessageBox('Girdiðiniz Yeni Þifrenizin Tekrarý Yanlýþ Lütfen Kontrol Ediniz!','Hata',MB_ICONWARNING)= mrOk then
      end;
    end;

end;

procedure TFrmSifreDegistir.dxBarLargeButton5Click(Sender: TObject);
begin
   if Application.MessageBox('Þifre Deðiþtirme Ýþlemi Ýptal Edildi!','Dikkat',MB_ICONWARNING)= mrOk then
     begin
       Close;
     end;
end;

procedure TFrmSifreDegistir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmSifreDegistir.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
    Connection.OnTabs(Self,Key);
end;

procedure TFrmSifreDegistir.FormShow(Sender: TObject);
begin
    QSifDeg.Close;
    QSifDeg.SQL.Text:='Select * From public."KullaniciTanimla"';
    QSifDeg.Open;

    edtUSERNAME.SetFocus;
    edtUSERNAME.Text:=Connection.ReadIni(FileExi,'ApartmanUser','User');
end;

end.
