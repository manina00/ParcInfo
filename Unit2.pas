unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, scControls,
  scGPControls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    scGPButton1: TscGPButton;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
    DataSource1: TDataSource;
    Panel1: TPanel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;


end.
