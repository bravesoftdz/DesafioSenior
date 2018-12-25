unit uSubstitui;

interface

uses
  uISubstitui, Classes, Sysutils;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  I, vIndex: integer;
  vIControle, vTamanho: integer;
  vPedaco, vResultado: string;
  vListaResultado: TStringList;
begin
  vIControle := 1;
  vPedaco := '';
  vResultado := '';
  I := 1;
  vListaResultado := TStringList.Create;
  while I <= Length(aStr) do
    begin
      if (vPedaco = '') then
        vPedaco := aStr[I]
      else
        vPedaco := vPedaco + aStr[I];
      if (Length(vPedaco) = Length(aVelho)) then
      begin
        if (vPedaco = aVelho) then
        begin
          vListaResultado.Add(inttostr(I-Length(vPedaco)+1)+'='+vPedaco);
        end;
        vPedaco := '';
        I := vIControle;
        inc(vIControle);
      end;
      inc(I);
    end;
  vTamanho := Length(aStr);
  I := 1;
  while I <= vTamanho do
    begin
      vIndex := vListaResultado.IndexOfName(inttostr(I));
      if (vIndex = -1) then
      begin
        if (vResultado = '') then
          vResultado := aStr[I]
        else
          vResultado := vResultado + aStr[I];
        inc(I);
      end
      else
      begin
        vResultado := vResultado + aNovo;
        I := (I + Length(aVelho));
        vTamanho := (vTamanho + Length(aNovo)) - Length(aVelho);
      end;
    end;
  result := vResultado;
end;
  
end.

