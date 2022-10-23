unit PAT_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, dbModule, Vcl.Samples.Spin, Vcl.Buttons;

type
  TdbgTeach = class(TForm)
    pgc1: TPageControl;
    tbsWelcome: TTabSheet;
    tbsTeacher: TTabSheet;
    tbsAdministrator: TTabSheet;
    tbsAdjudicator: TTabSheet;
    pnlWelcome: TPanel;
    lblUser: TLabel;
    btnSubmit: TButton;
    cmbUser: TComboBox;
    pnlTeacher: TPanel;
    ledTeacher: TLabeledEdit;
    btnTeachSub: TButton;
    dbgTeachTeach: TDBGrid;
    dbgTeachStu: TDBGrid;
    lblTeach: TLabel;
    lblStu: TLabel;
    tbsResults: TTabSheet;
    rgpTeachInfo: TRadioGroup;
    bntTeachUpd: TButton;
    rgpTeachStuTable: TRadioGroup;
    btnTeachStuUp: TButton;
    pnlAdminArea: TPanel;
    dgbAdminStu: TDBGrid;
    dgbAdminTeach: TDBGrid;
    lblAdminStu: TLabel;
    lblAdminTeach: TLabel;
    rgpAdmTeach: TRadioGroup;
    btnAdmTeach: TButton;
    btnAdmStu: TButton;
    rgpAdmStu: TRadioGroup;
    pnlAdjudicator: TPanel;
    lblAdjudiTable: TLabel;
    ledAdjNum: TLabeledEdit;
    btnAdjSub: TButton;
    dbgAdjudictor: TDBGrid;
    lblAdnRnd1: TLabeledEdit;
    lblAdjRnd2: TLabeledEdit;
    lblAdjRnd3: TLabeledEdit;
    lblAdjRnd4: TLabeledEdit;
    btnAdjSubRnd1: TButton;
    btnAdjSubRnd4: TButton;
    btnAdjSubRnd3: TButton;
    btnAdjSubRnd2: TButton;
    pnlResults: TPanel;
    redResults: TRichEdit;
    btnGenRes: TButton;
    btnTeachImp: TButton;
    btnTeachRemove: TButton;
    btnAdmRemove: TButton;
    btnResetAd: TBitBtn;
    btnResetT: TBitBtn;
    btnResetR: TBitBtn;
    btnResetAdj: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnSubmitClick(Sender: TObject);
    procedure ResetB;
    procedure btnResetTClick(Sender: TObject);
    procedure btnResetAdClick(Sender: TObject);
    procedure btnResetAdjClick(Sender: TObject);
    procedure btnResetRClick(Sender: TObject);
    procedure btnTeachSubClick(Sender: TObject);
    procedure btnTeachImpClick(Sender: TObject);
    procedure btnTeachRemoveClick(Sender: TObject);
    procedure bntTeachUpdClick(Sender: TObject);
    procedure btnTeachStuUpClick(Sender: TObject);
    procedure btnAdmStuClick(Sender: TObject);
    procedure btnAdmRemoveClick(Sender: TObject);
    procedure btnAdmTeachClick(Sender: TObject);
    procedure btnAdjSubClick(Sender: TObject);
    procedure btnAdjSubRnd1Click(Sender: TObject);
    procedure btnAdjSubRnd2Click(Sender: TObject);
    procedure btnAdjSubRnd3Click(Sender: TObject);
    procedure btnAdjSubRnd4Click(Sender: TObject);
    procedure btnGenResClick(Sender: TObject);
  private
    { Private declarations }
    bTNum, bStuNum : Boolean;
  public
    { Public declarations }
  end;

var
  dbgTeach: TdbgTeach;

implementation

{$R *.dfm}

procedure TdbgTeach.bntTeachUpdClick(Sender: TObject);
begin
  if bTNum then
    begin
      dbPAT.tblTeach.Edit;
      case rgpTeachInfo.ItemIndex of
        -1: ShowMessage('Please select an option.');
        0: dbPAT.tblTeach['TName'] := InputBox('Edit Info', 'Enter new name:', '');
        1: dbPAT.tblTeach['TPhone_Num'] := InputBox('Edit Info', 'Enter new phone number:', '');
        2: dbPAT.tblTeach['TEmail'] := InputBox('Edit Info', 'Enter new email address:', '');
       end;
      dbPAT.tblTeach.Post;
    end
    else
      ShowMessage('Please enter teacher number.');
end;

procedure TdbgTeach.btnAdjSubClick(Sender: TObject);
var
  iNum : Integer;
begin
  try
    iNum := StrToInt(ledAdjNum.Text);
  except
    begin
      ShowMessage('Please enter a valid number.');
      Exit;
    end;
  end;

  with dbPAT do
  begin
    tblComp.Filter := 'StuNum = ' + QuotedStr(IntToStr(iNum));
    tblComp.Filtered := True;
  end;

  bStuNum := True;
end;

procedure TdbgTeach.btnAdjSubRnd1Click(Sender: TObject);
var
  iRes : Byte;
begin
  if bStuNum then
  begin
    iRes := StrToInt(lblAdnRnd1.Text);

    case iRes of
      0:  dbpat.tblComp['rnd1'] := False;
      1:  dbpat.tblComp['rnd1'] := True;
    end;
  end;
end;

procedure TdbgTeach.btnAdjSubRnd2Click(Sender: TObject);
var
  iRes : Byte;
begin
  iRes := StrToInt(lblAdnRnd1.Text);

    case iRes of
      0:  dbpat.tblComp['rnd2'] := False;
      1:  dbpat.tblComp['rnd2'] := True;
    end;

end;

procedure TdbgTeach.btnAdjSubRnd3Click(Sender: TObject);
var
  iRes : Byte;
begin
  iRes := StrToInt(lblAdnRnd1.Text);

    case iRes of
      0:  dbpat.tblComp['rnd3'] := False;
      1:  dbpat.tblComp['rnd3'] := True;
    end;

end;

procedure TdbgTeach.btnAdjSubRnd4Click(Sender: TObject);
var
  iRes : Byte;
begin
  iRes := StrToInt(lblAdnRnd1.Text);

  case iRes of
    0:  dbpat.tblComp['rnd4'] := False;
    1:  dbpat.tblComp['rnd4'] := True;
  end;

end;

procedure TdbgTeach.btnAdmRemoveClick(Sender: TObject);
begin
  dbPAT.tblStu.Delete;
end;

procedure TdbgTeach.btnAdmStuClick(Sender: TObject);
begin
  dbPAT.tblStu.Edit;
    case rgpAdmStu.ItemIndex of
      -1: ShowMessage('Please select an option.');
      0: dbPAT.tblStu['StuName'] := InputBox('Student Info','Enter new name:', '');
      1: dbPAT.tblStu['StuPName'] := InputBox('Student Info','Enter new phone number:', '');
      2: dbPAT.tblStu['StuPieceName'] := InputBox('Student Info','Enter new piece name:', '');
      3: dbPAT.tblStu['StuEmName'] := InputBox('Student Info','Enter new email address:', '');
    end;
end;

procedure TdbgTeach.btnAdmTeachClick(Sender: TObject);
begin
  dbPAT.tblTeach.Edit;
  case rgpAdmTeach.ItemIndex of
    -1: ShowMessage('Please select an option.');
    0: dbPAT.tblTeach['TName'] := InputBox('Edit Info', 'Enter new name:', '');
    1: dbPAT.tblTeach['TPhone_Num'] := InputBox('Edit Info', 'Enter new phone number:', '');
    2: dbPAT.tblTeach['TEmail'] := InputBox('Edit Info', 'Enter new email address:', '');
  end;
  dbPAT.tblTeach.Post;
end;

procedure TdbgTeach.btnGenResClick(Sender: TObject);
var
  arrWinners: Array[1..10] of Integer;
  arrNames: Array[1..10] of String;
  iCount, I, J : Integer;
  tFile : TextFile;
begin
  dbPAT.tblComp.First;
  redResults.Clear;
  iCount := 1;
  AssignFile(tFile, 'Export.txt');

  while NOT dbpat.tblComp.Eof do
  begin
    if dbpat.tblComp['rnd4'] = True then
      begin
        arrWinners[iCount] := dbPAT.tblComp['StuNum'];
        Inc(iCount);
      end;
    dbpat.tblComp.Next;
  end;

  dbPAT.tblStu.First;
  Rewrite(tFile);
  for J := 1 to iCount do
  begin
    if dbPAT.tblStu.Locate('StuNum', arrWinners[J], [loCaseInsensitive]) then
    begin
      arrNames[J] := dbPAT.tblStu['StuName'];
      Writeln(tFile,  IntToStr(dbpat.tblStu['TNum'])+ '#' +dbpat.tblStu['StuName']+ '#' +dbpat.tblStu['StuPNum']+ '#' +dbpat.tblStu['StuPieceName']+ '#' +dbpat.tblStu['StuEmName']);
    end;
  end;

  CloseFile(tFile);

  redResults.Lines.Add('COMPETITION RESULTS' + #13 + 'The winners are:' + #13);
  for I := 1 to iCount do
    begin
      redResults.Lines.Add(arrNames[I]);
    end;

end;

procedure TdbgTeach.btnResetAdClick(Sender: TObject);
begin
  ResetB;
end;

procedure TdbgTeach.btnResetAdjClick(Sender: TObject);
begin
  ResetB;
end;

procedure TdbgTeach.btnResetRClick(Sender: TObject);
begin
  ResetB;
end;

procedure TdbgTeach.btnResetTClick(Sender: TObject);
begin
  ResetB;
end;

procedure TdbgTeach.btnSubmitClick(Sender: TObject);
begin
  case cmbUser.ItemIndex of
    -1: ShowMessage('Please select a valid option.');
    0:
      begin
        tbsTeacher.TabVisible := True;
        tbsWelcome.TabVisible := False;
      end;
    1:
      begin
        tbsAdministrator.TabVisible := True;
        tbsWelcome.TabVisible := False;
      end;
    2:
      begin
        tbsAdjudicator.TabVisible := True;
        tbsWelcome.TabVisible := False;
      end;
    3:
      begin
        tbsResults.TabVisible := True;
        tbsWelcome.TabVisible := False;
      end;
  end;
end;

procedure TdbgTeach.btnTeachImpClick(Sender: TObject);
var
  sPath, sLine : String;
  tFile : TextFile;
  iNo, iPos : Integer;

begin
  sPath := InputBox('Import students', 'Enter the path of the text file:', '');
  sLine := '';

  if NOT (FileExists(sPath)) then
  begin
    ShowMessage('File does not exist');
    Exit;
  end;

  AssignFile(tFile, sPath);

  with dbPAT do
  begin
    tblStu.Filtered := False;
    tblStu.Last;
    tblStu.Insert;
  end;

  Reset(tFile);

  while NOT Eof(tFile) do
  begin
    Readln(tFile, sLine);

    iPos := Pos('#', sLine);
    dbPAT.tblStu['TNum'] := StrToInt(Copy(sLine, 1, iPos-1));
    Delete(sLine, 1, iPos);

    iPos := Pos('#', sLine);
    dbPAT.tblStu['StuName'] := Copy(sLine, 1, iPos-1);
    Delete(sLine, 1, iPos);

    iPos := Pos('#', sLine);
    dbPAT.tblStu['StuPNum'] := Copy(sLine, 1, iPos-1);
    Delete(sLine, 1, iPos);

    iPos := Pos('#', sLine);
    dbPAT.tblStu['StuPieceName'] := Copy(sLine, 1, iPos-1);
    Delete(sLine, 1, iPos);

    dbPAT.tblStu['StuEmName'] := Copy(sLine, 1);
  end;

  CloseFile(tFile);
  dbPAT.tblStu.Post;
end;

procedure TdbgTeach.btnTeachRemoveClick(Sender: TObject);
begin
  dbPAT.tblStu.Delete;
end;

procedure TdbgTeach.btnTeachStuUpClick(Sender: TObject);
begin
  if bTNum then
  begin
    dbPAT.tblStu.Edit;
    case rgpTeachStuTable.ItemIndex of
      -1: ShowMessage('Please select an option.');
      0: dbPAT.tblStu['StuName'] := InputBox('Student Info','Enter new name:', '');
      1: dbPAT.tblStu['StuPName'] := InputBox('Student Info','Enter new phone number:', '');
      2: dbPAT.tblStu['StuPieceName'] := InputBox('Student Info','Enter new piece name:', '');
      3: dbPAT.tblStu['StuEmName'] := InputBox('Student Info','Enter new email address:', '');
    end;
  end
  else
    ShowMessage('Please enter teacher number.');

  dbPAT.tblStu.Post;
end;

procedure TdbgTeach.btnTeachSubClick(Sender: TObject);
var
  cEnt : Char;
begin
  cEnt := ledTeacher.Text[1];

  if NOT (cEnt IN ['0'..'9']) then
    begin
      ShowMessage('Please enter a valid number.');
      Exit;
    end;

  with dbPAT do
  begin
    tblTeach.Filtered := True;
    tblTeach.Filter := 'TNum= ' + cEnt;
    tblStu.Filtered := True;
    tblStu.Filter := 'TNum =' + cEnt;
  end;
  bTNum := True;
end;

procedure TdbgTeach.FormCreate(Sender: TObject);
begin
  tbsTeacher.TabVisible := False;
  tbsAdministrator.TabVisible := False;
  tbsAdjudicator.TabVisible := False;
  tbsResults.TabVisible := False;
  bTNum := False;
  bStuNum := False;
end;

procedure TdbgTeach.ResetB;
begin
  tbsTeacher.TabVisible := False;
  tbsAdministrator.TabVisible := False;
  tbsAdjudicator.TabVisible := False;
  tbsResults.TabVisible := False;
  tbsWelcome.TabVisible := True;

end;

end.
