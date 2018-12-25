program MediaResposta;

uses
  Vcl.Forms,
  fResposta in 'fResposta.pas' {frmResposta},
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  uTroco in 'uTroco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmResposta, frmResposta);
  Application.Run;
end.
