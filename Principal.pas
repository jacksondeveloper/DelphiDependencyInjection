unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Nota: iNota;
  NotaItens: iNotaItens;
begin
  Nota := TNota.create;
  NotaItens := TNotaItens.Create(Nota);

  ShowMessage(NotaItens.RetornaNumero.ToString);
end;

end.
