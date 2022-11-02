program UnitTests;

{$mode Delphi}

uses
  // Standard units.
  ConsoleTestRunner, TestRegistry,
  // OpenSoldat test units.
  VectorTest;

var
  App: TTestRunner;
begin
  // Register tests.
  RegisterTest(TVectorTest);

  // Run Tests.
  App := TTestRunner.Create(Nil);
  App.Initialize();
  App.Title := 'OpenSoldat unit tests';
  App.Run();
  App.Free();
end.
