unit exemplo2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtCalcular: TBitBtn;
    EdNasc: TEdit;
    EdAtual: TEdit;
    EdIdade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BtCalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BtCalcularClick(Sender: TObject);
var
  nasc : integer;
  atual : integer;
  idade : integer;
begin
     nasc := StrToInt (EdNasc.Text);
     atual := StrToInt (EdAtual.Text);
     idade := atual - nasc;
     EdIdade.Text := IntToStr (idade);
end;

end.

