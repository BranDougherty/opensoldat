unit VectorTest;

{$mode Delphi}

interface

uses
  // Standard units.
  Classes, FPCUnit, SysUtils,
  // OpenSoldat units.
  Vector;

type
  TVectorTest = class(TTestCase)
  published
    procedure VectorLength();
  end;

implementation

procedure TVectorTest.VectorLength();
var
  v: TVector2;
begin
  v.x := 3.0;
  v.y := 4.0;
  CheckEquals(Vec2Length(v), 5.0, 0.001);
end;

end.
