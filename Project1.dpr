program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FormGetSetDiferente},
  Unit2 in 'Unit2.pas',
  UnitPolimorfismo in 'UnitPolimorfismo.pas',
  UnitGetSetDiferente in 'UnitGetSetDiferente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormGetSetDiferente, FormGetSetDiferente);
  Application.Run;
end.
