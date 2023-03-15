unit Unit2;

interface

uses
  Vcl.Dialogs;

type
  TPessoa = class //baseado em Tobject
                //class(NOME DE OUTRA CLASSE) classe baseada em outra classe
    private
      FEndereco: String;
      FNome: String;
    protected
      function getEndereco: String;
      function getNome: String;
      procedure setEndereco(const Value: String);
      procedure setNome(const Value: String);
    public
//      Abstração
//      nome
//      cpf
//      endereco

      property strNome: String read getNome write setNome;
      property strEndereco: String read getEndereco write setEndereco;

      procedure andar;
      procedure correr;
      function falar : string;
      function comer : string;

      constructor Create;
      destructor Destroy; Override;
    published
  end;

  TMedico = class(TPessoa) //class(NOME DE OUTRA CLASSE) classe filha de Tpessoa (Herança)
    private
    FCRM : string;
    protected
      function getCRM: string;
      procedure setCRM(const Value: string);
    public
      function realizarConsulta : string;
      property strCRM : string read getCRM write setCRM;
      constructor Create;
      destructor Destroy; Override;
    published
  end;
implementation

{ TPessoa }

procedure TPessoa.andar;
begin
  ShowMessage('andando');
end;

function TPessoa.comer: string;
begin
  Result := 'Comendo';
end;

procedure TPessoa.correr;
begin
  ShowMessage('Correndo');
end;

constructor TPessoa.Create;
begin
 inherited Create;
end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.falar: string;
begin
  Result := 'Falando';
end;

function TPessoa.getEndereco: String;
begin
  result := FEndereco;
end;

function TPessoa.getNome: String;
begin
  result := Fnome;
end;

procedure TPessoa.setEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.setNome(const Value: String);
begin
  FNome := Value;
end;

{ TMedico }

constructor TMedico.Create;
begin
  inherited Create;
end;

destructor TMedico.Destroy;
begin

  inherited;
end;

function TMedico.getCRM: string;
begin
  Result := FCRM;
end;

function TMedico.realizarConsulta: string;
begin
  Result := 'realizando consulta';
end;

procedure TMedico.setCRM(const Value: string);
begin
  FCRM := Value;
end;

end.
