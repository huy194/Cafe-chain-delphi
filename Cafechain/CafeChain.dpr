program CafeChain;

uses
  Vcl.Forms,
  Login in 'Login.pas' {Form1},
  MainScreen in 'MainScreen.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
