unit UnitPolimorfismo;

interface

uses
  Vcl.Dialogs;

type

  TAnimal = class
    private

    protected

    public
      function locomover: string; virtual;
      constructor Create;
      destructor Destroy; Override;
    published
  end;

  THomem = class(TAnimal)
    private

    protected

    public
      function locomover: string; override;
      constructor Create;
      destructor Destroy; Override;
    published
  end;

    TPassaro = class(TAnimal)
    private

    protected

    public
      function locomover: string; override;
      constructor Create;
      destructor Destroy; Override;
    published
  end;

    TPeixe = class(TAnimal)
    private

    protected

    public
      function locomover: string; override;
      constructor Create;
      destructor Destroy; Override;
    published
  end;

implementation

{ TAnimal }


constructor TAnimal.Create;
begin
  inherited Create;
end;

destructor TAnimal.Destroy;
begin

  inherited;
end;

function TAnimal.locomover: string;
begin
   Result := 'meio indefinido';
end;

{ THomem }

constructor THomem.Create;
begin
  inherited Create;
end;

destructor THomem.Destroy;
begin

  inherited;
end;

function THomem.locomover: string;
begin
  Result := 'meio terrestre';
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  inherited Create;
end;

destructor TPassaro.Destroy;
begin

  inherited;
end;

function TPassaro.locomover: string;
begin
  Result := 'meio aereo';
end;

{ TPeixe }

constructor TPeixe.Create;
begin
  inherited Create;
end;

destructor TPeixe.Destroy;
begin

  inherited;
end;

function TPeixe.locomover: string;
begin
  Result := 'meio aquatico';
end;

end.
