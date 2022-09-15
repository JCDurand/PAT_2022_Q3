unit PAT_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, dbModule, Vcl.Samples.Spin;

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
    SpinEdit4: TSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbgTeach: TdbgTeach;

implementation

{$R *.dfm}

end.
