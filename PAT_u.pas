unit PAT_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, dbModule;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
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
    btnSubmitTeach: TButton;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
