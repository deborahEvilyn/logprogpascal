unit exrcicio30;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bcalcular: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure BcalcularClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BcalcularClick(Sender: TObject);
var
  nsal : double;
  sal : double;
begin
  sal := StrToFloat(Edit1.Text);
  if sal<500
     then nsal :=sal*1.15
     else
       if sal<=1000
          then nsal:=sal*1.10
          else nsal:=sal*1.05;
  memo1.Lines.Add ('Novo Salário (R$): ' + FloatToStr(nsal));

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text:= ''; Memo1.Text:= '';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close;
end;

end.

