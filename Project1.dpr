program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Classes in 'Classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
