program Joytest;

uses
  Forms,
  Jtmain in 'JTMAIN.PAS' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
