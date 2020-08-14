unit UntMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon,
  dxBar, cxClasses, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, cxImageList,
  cxContainer, cxEdit, cxListView, dxCustomTileControl, dxTileControl;

type
  TFrmMenu = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxTileControl1: TdxTileControl;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item2: TdxTileControlItem;
    dxTileControl1Item3: TdxTileControlItem;
    dxTileControl1Item4: TdxTileControlItem;
    dxTileControl1Item5: TdxTileControlItem;
    dxTileControl1Item6: TdxTileControlItem;
    dxTileControl1Item7: TdxTileControlItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton19Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item5Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item7Click(Sender: TdxTileControlItem);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
    procedure dxBarLargeButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    Frmtag:Integer;
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses UntKullaniciListe, UntSifreDegistir, UntMain, UntPersonelListe,
  UntSiteListe, UntBinaListe, UntMeskenListe, UntKisiListe, UntGenelTanimlar,
  UntDM, UntAidatIslemleriListe, UntGelirTakip, UntGiderTakip, UntDemirbasListe,
  UntKararDefteriListe;


procedure TFrmMenu.dxBarLargeButton10Click(Sender: TObject);
begin
   FrmAidatIslemleriListe:=TFrmAidatIslemleriListe.Create(FrmMain);
   FrmAidatIslemleriListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton11Click(Sender: TObject);
begin
   FrmGelirTakip:=TFrmGelirTakip.Create(FrmMain);
   FrmGelirTakip.Show;
end;

procedure TFrmMenu.dxBarLargeButton12Click(Sender: TObject);
begin
   FrmGiderTakip:=TFrmGiderTakip.Create(FrmMain);
   FrmGiderTakip.Show;
end;

procedure TFrmMenu.dxBarLargeButton13Click(Sender: TObject);
begin
   FrmDemirbasListe:=TFrmDemirbasListe.Create(FrmMain);
   FrmDemirbasListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton14Click(Sender: TObject);
begin
   FrmKararDefteriListe:=TFrmKararDefteriListe.Create(FrmMain);
   FrmKararDefteriListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton19Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmMenu.dxBarLargeButton1Click(Sender: TObject);
begin
   FrmKullaniciListe:=TFrmKullaniciListe.Create(FrmMain);
   FrmKullaniciListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton2Click(Sender: TObject);
begin
   FrmSiteListe:=TFrmSiteListe.Create(FrmMain);
   FrmSiteListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton3Click(Sender: TObject);
begin
   FrmBinaListe:=TFrmBinaListe.Create(FrmMain);
   FrmBinaListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton4Click(Sender: TObject);
begin
   FrmMeskenListe:=TFrmMeskenListe.Create(FrmMain);
   FrmMeskenListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton5Click(Sender: TObject);
begin
   FrmKisiListe:=TFrmKisiListe.Create(FrmMain);
   FrmKisiListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton6Click(Sender: TObject);
begin
   FrmPersonelListe:=TFrmPersonelListe.Create(FrmMain);
   FrmPersonelListe.Show;
end;

procedure TFrmMenu.dxBarLargeButton7Click(Sender: TObject);
begin
  dxTileControl1.Visible := True;
end;

procedure TFrmMenu.dxBarLargeButton8Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmMenu.dxBarLargeButton9Click(Sender: TObject);
begin
   FrmSifreDegistir:=TFrmSifreDegistir.Create(FrmMain);
   FrmSifreDegistir.Show;
end;

procedure TFrmMenu.dxTileControl1Item1Click(Sender: TdxTileControlItem);
begin
   Frmtag:= dxTileControl1Item1.Tag;
   FrmGenelTanimlar:=TFrmGenelTanimlar.Create(FrmMain);
   Connection.OpenTable(FrmGenelTanimlar.QList,'select * from public."GenelTanimlar" where "PARAMETREID"='+IntToStr(Frmtag));
   FrmGenelTanimlar.Show;
end;

procedure TFrmMenu.dxTileControl1Item2Click(Sender: TdxTileControlItem);
begin
   Frmtag:= dxTileControl1Item2.Tag;
   FrmGenelTanimlar:=TFrmGenelTanimlar.Create(FrmMain);
   Connection.OpenTable(FrmGenelTanimlar.QList,'select * from public."GenelTanimlar" where "PARAMETREID"='+IntToStr(Frmtag));
   FrmGenelTanimlar.Show;
end;

procedure TFrmMenu.dxTileControl1Item3Click(Sender: TdxTileControlItem);
begin
   Frmtag:= dxTileControl1Item3.Tag;
   FrmGenelTanimlar:=TFrmGenelTanimlar.Create(FrmMain);
   Connection.OpenTable(FrmGenelTanimlar.QList,'select * from public."GenelTanimlar" where "PARAMETREID"='+IntToStr(Frmtag));
   FrmGenelTanimlar.Show;
end;

procedure TFrmMenu.dxTileControl1Item4Click(Sender: TdxTileControlItem);
begin
   Frmtag:= dxTileControl1Item4.Tag;
   FrmGenelTanimlar:=TFrmGenelTanimlar.Create(FrmMain);
   Connection.OpenTable(FrmGenelTanimlar.QList,'select * from public."GenelTanimlar" where "PARAMETREID"='+IntToStr(Frmtag));
   FrmGenelTanimlar.Show;
end;

procedure TFrmMenu.dxTileControl1Item5Click(Sender: TdxTileControlItem);
begin
   Frmtag:= dxTileControl1Item5.Tag;
   FrmGenelTanimlar:=TFrmGenelTanimlar.Create(FrmMain);
   Connection.OpenTable(FrmGenelTanimlar.QList,'select * from public."GenelTanimlar" where "PARAMETREID"='+IntToStr(Frmtag));
   FrmGenelTanimlar.Show;
end;

procedure TFrmMenu.dxTileControl1Item6Click(Sender: TdxTileControlItem);
begin
   dxTileControl1.Visible:=False;
end;

procedure TFrmMenu.dxTileControl1Item7Click(Sender: TdxTileControlItem);
begin
   Frmtag:= dxTileControl1Item7.Tag;
   FrmGenelTanimlar:=TFrmGenelTanimlar.Create(FrmMain);
   Connection.OpenTable(FrmGenelTanimlar.QList,'select * from public."GenelTanimlar" where "PARAMETREID"='+IntToStr(Frmtag));
   FrmGenelTanimlar.Show;
end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caNone;
  if Application.MessageBox('Program Kapatýlacak Emin Misiniz?','Dikkat',MB_ICONWARNING+MB_YESNO)= mrYes then
   begin
     Application.Terminate;
   end;
end;

procedure TFrmMenu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
//   ClearLv;
end;

procedure TFrmMenu.FormShow(Sender: TObject);
begin
   dxRibbon1Tab1.Active := True;
end;

end.
