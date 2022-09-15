unit exercicio3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormes1 }

  TFormes1 = class(TForm)
    Btriangulo: TButton;
    Blimpar: TButton;
    Bsair: TButton;
    EladoA: TEdit;
    EladoB: TEdit;
    EladoC: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MResultado: TMemo;
    procedure BlimparClick(Sender: TObject);
    procedure BtrianguloClick(Sender: TObject);
  private

  public

  end;

var
  Formes1: TFormes1;

implementation

{$R *.lfm}

{ TFormes1 }

procedure TFormes1.BtrianguloClick(Sender: TObject);
var
  a : double;
  b : double;
  c : double;
begin
   a := StrToFloat (EladoA.Text);
   b := StrToFloat (EladoB.Text);
   c := StrToFloat (EladoC.Text);
   if ((A<(B+C)) and (B<(A+C)) and (C<(A+B)))
    then
      if ((A=B) and (B=C))
        then MResultado.Lines.Add ('Triângulo Equilátero')
         else
           if ((A=B) or (B=C) or (C=A))
            then MResultado.Lines.Add ('Triângulo Isósceles')
            else MResultado.Lines.Add ('Triângulo Escaleno')
      else MResultado.Lines.Add ('As medidas não formam Triângulo');
end;

procedure TFormes1.BlimparClick(Sender: TObject);
begin
  EladoA.
end;

end.

