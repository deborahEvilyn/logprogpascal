unit exercicio6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bdigitar: TButton;
    Button2: TButton;
    Button3: TButton;
    EnumNotas: TEdit;
    Emedia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BdigitarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BdigitarClick(Sender: TObject);
const
  sentinela=-1;
var
  s_nota : string;
  nnotas, nota, soma, media : double;
begin
  nnotas :=0;
  soma :=0;
  //ler a primeira nota
  s_nota:=InputBox('Digite a nota ou -1 para terminar.','NOTA','');
    nota:=StrToFloat(s_nota);
  if nota <> sentinela
   then
    begin
      while nota <> SENTINELA do
       begin
         nnotas:=nnotas+1;
         soma:=soma+nota;
         //ler as seguintes notas
         s_nota:=InputBox('Digite a nota ou -1 para terminar.','NOTA','');
           nota:=StrToFloat(s_nota);
       end;
       media:=soma/nnotas;
       EnumNotas.Text:=(FloatToStr(nnotas));
       Emedia.Text:=(FloatToStr(media));
    end
  else close; //se a primeira nota digitada for  -1 ==> o programa é fechado

end;

end.

