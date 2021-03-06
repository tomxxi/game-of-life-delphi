program GameOfLife;

uses
  Forms,
  {$IF CompilerVersion >= 17.0}
  Themes,
  Styles,
  {$IFEND }
  GOL_MainForm in 'GOL_MainForm.pas' {MainForm},
  GOL_GameOfLife in 'GOL_GameOfLife.pas',
  GOL_SettingsForm in 'GOL_SettingsForm.pas' {Form1},
  GOL_ExampleStructures in 'GOL_ExampleStructures.pas';

{$R *.res}

begin
  Application.Initialize;
  {$IF CompilerVersion >= 17.0}
    Application.UseMetropolisUI;
    Application.MainFormOnTaskbar := True;
    TStyleManager.TrySetStyle('Metropolis UI Dark');
  {$IFEND}
  Application.Title := 'Game of Life';
  Application.CreateForm(TGOLMainForm, MainForm);
  Application.Run;
end.
