unit UntMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxStatusBar, dxRibbonStatusBar, Vcl.ExtCtrls,
  dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxClasses, dxRibbon, cxPC,
  dxBarBuiltInMenu, dxTabbedMDI;

type
  TFrmMain = class(TForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    Timer1: TTimer;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses UntSifreGiris, UntSifreDegistir, UntDM, UntKullaniciListe;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
   Application.CreateForm(TConnection,Connection);
   Application.CreateForm(TFrmSifreGiris,FrmSifreGiris);
   FrmSifreGiris.ShowModal;
   FrmSifreGiris.Free;
   FrmSifreGiris:=nil;
   Application.ProcessMessages;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[1].Text := Connection.UserName;
end;

procedure TFrmMain.Timer1Timer(Sender: TObject);
begin
   dxRibbonStatusBar1.Panels[2].Text:=FormatDateTime('dd.mm.yyyy  -  tt',Now);
end;

end.
