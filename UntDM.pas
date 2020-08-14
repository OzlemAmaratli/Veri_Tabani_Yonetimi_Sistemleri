unit UntDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Controls, cxClasses, cxLookAndFeels,
  dxSkinsForm, Data.DB, DBAccess, Uni, UniProvider, SQLServerUniProvider, MemDS,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  cxCurrencyEdit, Data.Win.ADODB, dxBar, dxRibbonGallery,
  dxSkinChooserGallery, cxBarEditItem, cxStyles,
  Vcl.ExtCtrls, dxStatusBar, dxRibbonStatusBar, dxRibbon,
  Vcl.StdCtrls, wininet, Printers, cxButtons,
  IdBaseComponent, IdComponent, IdIPWatch, IdTCPConnection, IdTCPClient, IdHTTP,Winsock, URLMon,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  dxLayoutLookAndFeels, System.Actions, Vcl.ActnList,
  cxProgressBar, dxLayoutContainer, cxTextEdit,dxLayoutControl,IniFiles,
  cxGridDBTableView, cxDBLookupComboBox,cxGrid, cxDBEditRepository, NB30,
  cxLocalization, cxImageList, dxGDIPlusClasses, dxSkinsDefaultPainters,
  MySQLUniProvider, PostgreSQLUniProvider;

type
  TConnection = class(TDataModule)
    sqlConnection: TUniConnection;
    cxLocalizer1: TcxLocalizer;
    QKod: TUniQuery;
    QGenel: TUniQuery;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    dsLogin: TUniDataSource;
    QLogin: TUniQuery;
    QTemp1: TUniQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    yol         :string;
    UserID      :integer;
    UserName    :String;
    ApartmanAdi :String;
    Querys      :Array[0..10] of TUniQuery;

    procedure DBConnect;
    function  ReadIni(FileName,Part,Value:String):String;
    procedure WriteIni(Section,Part,Value:String);
    procedure OnTabs(Sender: TObject; var Key: Char);
    function  TarihDuzenle(tarih: TDateTime): string;
    procedure OpenTable(Table:TCustomUniDataSet;SQLText:String='');
    function getKodFromID(znID: Integer): String;
    procedure SqlExec(Sq: String);
    procedure SqlExec2(Sq: String);
    procedure DbYenile(DB:TUniQuery);
  end;

  const
   FileExi:String='ApartmanYonetim.exi';
   FileCon:String='ApartmanConnect';

var
   SQLStr:String;
   Connection: TConnection;
   IniFiles : TIniFile;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TConnection }

Procedure TConnection.SqlExec(Sq:String);
Begin
  try
      screen.Cursor:=crSQLWait;
      QGenel.SQL.Text:=Sq;
      QGenel.ExecSQL;
      screen.Cursor:=crDefault;
  except
      showmessage(sq);
      screen.Cursor:=crDefault;
  end;
End;

Procedure TConnection.SqlExec2(Sq:String);
Begin
  try
      screen.Cursor:=crSQLWait;
      QGenel.SQL.Text:=Sq;
      QGenel.ExecSQL;
      screen.Cursor:=crDefault;
  except
  end;
  screen.Cursor:=crDefault;
End;

procedure TConnection.DBConnect;
begin
    with sqlConnection do
      begin
        ProviderName  := ReadIni(FileExi,FileCon,'Provider');
        Server        := ReadIni(FileExi,FileCon,'Server');
        Username      := ReadIni(FileExi,FileCon,'User');
        Password      := ReadIni(FileExi,FileCon,'Pass');
        Database      := ReadIni(FileExi,FileCon,'DB');
        LoginPrompt   :=False;
//        SpecificOptions.Values['Provider'] := 'prDirect';
        SpecificOptions.Values['ConnectionTimeout'] := '5';
        try
          Connected:=True;
          Connected:=False;
//          SpecificOptions.Values['Provider']          := 'prAuto';
          SpecificOptions.Values['ConnectionTimeout'] := '10';
          Connected:=True;
          except
          on E:Exception do
            begin
              MessageDlg('Database Baðlantýsý Gerçekleþmedi.'+#13+'Hata :'+E.Message,mtInformation,[mbOK],0);
              //Destroy;
              //Application.Terminate;
            end;
        end;
      end;
end;

procedure TConnection.DbYenile(DB: TUniQuery);
begin
  if DB.Connection.Connected then
    if length(Trim(DB.SQL.Text))>0 then
    begin
      if DB.Active then DB.Close;
      try
        DB.Open;
      except
         on E : Exception do
         begin
           ShowMessage('Exception class name = '+E.ClassName);
           ShowMessage('Exception message = '+E.Message);
         end;
      end;
    end;
end;

function TConnection.getKodFromID(znID: Integer): String;
begin
  QKod.Close;
  QKod.SQL.Text:='SELECT SEQUENCE_ACTIVE,SEQUENCE_PREFIX + CAST (SEQUENCE_DESCRIPTION AS VARCHAR) AS KOD from Sequence where ID = '+znID.ToString;
  QKod.Open;
  if QKod.FieldByName('SEQUENCE_ACTIVE').AsInteger = 1 then
    Result := QKod.FieldByName('KOD').AsString
  else
    Result := '';
end;

procedure TConnection.DataModuleCreate(Sender: TObject);
begin
  DBConnect;

   Yol:=ExtractFileDir(Application.ExeName);
   Yol:=Yol + '\';

   cxLocalizer1.FileName := yol+'\'+'Language.ini';
   cxLocalizer1.Active := True;
   cxLocalizer1.Locale := 1055;
end;

procedure TConnection.OnTabs(Sender: TObject; var Key: Char);
begin
 IF (Key=#13) THEN begin

   key:=#0;

  SendMessage(TForm(Sender).Handle,WM_NEXTDLGCTL,0,0);
 end;
end;

procedure TConnection.OpenTable(Table: TCustomUniDataSet; SQLText: String);
begin
  try
      Table.Connection:=sqlConnection;
      if Table.Active then Table.Close;
      if SQLText <> '' then Table.SQL.Text:=SQLText;
      Table.Open;
    except
      on E:Exception do
        begin
          MessageDlg('Tablo Açýlamadý!'+#13+'Tablo Adý :'+Table.Name+#13+'Hata :'+E.Message+#13+'SQL :'+SQLText,mtError,[mbOK],0);
        end;
    end;
end;

function TConnection.ReadIni(FileName, Part, Value: String): String;
var List: TStringList;
begin
  List:=TStringList.Create;
  IniFiles:=TIniFile.Create(ExtractFilePath(Application.ExeName)+FileName);
  IniFiles.ReadSectionValues(Part,List);
  Result:=List.Values[Value];
  IniFiles.Free;
  List.Free;
end;

function TConnection.TarihDuzenle(tarih: TDateTime): string;
var
gun,ay,yil:word;
Saat,Dakika,Saniye,Salise:Word;
begin
  decodedate(tarih,yil,ay,gun);
  DecodeTime(tarih, Saat, dakika, Saniye, Salise);
         //'2006-03-03 00:00:00',
  Result:=''''+inttostr(yil) +'-'+inttostr(ay)+'-'+ inttostr(gun) +' '+inttostr(saat)+':'+inttostr(dakika)+':'+inttostr(Saniye)+'''';
end;

procedure TConnection.WriteIni(Section, Part, Value: String);
var List: TStringList;
begin
  IniFiles:=TIniFile.Create(ExtractFilePath(Application.ExeName)+FileExi);
  IniFiles.WriteString(Section,Part,Value);
  IniFiles.Free;
end;

end.
