program PAT_p;

uses
  Vcl.Forms,
  PAT_u in 'PAT_u.pas' {dbgTeach},
  dbModule in 'dbModule.pas' {dbPAT: TDataModule},
  dmPAT_u in 'dmPAT_u.pas' {dmPAT: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdbgTeach, dbgTeach);
  Application.CreateForm(TdbPAT, dbPAT);
  Application.CreateForm(TdmPAT, dmPAT);
  Application.Run;
end.
