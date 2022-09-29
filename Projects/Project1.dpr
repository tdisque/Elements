program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Elements};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TElements, Elements);
  Application.Run;
end.
