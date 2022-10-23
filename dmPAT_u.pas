unit dmPAT_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmPAT = class(TDataModule)
    conPAT: TADOConnection;
    tblStu: TADOTable;
    tblTeach: TADOTable;
    tblComp: TADOTable;
    dscStu: TDataSource;
    dscTeach: TDataSource;
    dscComp: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPAT: TdmPAT;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
