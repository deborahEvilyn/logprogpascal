unit exercicio1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BCparaF: TButton;
    BFparaC: TButton;
    Blimpar: TButton;
    Bsair: TButton;
    EgrausC: TEdit;
    EgrausF: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BCparaFClick(Sender: TObject);
    procedure BFparaCClick(Sender: TObject);
    procedure BlimparClick(Sender: TObject);
    procedure BsairClick(Sender: TObject);
    procedure EgrausFChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BCparaFClick(Sender: TObject);
var
  f : double;
  c : double;
begin
   c:= StrToFloat(EgrausC.Text);
   f:= 1.8*C+32;
   EgrausF.Text := FloatToStr(F);
end;

procedure TForm1.BFparaCClick(Sender: TObject);
var
  f : double;
  c : double;
begin
   f:= StrToFloat(Egrausf.Text);
   c:= 5/9*(F-32);
   EgrausC.Text := FloatToStr(C);
end;

procedure TForm1.BlimparClick(Sender: TObject);
begin
  BCparaF.Text := ''; BFparaC.Text := '';
end;

procedure TForm1.BsairClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.EgrausFChange(Sender: TObject);
begin

end;

end.

