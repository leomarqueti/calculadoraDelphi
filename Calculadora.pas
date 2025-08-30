unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    btSomar: TButton;
    btSubtrair: TButton;
    btMultiplicar: TButton;
    btDividir: TButton;
    txtResultado: TEdit;
    Button1: TButton;
    btResultado: TButton;
    bt2: TButton;
    bt3: TButton;
    bt4: TButton;
    bt5: TButton;
    bt6: TButton;
    bt7: TButton;
    bt8: TButton;
    bt9: TButton;
    apagar: TButton;
    bt0: TButton;
    procedure btSomarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btResultadoClick(Sender: TObject);
    procedure bt6Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure bt5Click(Sender: TObject);
    procedure bt7Click(Sender: TObject);
    procedure bt8Click(Sender: TObject);
    procedure bt9Click(Sender: TObject);
    procedure apagarClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btDividirClick(Sender: TObject);
    procedure bt0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  numero, numeroGuardado, soma: Integer;
  operadorEscolhido, numeroConcatenado: String;

implementation

{$R *.dfm}



function Calcular: Integer;
begin
   if operadorEscolhido = '+' then
    Result := numeroGuardado + numero
  else if operadorEscolhido = '-' then
    Result := numeroGuardado - numero
  else if operadorEscolhido = '*' then
    Result := numeroGuardado * numero
  else if operadorEscolhido = '/' then
  begin
    if numero = 0 then raise Exception.Create('Divisão por zero');
    Result := numeroGuardado div numero;
  end
  else
    Result := numero;
end;

//botao 6
procedure TForm1.bt6Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '6';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;

//botao 7
procedure TForm1.bt7Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '7';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;

// botao 8
procedure TForm1.bt8Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '8';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;

//botao 9
procedure TForm1.bt9Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '9';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;

//botao dividir
procedure TForm1.btDividirClick(Sender: TObject);
begin
  operadorEscolhido := '/';
  numeroGuardado := numero;
  numero := 0;
end;


//botao multiplicar
procedure TForm1.btMultiplicarClick(Sender: TObject);
begin
  operadorEscolhido := '*';
  numeroGuardado := numero;
  numero := 0;
end;


// botao apagar
procedure TForm1.apagarClick(Sender: TObject);
begin
  numero := 0;
  operadorEscolhido := '';
  txtResultado.Text := IntToStr(numero);
end;


//botao 0
procedure TForm1.bt0Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '0';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;

//botao 2
procedure TForm1.bt2Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '2';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;


//botao 3
procedure TForm1.bt3Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '3';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;

//botao 4
procedure TForm1.bt4Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '4';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;

//botao 5
procedure TForm1.bt5Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '5';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;


// resultado
procedure TForm1.btResultadoClick(Sender: TObject);
begin
  numero := Calcular;
  if operadorEscolhido = '+' then
    txtResultado.Text := IntToStr(numero)
  else if operadorEscolhido = '-' then
    txtResultado.Text := IntToStr(numero)
  else if operadorEscolhido = '*' then
    txtResultado.Text := IntToStr(numero)
  else if operadorEscolhido = '/' then
    txtResultado.Text := IntToStr(numero);
end;


//batao de somar
procedure TForm1.btSomarClick(Sender: TObject);
begin
  operadorEscolhido := '+';
  numeroGuardado := numero;
  numero := 0;
end;


//botao subtrair
procedure TForm1.btSubtrairClick(Sender: TObject);
begin
  operadorEscolhido := '-';
  numeroGuardado := numero;
  numero := 0;
end;



//botao 1
procedure TForm1.Button1Click(Sender: TObject);
begin
  numeroConcatenado := IntToStr(numero);
  numeroConcatenado := numeroConcatenado + '1';
  txtResultado.Text := numeroConcatenado;
  numero := StrToInt(numeroConcatenado);
end;

end.













