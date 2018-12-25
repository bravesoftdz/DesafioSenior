unit uComponente;

interface

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class
  private
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FComponentes: TComponenteArray;
  public
    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;
  end;

implementation

procedure TComponente.AdicionaComponente(aComponente: TComponente);
begin    
end;

procedure TComponente.RemoveComponente(aComponente: TComponente);
begin    
end;
  
end.

