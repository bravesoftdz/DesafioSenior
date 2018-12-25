program QS6;

uses
  Vcl.Forms,
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas',
  fTexto in 'fTexto.pas' {frmTexto};

{$R *.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTexto, frmTexto);
  Application.Run;
end.

