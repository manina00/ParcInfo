unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls,
  scControls, scGPControls;

type
  TForm5 = class(TForm)

    scGPButton1: TscGPButton;
    OpenDialog1: TOpenDialog;
    scGPButton2: TscGPButton;
    procedure scGPButton1Click(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.scGPButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  BEGIN

  END;
end;

procedure TForm5.scGPButton2Click(Sender: TObject);
begin
close;
end;

end.
