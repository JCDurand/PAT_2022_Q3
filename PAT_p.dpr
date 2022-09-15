program PAT_p;

uses
  Vcl.Forms,
  PAT_u in 'PAT_u.pas' {dbgTeach},
  dbModule in 'dbModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdbgTeach, dbgTeach);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
