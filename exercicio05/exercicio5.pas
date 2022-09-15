unit exercicio5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BCalcular: TButton;
    BLimpar: TButton;
    BSair: TButton;
    EPeso: TEdit;
    EAltura: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MResultado: TMemo;
    RgSexo: TRadioGroup;
    procedure BCalcularClick(Sender: TObject);
    procedure BLimparClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure RgSexoClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RgSexoClick(Sender: TObject);
begin

end;

procedure TForm1.BCalcularClick(Sender: TObject);
var
  peso,alt,imc : double;
begin
  peso:= StrToFloat(EPeso.Text);
  alt:= StrToFloat(EAltura.Text);
  imc:= peso/sqr(alt);
  if RgSexo.ItemIndex = 0 //sexo feminino
  then
      if imc<19.1
      then MResultado.Lines.Add('Abaixo do Peso')
      else
        if imc<25.8
         then MResultado.Lines.Add('Peso Normal')
           else
            if imc<27.3
             then MResultado.Lines.Add('Marginalmente Acima do Peso')
              else
               if imc<31.1
                then MResultado.Lines.Add('Acima do Peso Ideal')
                 else MResultado.Lines.Add('Obeso!')
  else        //sexo masculino
      if imc<20.7
      then MResultado.Lines.Add('Abaixo do Peso')
      else
        if imc<26.4
          then MResultado.Lines.Add('Peso Normal')
           else
             if imc<27.8
              then MResultado.Lines.Add('Marginalmente Acima do Peso')
                else
                  if imc<32.3
                    then MResultado.Lines.Add('Acima do Peso Ideal')
                     else MResultado.Lines.Add('Obeso!')

end;

procedure TForm1.BLimparClick(Sender: TObject);
begin
  EPeso.Text:='';
  EAltura.Text:='';
  MResultado.Lines.Clear;
end;

procedure TForm1.BSairClick(Sender: TObject);
begin
  close
end;

end.

