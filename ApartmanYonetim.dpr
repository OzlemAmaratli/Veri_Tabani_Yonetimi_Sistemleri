program ApartmanYonetim;

uses
  Vcl.Forms,
  UntMain in 'UntMain.pas' {FrmMain},
  UntSifreGiris in 'UntSifreGiris.pas' {FrmSifreGiris},
  UntSifreDegistir in 'UntSifreDegistir.pas' {FrmSifreDegistir},
  UntDM in 'UntDM.pas' {Connection: TDataModule},
  UntKullaniciListe in 'UntKullaniciListe.pas' {FrmKullaniciListe},
  UntMenu in 'UntMenu.pas' {FrmMenu},
  UntKullaniciTanimla in 'UntKullaniciTanimla.pas' {FrmKullaniciTanimla},
  UntPersonelListe in 'UntPersonelListe.pas' {FrmPersonelListe},
  UntPersonelTanimla in 'UntPersonelTanimla.pas' {FrmPersonelTanimla},
  UntSiteListe in 'UntSiteListe.pas' {FrmSiteListe},
  UntSiteTanimla in 'UntSiteTanimla.pas' {FrmSiteTanimla},
  UntBinaListe in 'UntBinaListe.pas' {FrmBinaListe},
  UntBinaTanimla in 'UntBinaTanimla.pas' {FrmBinaTanimla},
  UntMeskenListe in 'UntMeskenListe.pas' {FrmMeskenListe},
  UntMeskenTanimla in 'UntMeskenTanimla.pas' {FrmMeskenTanimla},
  UntKisiListe in 'UntKisiListe.pas' {FrmKisiListe},
  UntKisiTanimla in 'UntKisiTanimla.pas' {FrmKisiTanimla},
  UntGenelTanimlar in 'UntGenelTanimlar.pas' {FrmGenelTanimlar},
  UntAidatIslemleriListe in 'UntAidatIslemleriListe.pas' {FrmAidatIslemleriListe},
  UntAidatGiris in 'UntAidatGiris.pas' {FrmAidatGiris},
  UntGelirTakip in 'UntGelirTakip.pas' {FrmGelirTakip},
  UntGiderTakip in 'UntGiderTakip.pas' {FrmGiderTakip},
  UntDemirbasListe in 'UntDemirbasListe.pas' {FrmDemirbasListe},
  UntDemirbasGiris in 'UntDemirbasGiris.pas' {FrmDemirbasGiris},
  UntKararDefteriListe in 'UntKararDefteriListe.pas' {FrmKararDefteriListe},
  UntKararDefteriGiris in 'UntKararDefteriGiris.pas' {FrmKararDefteriGiris};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.Run;
end.
