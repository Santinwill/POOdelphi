unit UnitGetSetDiferente;

interface

uses
  Dialogs;

type
  TGetSetD = class
    private
    FUm: String;
    FDois: String;

    protected

    public
      property strUm: String read FUm write FUm;
      property strDois: String read FDois write FDois;

      constructor Create;
      destructor Destroy; Override;
    published
  end;

implementation

{ TGetSetD }

constructor TGetSetD.Create;
begin
  inherited Create;
end;

destructor TGetSetD.Destroy;
begin

  inherited;
end;

end.
