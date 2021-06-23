program HTTP4D;

uses
  Vcl.Forms,
  Main in 'src\view\Main.pas' {Form1},
  HTTP4D.Contracts in 'src\lib\HTTP4D.Contracts.pas',
  HTTP4D.Win.Events in 'src\lib\HTTP4D.Win.Events.pas',
  HTTP4D.Win.Request in 'src\lib\HTTP4D.Win.Request.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
