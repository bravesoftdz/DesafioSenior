unit uMaquina;

interface

uses
  uIMaquina, System.Classes;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

function TMaquina.MontarTroco(aTroco: Double): TList;
begin
  Result := nil;
end;

end.

