unit uIMaquina;

interface

uses
  System.Classes;

type

  IMaquina = interface
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

end.

