program GameOfLife;

uses
  Forms,
  {$IF CompilerVersion >= 17.0}
    Themes,
    Styles,
  {$IFEND}
  GOL_MainForm in 'GOL_MainForm.pas' {MainForm},
  GOL_GameOfLife in 'GOL_GameOfLife.pas';

{$R *.res}

begin
  Application.Initialize;
  {$IF CompilerVersion >= 17.0}
    Application.UseMetropolisUI;
    Application.MainFormOnTaskbar := True;
    TStyleManager.TrySetStyle('Metropolis UI Dark');
  {$IFEND}
  Application.Title := 'Game of life';
  Application.CreateForm(TGOLMainForm, MainForm);
  Application.Run;
end.
