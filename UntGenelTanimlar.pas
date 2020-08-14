unit UntGenelTanimlar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxGridCustomPopupMenu, cxGridPopupMenu, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu;

type
  TFrmGenelTanimlar = class(TForm)
    Panel1: TPanel;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsList: TUniDataSource;
    QList: TUniQuery;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGrid1DBTableView1PARAMETREID: TcxGridDBColumn;
    cxGrid1DBTableView1PARAMETREKOD: TcxGridDBColumn;
    cxGrid1DBTableView1PARAMETREADI: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton2Click(Sender: TObject);
  private
  public

  end;

var
  FrmGenelTanimlar: TFrmGenelTanimlar;

implementation

{$R *.dfm}

uses UntDM;


procedure TFrmGenelTanimlar.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmGenelTanimlar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmGenelTanimlar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
   Close;
   Connection.OnTabs(Self,Key);
end;

end.
