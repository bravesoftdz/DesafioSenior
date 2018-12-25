unit fResposta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Math;

type
  TfrmResposta = class(TForm)
    lbTroco: TLabel;
    memoResutado: TMemo;
    btnProcessar: TButton;
    txtTroco: TMaskEdit;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
    mValor: double;
    function VerificaValor(ValorCedula: double): integer;
  public
    { Public declarations }
  end;

var
  frmResposta: TfrmResposta;

implementation

uses uTroco;

{$R *.dfm}

procedure TfrmResposta.btnProcessarClick(Sender: TObject);
var
  I, vQuant: integer;
  vValor: double;
  vListaValores: TStringList;
  vTipo: string;
begin
  mValor := strtofloat(txtTroco.EditText);
  mValor := RoundTo(mValor, -2);
  vListaValores := TStringList.Create;
  for I := 0 to length(cValorCedula) - 1 do
  begin
    vQuant := VerificaValor(CValorCedula[TCedula(I)]);
    vListaValores.Add(inttostr(vQuant));
  end;
  memoResutado.Lines.Clear;
  for I := 0 to vListaValores.Count - 1 do
    begin
      vQuant := strtoint(vListaValores[I]);
      vValor := CValorCedula[TCedula(I)];
      vTipo := ' nota(s) de ';
      if (vValor < 2) then
        vTipo := ' moeda(s) de ';
      if (vQuant > 0) then
        memoResutado.Lines.Add(inttostr(vQuant)+ vTipo + floattostr(vValor));
    end;

end;

function TfrmResposta.VerificaValor(ValorCedula: double): integer;
var
  vValorCedula: double;
  vQuant: integer;
begin
  vQuant := 0;
  vValorCedula := ValorCedula;
  while (mValor >= vValorCedula) do
  begin
    inc(vQuant);
    vValorCedula := ValorCedula * (vQuant+1);
  end;
  mValor := mValor - (ValorCedula * vQuant);
  mValor := RoundTo(mValor, -2);
  Result := vQuant;
end;

end.
