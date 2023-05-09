unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, scControls,
  scGPControls, Vcl.Imaging.jpeg;

type
  TForm3 = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit4;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
ProgressBar1.position :=  progressBar1.position +2 ;
if  ( ProgressBar1.position = 100 ) then

begin

  timer1.Enabled := false ;

  form3.Destroy ;

  form4.show;

end;
end;
end.

