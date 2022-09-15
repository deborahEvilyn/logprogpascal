unit exercicio010;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    rgTipo: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  tg: integer;
  Q, Qa, hg, Pg, Pgm, Ds, Area, Pot, rv: double;
  a, b: array [0..3] of double;
begin
  //inicializar vetor
  a[0]:=0.772;
  a[1]:=0.583;
  a[2]:=0.333;
  a[3]:=0.825;

  b[0]:=0.197;
  b[1]:=0.512;
  b[2]:=0.302;
  b[3]:=0.164;

  //Entrada de Dados
  Q:= StrTOFloat(Edit1.Text);
  hg:= StrTOFloat(Edit2.Text);
  Ds:= StrTOFloat(Edit3.Text);
  rv:= StrTOFloat(Edit4.Text);
  tg:= rgTipo.ItemIndex;

  //processamento

  Area := pi * sqr (Ds) / 4 * hg;
  Qa := Q/Area;

  Pgm := (sqr(Qa) * a [tg]) / (ln(1+b[tg]*Qa));
  Pg := Pgm * hg;

  Pot :=(Q * 1.2*Pg) / rv;
  Edit5.Text := FloatToStr (Pot);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

end.

