unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Visor: TEdit;
    Um: TSpeedButton;
    Dois: TSpeedButton;
    Três: TSpeedButton;
    Mais: TSpeedButton;
    Quatro: TSpeedButton;
    Cinco: TSpeedButton;
    Seis: TSpeedButton;
    Menos: TSpeedButton;
    Virgula: TSpeedButton;
    Sete: TSpeedButton;
    Oito: TSpeedButton;
    Nove: TSpeedButton;
    Dividir: TSpeedButton;
    Igual: TSpeedButton;
    Multiplicar: TSpeedButton;
    Zero: TSpeedButton;
    Limpar: TSpeedButton;
    procedure NumClick(Sender: TObject);
    procedure OperadoresClick(Sender: TObject);
    procedure VirgulaClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  valor1: real;
  valor2: real;
  funcao: integer;

implementation

{$R *.dfm}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_NUMPAD1 then
    Um.Click;
  if Key = VK_NUMPAD2 then
    Dois.Click;
  if Key = VK_NUMPAD3 then
    Três.Click;
  if Key = VK_NUMPAD4 then
    Quatro.Click;
  if Key = VK_NUMPAD5 then
    Cinco.Click;
  if Key = VK_NUMPAD6 then
    Seis.Click;
  if Key = VK_NUMPAD7 then
    Sete.Click;
  if Key = VK_NUMPAD8 then
    Oito.Click;
  if Key = VK_NUMPAD9 then
    Nove.Click;
  if Key = VK_NUMPAD0 then
    Zero.Click;
  if Key = VK_ADD then
    Mais.Click;
  if Key = VK_SUBTRACT then
    Menos.Click;
  if Key = VK_MULTIPLY then
    Multiplicar.Click;
  if Key = VK_DIVIDE then
    Dividir.Click;
  if Key = VK_RETURN then
    Igual.Click;
  if Key = VK_DECIMAL then
    Virgula.Click;
  if Key = VK_ESCAPE then
    Limpar.Click;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  valor1 := 0;
  valor2 := 0;
end;

procedure TForm1.IgualClick(Sender: TObject);
var
  Result: real;
begin
  if Visor.Text <> '' then
  begin
    valor2 := StrToFloat(Visor.Text);
    case (funcao) of
      1:
        begin
          Result := valor1 + valor2;
          Visor.Text := FloatToStr(Result);
        end;
      2:
        begin
          Result := valor1 - valor2;
          Visor.Text := FloatToStr(Result);
        end;
      3:
        begin
          Result := valor1 * valor2;
          Visor.Text := FloatToStr(Result);
        end;
      4:
        begin
          if (valor2 <> 0) then
          begin
            Result := valor1 / valor2;
            Visor.Text := FloatToStr(Result);
          end
          else
          begin
            ShowMessage('ERRO - DIVISÃO POR ZERO');
            Visor.Text := '';
          end
        end
    end;
  end;
end;

procedure TForm1.LimparClick(Sender: TObject);
begin
  Visor.Text := '';
end;

procedure TForm1.OperadoresClick(Sender: TObject);
begin
  if Visor.Text <> '' then
    valor1 := StrToFloat(Visor.Text);
  Visor.Text := '';
  funcao := TSpeedButton(Sender).tag;
end;

procedure TForm1.NumClick(Sender: TObject);
begin
  Visor.Text := Visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.VirgulaClick(Sender: TObject);
begin
  if (Visor.Text <> '') and (Pos(',', Visor.Text) = 0) then
    Visor.Text := Visor.Text + ',';
end;

end.
