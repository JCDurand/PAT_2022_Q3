unit dbModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    conPAT: TADOConnection;
    tblStu: TADOTable;
    tblComp: TADOTable;
    tblTeach: TADOTable;
    dscStu: TDataSource;
    dscTeach: TDataSource;
    dscComp: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
