unit fTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTexto = class(TForm)
    txtTexto: TEdit;
    memoResultado: TMemo;
    btnProcessar: TButton;
    txtDe: TEdit;
    txtPara: TEdit;
    lbTexto: TLabel;
    lbDe: TLabel;
    lbPara: TLabel;
    lbResultado: TLabel;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTexto: TfrmTexto;

implementation

uses uSubstitui;

{$R *.dfm}

procedure TfrmTexto.btnProcessarClick(Sender: TObject);
var
  vResultado: string;
  vSubst: TSubstitui;
begin
  memoResultado.Lines.Clear;
  vSubst := TSubstitui.Create;
  vResultado := vSubst.Substituir(txtTexto.Text, txtDe.Text, txtPara.Text);
  memoResultado.Lines.Add(vResultado);
end;

end.
