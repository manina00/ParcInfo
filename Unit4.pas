unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, scControls, scGPControls,
  Vcl.Imaging.jpeg;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit3, Unit1;

procedure TForm4.Button1Click(Sender: TObject);
var droit : string;
begin
adoquery1.Active:=false;
adoquery1.SQL.Clear;
adoquery1.SQL.Add(('select* from [login] where (Nom_Utilisateur =:var1) and (Mot_De_Passe =:var2)'));
adoquery1.Parameters.ParamByName('var1').Value:=edit1.Text;
adoquery1.Parameters.ParamByName('var2').Value:=edit2.Text;
adoquery1.Active:=true;
if adoquery1.IsEmpty then
showmessage('le nom utilisateur ou mot de passe incorecte verifier bien vos cordonnez')
else
begin
form4.hide;
form1.show;
end;

begin
if not DataSource1.DataSet.IsEmpty then
      begin
        droit := DataSource1.DataSet.Fieldbyname('droit').AsString;
        if AnsiPos('5', droit) <> 0 then
        begin
          form1.scGPCharGlyphButton1.Enabled := false;
          form1.scGPCharGlyphButton3.Enabled := true;
          form1.scGPCharGlyphButton4.Enabled := false;
          form1.scGPCharGlyphButton5.Enabled := false;
          form1.scGPCharGlyphButton6.Enabled := false;
          form1.scGPCharGlyphButton7.Enabled := false;
          form1.scGPCharGlyphButton8.Enabled := false;
          form1.scGPCharGlyphButton9.Enabled := true;
          form1.scGPCharGlyphButton10.Enabled := false;

        end;
if not DataSource1.DataSet.IsEmpty then
      begin
        droit := DataSource1.DataSet.Fieldbyname('droit').AsString;
        if AnsiPos('3', droit) <> 0 then
        begin
          form1.scGPCharGlyphButton1.Enabled := true;
          form1.scGPCharGlyphButton3.Enabled := true;
          form1.scGPCharGlyphButton4.Enabled := true;
          form1.scGPCharGlyphButton5.Enabled := true;
          form1.scGPCharGlyphButton6.Enabled := true;
          form1.scGPCharGlyphButton7.Enabled := true;
          form1.scGPCharGlyphButton8.Enabled := true;
          form1.scGPCharGlyphButton9.Enabled := true;
          form1.scGPCharGlyphButton10.Enabled := true;

        end;
if not DataSource1.DataSet.IsEmpty then
      begin
        droit := DataSource1.DataSet.Fieldbyname('droit').AsString;
        if AnsiPos('4', droit) <> 0 then
        begin
          form1.scGPCharGlyphButton1.Enabled := false;
          form1.scGPGlyphButton100.Enabled := true;
          form1.scGPCharGlyphButton3.Enabled := false;
          form1.scGPCharGlyphButton4.Enabled := false;
          form1.scGPCharGlyphButton5.Enabled := false;
          form1.scGPCharGlyphButton6.Enabled := false;
          form1.scGPCharGlyphButton7.Enabled := false;
          form1.scGPCharGlyphButton8.Enabled := false;
          form1.scGPCharGlyphButton9.Enabled := false;
          form1.scGPCharGlyphButton10.Enabled := false;
          form1.scGPButton15.Enabled := true;
          form1.scGPButton21.Enabled := false;
          form1.scGPButton16.Enabled := false;
          form1.scGPButton17.Enabled := false;
          form1.scGPButton18.Enabled := true;
          form1.scGPButton19.Enabled := true;
          form1.scGPButton20.Enabled := false;
          form1.scGPButton22.Enabled := false;
          form1.scGPButton23.Enabled := false;
          form1.scGPButton24.Enabled := false;
          form1.Button1.Enabled := false;

        end;
      if not DataSource1.DataSet.IsEmpty then
      begin
        droit := DataSource1.DataSet.Fieldbyname('droit').AsString;
        if AnsiPos('1', droit) <> 0 then
        begin
          form1.scGPCharGlyphButton1.Enabled := true;
          form1.scGPCharGlyphButton3.Enabled := true;
          form1.scGPCharGlyphButton4.Enabled := true;
          form1.scGPCharGlyphButton5.Enabled := true;
          form1.scGPCharGlyphButton6.Enabled := true;
          form1.scGPCharGlyphButton7.Enabled := true;
          form1.scGPCharGlyphButton8.Enabled := true;
          form1.scGPCharGlyphButton9.Enabled := true;
          form1.scGPCharGlyphButton10.Enabled := true;

        end;
        begin
      if not DataSource1.DataSet.IsEmpty then
      begin
        droit := DataSource1.DataSet.Fieldbyname('droit').AsString;
        if AnsiPos('2', droit) <> 0 then
         begin
          form1.scGPCharGlyphButton1.Enabled := false;
          form1.scGPGlyphButton100.Enabled := false;
          form1.scGPCharGlyphButton3.Enabled := false;
          form1.scGPCharGlyphButton4.Enabled := false;
          form1.scGPCharGlyphButton5.Enabled := true;
          form1.scGPCharGlyphButton6.Enabled := true;
          form1.scGPCharGlyphButton7.Enabled := true;
          form1.scGPCharGlyphButton8.Enabled := false;
          form1.scGPCharGlyphButton9.Enabled := false;
          form1.scGPCharGlyphButton10.Enabled := false;
          form1.scGPButton15.Enabled := false;
          form1.scGPButton21.Enabled := false;
          form1.scGPButton16.Enabled := false;
          form1.scGPButton17.Enabled := false;
          form1.scGPButton18.Enabled := false;
          form1.scGPButton19.Enabled := false;
          form1.scGPButton20.Enabled := false;
          form1.scGPButton22.Enabled := false;
          form1.scGPButton23.Enabled := false;
          form1.scGPButton24.Enabled := false;
          form1.Button1.Enabled := false;
          form1.Button3.Enabled := false;
          form1.Button4.Enabled := false;
          form1.Button5.Enabled := false;
          form1.Button2.Enabled := false;

        end;
      end;
      end;
    end;
end;
end;
      end;
end;
end;
procedure TForm4.Button2Click(Sender: TObject);
begin
application.Terminate;
end;
end.




