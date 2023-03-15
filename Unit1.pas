unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitPolimorfismo;

type
  TFormGetSetDiferente = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Memo2: TMemo;
    Button3: TButton;
    Memo3: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure gererLocomocao(Animal: TAnimal);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGetSetDiferente: TFormGetSetDiferente;

implementation

{$R *.dfm}

uses Unit2, UnitGetSetDiferente;

procedure TFormGetSetDiferente.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
  medico: TMedico;
begin
  pessoa := Tpessoa.Create;

  pessoa.strNome := 'will';
  pessoa.strEndereco := 'rua ibirama';
  pessoa.andar;

  pessoa.Free;

  medico := TMedico.Create;
  medico.strNome := 'medico';
  medico.strEndereco := 'centro';
  medico.strCRM := '112211';
  medico.correr;
  medico.realizarConsulta;

  medico.Free;
end;

procedure TFormGetSetDiferente.Button2Click(Sender: TObject);
begin
  memo2.lines.clear;

  gererLocomocao(TAnimal.Create);
  gererLocomocao(THomem.Create);
  gererLocomocao(TPassaro.Create);
  gererLocomocao(TPeixe.Create);

end;

procedure TFormGetSetDiferente.Button3Click(Sender: TObject);
var
  getset: TGetSetD;
begin
  getset.strUm := 'um';
  ShowMessage(getset.strUm);

  getset.Free;
end;

procedure TFormGetSetDiferente.gererLocomocao(Animal: TAnimal);
begin
  Memo2.Lines.Add(ANIMAL.locomover);
end;

end.
