unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager, Vcl.ImgList,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, System.ImageList, scDrawUtils, scGPImages,
  scGPControls, scGPExtControls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  scGPFontControls, Vcl.DBCtrls, Data.Win.ADODB, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, frxClass, frxDBSet, Vcl.ExtDlgs, frxExportBaseDialog,
  frxExportPDF, Vcl.OleCtrls;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    ImageList48: TImageList;
    scGPVirtualImageList1: TscGPVirtualImageList;
    BorderPanel: TscGPPanel;
    scSplitView1: TscSplitView;
    scButton6: TscButton;
    scButton1: TscButton;
    BackgroundPanel: TscPanel;
    ClientPanel: TscPanel;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage1: TscPageViewerPage;
    scSplitView3: TscSplitView;
    scPanel2: TscPanel;
    scLabel7: TscLabel;
    scLabel28: TscLabel;
    scLabel13: TscLabel;
    scLabel14: TscLabel;
    scButton10: TscButton;
    scSplitView2: TscSplitView;
    scPanel3: TscPanel;
    scLabel4: TscLabel;
    scScrollBox1: TscScrollBox;
    scListGroupPanel1: TscListGroupPanel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel3: TscLabel;
    scGPSwitch3: TscGPSwitch;
    scGPSwitch4: TscGPSwitch;
    scGPSwitch5: TscGPSwitch;
    scListGroupPanel3: TscListGroupPanel;
    scLabel12: TscLabel;
    scLabel17: TscLabel;
    scPasswordEdit1: TscPasswordEdit;
    scEdit2: TscEdit;
    scListGroupPanel4: TscListGroupPanel;
    scLabel18: TscLabel;
    scAdvancedComboBox1: TscAdvancedComboBox;
    scCheckBox5: TscCheckBox;
    scCheckBox6: TscCheckBox;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    CaptionLabel: TscLabel;
    MaxButton: TscGPGlyphButton;
    scGPPanel4: TscGPPanel;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scLabel11: TscLabel;
    scPageViewerPage3: TscPageViewerPage;
    scPageViewerPage4: TscPageViewerPage;
    scPageViewerPage5: TscPageViewerPage;
    scPageViewerPage6: TscPageViewerPage;
    scPageViewerPage7: TscPageViewerPage;
    scPageViewerPage8: TscPageViewerPage;
    scPageViewerPage9: TscPageViewerPage;
    scPageViewerPage10: TscPageViewerPage;
    scPageViewerPage11: TscPageViewerPage;
    scPageViewerPage12: TscPageViewerPage;
    scPageViewerPage13: TscPageViewerPage;
    scGPCharGlyphButton1: TscGPCharGlyphButton;
    scGPCharGlyphButton3: TscGPCharGlyphButton;
    scGPCharGlyphButton4: TscGPCharGlyphButton;
    scGPCharGlyphButton5: TscGPCharGlyphButton;
    scGPCharGlyphButton6: TscGPCharGlyphButton;
    scGPCharGlyphButton7: TscGPCharGlyphButton;
    scGPCharGlyphButton8: TscGPCharGlyphButton;
    scGPCharGlyphButton9: TscGPCharGlyphButton;
    scGPCharGlyphButton10: TscGPCharGlyphButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1Id_util: TAutoIncField;
    ADOTable1Nom_util: TStringField;
    ADOTable1Prénom_util: TStringField;
    ADOTable1email_util: TStringField;
    ADOTable1Telephone_util: TStringField;
    ADOTable1mobil_util: TStringField;
    ADOTable1Code_dep: TStringField;
    ADOTable1TypeUser: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    scGPButton1: TscGPButton;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPButton5: TscGPButton;
    scGPButton6: TscGPButton;
    DBGrid1: TDBGrid;
    ADOTable2: TADOTable;
    ADOTable2code_statut: TAutoIncField;
    ADOTable2libellé_statut: TStringField;
    ADOTable3: TADOTable;
    ADOTable3id_req: TAutoIncField;
    ADOTable3code_statut: TIntegerField;
    ADOTable3date_avoir: TWideStringField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    BindingsList1: TBindingsList;
    ADOTable4: TADOTable;
    ADOTable4id_req: TAutoIncField;
    ADOTable4date_req: TWideStringField;
    ADOTable4heure_req: TDateTimeField;
    ADOTable4titre_req: TStringField;
    ADOTable4description_req: TStringField;
    ADOTable4urgence_req: TStringField;
    ADOTable4id_util: TIntegerField;
    ADOTable4id_mat: TIntegerField;
    ADOTable4code_type: TIntegerField;
    Label12: TLabel;
    DataSource4: TDataSource;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    DBGrid4: TDBGrid;
    scGPButton15: TscGPButton;
    scGPButton16: TscGPButton;
    scGPButton17: TscGPButton;
    scGPButton18: TscGPButton;
    scGPButton19: TscGPButton;
    scGPButton20: TscGPButton;
    ADOTable5: TADOTable;
    ADOTable5code_type: TAutoIncField;
    ADOTable5libellé_type: TStringField;
    Label21: TLabel;
    DataSource5: TDataSource;
    Label22: TLabel;
    ADOTable6: TADOTable;
    ADOTable6Code_dep: TStringField;
    ADOTable6Designation_dep: TStringField;
    ADOTable6Code_dir: TStringField;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    DataSource6: TDataSource;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    scGPButton25: TscGPButton;
    scGPButton26: TscGPButton;
    scGPButton27: TscGPButton;
    scGPButton28: TscGPButton;
    scGPButton29: TscGPButton;
    scGPButton30: TscGPButton;
    ADOTable7: TADOTable;
    ADOTable7Code_dir: TStringField;
    ADOTable7Designation_dir: TStringField;
    Label26: TLabel;
    DBEdit24: TDBEdit;
    DataSource7: TDataSource;
    Label27: TLabel;
    DBEdit25: TDBEdit;
    ADOTable8: TADOTable;
    DBGrid8: TDBGrid;
    ADOTable8Id_Mat: TAutoIncField;
    ADOTable8Nom_mat: TStringField;
    ADOTable8Date_mat: TWideStringField;
    ADOTable8numsérie_materiel: TBCDField;
    ADOTable8modele_mat: TStringField;
    ADOTable8marque_mat: TStringField;
    ADOTable8fabricant_mat: TStringField;
    ADOTable8commentaires_mat: TStringField;
    ADOTable8caracteristique_mat: TStringField;
    ADOTable8ID_caté: TIntegerField;
    Label28: TLabel;
    DBEdit26: TDBEdit;
    DataSource8: TDataSource;
    Label29: TLabel;
    DBEdit27: TDBEdit;
    Label30: TLabel;
    DBEdit28: TDBEdit;
    Label31: TLabel;
    DBEdit29: TDBEdit;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    Label34: TLabel;
    DBEdit32: TDBEdit;
    Label35: TLabel;
    DBEdit33: TDBEdit;
    Label36: TLabel;
    DBEdit34: TDBEdit;
    DBGrid9: TDBGrid;
    ADOTable9: TADOTable;
    ADOTable9Id_caté: TAutoIncField;
    ADOTable9nom_caté: TStringField;
    Label37: TLabel;
    DBEdit35: TDBEdit;
    DataSource9: TDataSource;
    scGPButton35: TscGPButton;
    scGPButton36: TscGPButton;
    scGPButton37: TscGPButton;
    scGPButton38: TscGPButton;
    scGPButton39: TscGPButton;
    scGPButton40: TscGPButton;
    ADOTable10: TADOTable;
    DBGrid10: TDBGrid;
    ADOTable10id_info: TIntegerField;
    ADOTable10id_req: TIntegerField;
    Label38: TLabel;
    DataSource10: TDataSource;
    Label39: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    scGPButton48: TscGPButton;
    scGPButton49: TscGPButton;
    scGPLabel1: TscGPLabel;
    DBGrid11: TDBGrid;
    scGPButton51: TscGPButton;
    scGPButton52: TscGPButton;
    scGPButton53: TscGPButton;
    scGPButton54: TscGPButton;
    scGPButton55: TscGPButton;
    scGPButton56: TscGPButton;
    BindSourceDB2: TBindSourceDB;
    DBGrid12: TDBGrid;
    scGPButton60: TscGPButton;
    scGPLabel2: TscGPLabel;
    ADOTable11: TADOTable;
    ADOTable11Code_inv: TAutoIncField;
    ADOTable11Date_inv: TWideStringField;
    ADOTable11Heure_inv: TDateTimeField;
    ADOTable11Observation_inv: TStringField;
    ADOTable11nums_inv: TStringField;
    ADOTable11type_inv: TStringField;
    ADOTable11id_info: TIntegerField;
    Label40: TLabel;
    DataSource11: TDataSource;
    Label41: TLabel;
    DBEdit37: TDBEdit;
    Label42: TLabel;
    DBEdit38: TDBEdit;
    Label43: TLabel;
    DBEdit39: TDBEdit;
    Label44: TLabel;
    DBEdit40: TDBEdit;
    Label45: TLabel;
    DateTimePicker2: TDateTimePicker;
    BindSourceDB3: TBindSourceDB;
    LinkControlToField2: TLinkControlToField;
    scGPButton57: TscGPButton;
    scGPButton58: TscGPButton;
    scGPButton59: TscGPButton;
    ADOTable12: TADOTable;
    ADOTable12code_inv: TIntegerField;
    ADOTable12id_materiel: TIntegerField;
    Label46: TLabel;
    DataSource12: TDataSource;
    Label47: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label48: TLabel;
    scGPLabel3: TscGPLabel;
    ADOTable13: TADOTable;
    DBGrid13: TDBGrid;
    ADOTable13id_bc: TAutoIncField;
    ADOTable13titre_bdc: TStringField;
    ADOTable13objet_bdc: TStringField;
    ADOTable13id_info: TIntegerField;
    Label49: TLabel;
    DBEdit36: TDBEdit;
    DataSource13: TDataSource;
    Label50: TLabel;
    DBEdit42: TDBEdit;
    Label51: TLabel;
    scGPButton61: TscGPButton;
    scGPButton62: TscGPButton;
    scGPButton63: TscGPButton;
    scGPButton64: TscGPButton;
    scGPButton65: TscGPButton;
    scGPButton66: TscGPButton;
    scGPLabel4: TscGPLabel;
    ADOTable14: TADOTable;
    ADOTable14Code_inv: TIntegerField;
    ADOTable14id_info: TIntegerField;
    ADOTable14id_bc: TIntegerField;
    DataSource14: TDataSource;
    ADOTable15: TADOTable;
    ADOTable15id_info: TAutoIncField;
    ADOTable15nom_info: TStringField;
    ADOTable15mdp_info: TStringField;
    ADOTable15email_info: TStringField;
    ADOTable15telephone_info: TStringField;
    ADOTable15groupe_info: TStringField;
    ADOTable15id_catégorie: TIntegerField;
    Label56: TLabel;
    DBEdit47: TDBEdit;
    DataSource15: TDataSource;
    Label57: TLabel;
    DBEdit48: TDBEdit;
    Label58: TLabel;
    DBEdit49: TDBEdit;
    Label59: TLabel;
    DBEdit50: TDBEdit;
    Label60: TLabel;
    DBEdit51: TDBEdit;
    Label61: TLabel;
    DBEdit52: TDBEdit;
    ADOTable16: TADOTable;
    ADOTable16id_catégorie: TAutoIncField;
    ADOTable16nom_catégorie: TStringField;
    Label62: TLabel;
    DataSource16: TDataSource;
    DBGrid15: TDBGrid;
    scGPLabel5: TscGPLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    scGPButton71: TscGPButton;
    scGPButton72: TscGPButton;
    scGPButton73: TscGPButton;
    scGPButton74: TscGPButton;
    scGPButton75: TscGPButton;
    ADOTable17: TADOTable;
    ADOTable17titre_bdc: TStringField;
    ADOTable17id_info: TIntegerField;
    Label63: TLabel;
    DBEdit53: TDBEdit;
    DataSource17: TDataSource;
    scGPButton80: TscGPButton;
    scGPButton200: TscGPButton;
    scGPButton201: TscGPButton;
    scGPButton202: TscGPButton;
    scGPButton203: TscGPButton;
    DBGrid16: TDBGrid;
    ADOTable18: TADOTable;
    ADOTable18id_doc: TAutoIncField;
    ADOTable18catég_doc: TStringField;
    ADOTable18lienweb_doc: TStringField;
    ADOTable18commentaire_doc: TStringField;
    ADOTable18id_info: TIntegerField;
    Label64: TLabel;
    DBEdit54: TDBEdit;
    DataSource18: TDataSource;
    Label65: TLabel;
    DBEdit55: TDBEdit;
    Label66: TLabel;
    DBEdit56: TDBEdit;
    Label68: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    scGPButton76: TscGPButton;
    scGPButton77: TscGPButton;
    scGPButton78: TscGPButton;
    scGPButton79: TscGPButton;
    scGPButton81: TscGPButton;
    DataSource19: TDataSource;
    DateTimePicker3: TDateTimePicker;
    BindSourceDB4: TBindSourceDB;
    LinkControlToField3: TLinkControlToField;
    Image1: TImage;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    scGPButton89: TscGPButton;
    scGPLabel7: TscGPLabel;
    scGPLabel8: TscGPLabel;
    scGPLabel9: TscGPLabel;
    scGPLabel10: TscGPLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    ADOTable19: TADOTable;
    ADOTable19ID: TAutoIncField;
    ADOTable19Nom_Utilisateur: TStringField;
    ADOTable19Mot_De_Passe: TStringField;
    ADOTable19droit: TStringField;
    DataSource20: TDataSource;
    ADOTable19Id_util: TIntegerField;
    Label69: TLabel;
    DBEdit11: TDBEdit;
    Label70: TLabel;
    DBEdit17: TDBEdit;
    Label71: TLabel;
    DBEdit18: TDBEdit;
    ADOTable4piece_joint_req: TBlobField;
    Label17: TLabel;
    DBImage1: TDBImage;
    scGPButton21: TscGPButton;
    OpenPictureDialog1: TOpenPictureDialog;
    DBComboBox2: TDBComboBox;
    Label73: TLabel;
    scGPButton22: TscGPButton;
    scGPButton23: TscGPButton;
    scGPButton24: TscGPButton;
    DBGrid17: TDBGrid;
    DBLookupComboBox7: TDBLookupComboBox;
    OpenPictureDialog2: TOpenPictureDialog;
    ADOTable18piece_jointe_doc: TBlobField;
    Label67: TLabel;
    DBImage2: TDBImage;
    scGPButton83: TscGPButton;
    scGPButton84: TscGPButton;
    DBLookupComboBox10: TDBLookupComboBox;
    scGPButton31: TscGPButton;
    scGPButton32: TscGPButton;
    scGPButton33: TscGPButton;
    scGPButton34: TscGPButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOTable10ID: TAutoIncField;
    DBLookupComboBox11: TDBLookupComboBox;
    ADOTable2Date_avoir: TWideStringField;
    ADOTable2code_statue: TIntegerField;
    ADOTable2id_req: TIntegerField;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox12: TDBLookupComboBox;
    Button1: TButton;
    scGPGlyphButton100: TscGPGlyphButton;
    Label52: TLabel;
    DBEdit9: TDBEdit;
    Label53: TLabel;
    DBEdit16: TDBEdit;
    Label54: TLabel;
    DBEdit20: TDBEdit;
    Label55: TLabel;
    DBEdit41: TDBEdit;
    Label74: TLabel;
    DBEdit43: TDBEdit;
    Label75: TLabel;
    DBImage3: TDBImage;
    Label76: TLabel;
    Label77: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid2: TDBGrid;
    OpenPictureDialog3: TOpenPictureDialog;
    DBLookupComboBox13: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    DBGrid3: TDBGrid;
    scGPLabel6: TscGPLabel;
    Image2: TImage;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    scGPButton7: TscGPButton;
    scGPButton8: TscGPButton;
    scGPButton9: TscGPButton;
    scGPButton10: TscGPButton;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox9: TDBLookupComboBox;
    scGPButton1190: TscGPButton;
    procedure scButton5Click(Sender: TObject);
    procedure scButton9Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scGPSwitch1ChangeState(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure CaptionLabelDblClick(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CaptionLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scGPCharGlyphButton2Click(Sender: TObject);
    procedure scGPCharGlyphButton3Click(Sender: TObject);
    procedure scGPCharGlyphButton4Click(Sender: TObject);
    procedure scGPCharGlyphButton5Click(Sender: TObject);
    procedure scGPCharGlyphButton6Click(Sender: TObject);
    procedure scGPCharGlyphButton7Click(Sender: TObject);
    procedure scGPCharGlyphButton8Click(Sender: TObject);
    procedure scGPCharGlyphButton9Click(Sender: TObject);
    procedure scGPCharGlyphButton10Click(Sender: TObject);
    procedure scGPCharGlyphButton11Click(Sender: TObject);
    procedure scGPCharGlyphButton12Click(Sender: TObject);
    procedure scGPCharGlyphButton13Click(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
    procedure scGPButton3Click(Sender: TObject);
    procedure scGPButton4Click(Sender: TObject);
    procedure scGPButton5Click(Sender: TObject);
    procedure scGPButton6Click(Sender: TObject);
    procedure scGPButton700Click(Sender: TObject);
    procedure scGPButton8Click(Sender: TObject);
    procedure scGPButton9Click(Sender: TObject);
    procedure scGPButton10Click(Sender: TObject);
    procedure scGPButton1190Click(Sender: TObject);
    procedure scGPButton12Click(Sender: TObject);
    procedure scGPButton13Click(Sender: TObject);
    procedure scGPButton14Click(Sender: TObject);
    procedure scGPButton15Click(Sender: TObject);
    procedure scGPButton16Click(Sender: TObject);
    procedure scGPButton17Click(Sender: TObject);
    procedure scGPButton18Click(Sender: TObject);
    procedure scGPButton19Click(Sender: TObject);
    procedure scGPButton20Click(Sender: TObject);
    procedure scGPButton25Click(Sender: TObject);
    procedure scGPButton26Click(Sender: TObject);
    procedure scGPButton27Click(Sender: TObject);
    procedure scGPButton28Click(Sender: TObject);
    procedure scGPButton29Click(Sender: TObject);
    procedure scGPButton30Click(Sender: TObject);
    procedure scGPButton35Click(Sender: TObject);
    procedure scGPButton36Click(Sender: TObject);
    procedure scGPButton37Click(Sender: TObject);
    procedure scGPButton38Click(Sender: TObject);
    procedure scGPButton39Click(Sender: TObject);
    procedure scGPButton40Click(Sender: TObject);
    procedure scGPButton54Click(Sender: TObject);
    procedure scGPButton55Click(Sender: TObject);
    procedure scGPButton57Click(Sender: TObject);
    procedure scGPButton58Click(Sender: TObject);
    procedure scGPButton59Click(Sender: TObject);
    procedure scGPButton60Click(Sender: TObject);
    procedure scGPButton61Click(Sender: TObject);
    procedure scGPButton62Click(Sender: TObject);
    procedure scGPButton63Click(Sender: TObject);
    procedure scGPButton64Click(Sender: TObject);
    procedure scGPButton65Click(Sender: TObject);
    procedure scGPButton66Click(Sender: TObject);
    procedure scGPButton71Click(Sender: TObject);
    procedure scGPButton72Click(Sender: TObject);
    procedure scGPButton73Click(Sender: TObject);
    procedure scGPButton74Click(Sender: TObject);
    procedure scGPButton75Click(Sender: TObject);
    procedure scGPButton200Click(Sender: TObject);
    procedure scGPButton201Click(Sender: TObject);
    procedure scGPButton202Click(Sender: TObject);
    procedure scGPButton203Click(Sender: TObject);
    procedure scGPButton76Click(Sender: TObject);
    procedure scGPButton77Click(Sender: TObject);
    procedure scGPButton78Click(Sender: TObject);
    procedure scGPButton79Click(Sender: TObject);
    procedure scGPButton81Click(Sender: TObject);
    procedure scGPButton82Click(Sender: TObject);
    procedure scGPButton45Click(Sender: TObject);
    procedure scGPButton46Click(Sender: TObject);
    procedure scGPButton47Click(Sender: TObject);
    procedure scGPButton48Click(Sender: TObject);
    procedure scGPButton49Click(Sender: TObject);
    procedure scGPButton50Click(Sender: TObject);
    procedure scGPButton21Click(Sender: TObject);
    procedure scGPButton22Click(Sender: TObject);
    procedure scGPButton23Click(Sender: TObject);
    procedure scGPButton24Click(Sender: TObject);
    procedure scGPButton83Click(Sender: TObject);
    procedure scGPButton84Click(Sender: TObject);
    procedure scGPButton53Click(Sender: TObject);
    procedure scGPButton52Click(Sender: TObject);
    procedure scGPButton51Click(Sender: TObject);
    procedure scGPButton56Click(Sender: TObject);
    procedure scGPButton31Click(Sender: TObject);
    procedure scGPButton32Click(Sender: TObject);
    procedure scGPButton33Click(Sender: TObject);
    procedure scGPButton34Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure scGPButton800Click(Sender: TObject);
    procedure scGPButton900Click(Sender: TObject);
    procedure scGPButton10000Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure scGPGlyphButton100Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit5;

procedure TForm1.CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and not (ssDouble in Shift) and scStyledForm1.IsDWMClientMaximized then
   scStyledForm1.DWMClientStartDrag;
end;

procedure TForm1.CaptionLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if scStyledForm1.IsDWMClientMaximized and scStyledForm1.IsDWMClientDragging then
  begin
    scStyledForm1.DWMClientDrag;
    if not scStyledForm1.IsDWMClientMaximized then
    begin
      MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
      scGPSizeBox1.Visible := True;
    end;
  end;
end;

procedure TForm1.CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  scStyledForm1.DWMClientEndDrag;
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Close;
end;



procedure TForm1.MaxButtonClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

procedure TForm1.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 0;
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 4;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  scSplitView2.Opened := not scSplitView2.Opened;
end;

procedure TForm1.scButton5Click(Sender: TObject);
begin
  scSplitView3.Opened := not scSplitView3.Opened;
end;

procedure TForm1.scButton6Click(Sender: TObject);
begin
  if scSplitView1.DisplayMode = scsvmDocked then
   BorderPanel.SetRedraw(False);

  scSplitView1.Opened := not scSplitView1.Opened;

  if scSplitView1.DisplayMode = scsvmDocked then
    BorderPanel.SetRedraw(True);
end;

procedure TForm1.scButton9Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPButton10000Click(Sender: TObject);
begin
adotable14.Delete;
end;

procedure TForm1.scGPButton10Click(Sender: TObject);
begin
ADOTable2.next;
ADOTable9.next;
end;

procedure TForm1.scGPButton1190Click(Sender: TObject);
begin
ADOTable18.delete;
end;

procedure TForm1.scGPButton12Click(Sender: TObject);
begin
ADOTable2.delete;
end;

procedure TForm1.scGPButton13Click(Sender: TObject);
begin
ADOTable3.insert;
end;

procedure TForm1.scGPButton14Click(Sender: TObject);
begin
ADOTable3.delete;
end;

procedure TForm1.scGPButton15Click(Sender: TObject);
begin
ADOTable4.insert;
ADOTable5.insert;
end;

procedure TForm1.scGPButton16Click(Sender: TObject);
begin
ADOTable4.edit;
ADOTable5.edit;
end;

procedure TForm1.scGPButton17Click(Sender: TObject);
begin
ADOTable4.post;
ADOTable5.post;
end;

procedure TForm1.scGPButton18Click(Sender: TObject);
begin
ADOTable4.next;
ADOTable5.next;
end;

procedure TForm1.scGPButton19Click(Sender: TObject);
begin
ADOTable4.prior;
ADOTable5.prior;
end;

Procedure TForm1.scGPButton1Click(Sender: TObject);
begin
ADOTable1.insert;
ADOTable19.insert;
end;

procedure TForm1.scGPButton20Click(Sender: TObject);
begin
ADOTable4.delete;
ADOTable5.delete;
end;

procedure TForm1.scGPButton21Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm1.scGPButton22Click(Sender: TObject);
begin
adotable2.Insert;

end;

procedure TForm1.scGPButton23Click(Sender: TObject);
begin
adotable2.Edit;

end;

procedure TForm1.scGPButton24Click(Sender: TObject);
begin
adotable2.Post;

end;

procedure TForm1.scGPButton25Click(Sender: TObject);
begin
ADOTable6.insert;
end;

procedure TForm1.scGPButton26Click(Sender: TObject);
begin
ADOTable6.edit;
end;

procedure TForm1.scGPButton27Click(Sender: TObject);
begin
ADOTable6.post;
end;

procedure TForm1.scGPButton28Click(Sender: TObject);
begin
ADOTable6.next;
end;

procedure TForm1.scGPButton29Click(Sender: TObject);
begin
ADOTable6.prior;
end;

Procedure TForm1.scGPButton2Click(Sender: TObject);
begin
ADOTable1.edit;
ADOTable19.edit;
end;

procedure TForm1.scGPButton30Click(Sender: TObject);
begin
ADOTable6.delete;
end;

procedure TForm1.scGPButton31Click(Sender: TObject);
begin
adotable7.Insert;
end;

procedure TForm1.scGPButton32Click(Sender: TObject);
begin
adotable7.Edit;
end;

procedure TForm1.scGPButton33Click(Sender: TObject);
begin
adotable7.Post;
end;

procedure TForm1.scGPButton34Click(Sender: TObject);
begin
adotable7.Delete;
end;

procedure TForm1.scGPButton35Click(Sender: TObject);
begin
ADOTable8.insert;
end;

procedure TForm1.scGPButton36Click(Sender: TObject);
begin
ADOTable8.edit;
end;

procedure TForm1.scGPButton37Click(Sender: TObject);
begin
ADOTable8.post;
end;

procedure TForm1.scGPButton38Click(Sender: TObject);
begin
ADOTable8.next;
end;

procedure TForm1.scGPButton39Click(Sender: TObject);
begin
ADOTable8.prior;
end;

Procedure TForm1.scGPButton3Click(Sender: TObject);
begin
ADOTable1.post;
ADOTable19.post;
end;

procedure TForm1.scGPButton40Click(Sender: TObject);
begin
ADOTable8.delete;
end;

procedure TForm1.scGPButton45Click(Sender: TObject);
begin
ADOTable10.insert;
end;

procedure TForm1.scGPButton46Click(Sender: TObject);
begin
ADOTable10.edit;
end;

procedure TForm1.scGPButton47Click(Sender: TObject);
begin
ADOTable10.post;
end;

procedure TForm1.scGPButton48Click(Sender: TObject);
begin
ADOTable2.next;
ADOTable10.next;
ADOTable4.next;
end;

procedure TForm1.scGPButton49Click(Sender: TObject);
begin
ADOTable2.prior;
ADOTable10.prior;
ADOTable4.prior;
end;

Procedure TForm1.scGPButton4Click(Sender: TObject);
begin
ADOTable1.next;
ADOTable19.next;
end;



procedure TForm1.scGPButton50Click(Sender: TObject);
begin
ADOTable5.delete;
end;

procedure TForm1.scGPButton51Click(Sender: TObject);
begin
adotable11.Insert;
end;

procedure TForm1.scGPButton52Click(Sender: TObject);
begin
adotable11.Edit;
end;

procedure TForm1.scGPButton53Click(Sender: TObject);
begin
adotable11.Post;
end;

procedure TForm1.scGPButton54Click(Sender: TObject);
begin
ADOTable11.next;
end;

procedure TForm1.scGPButton55Click(Sender: TObject);
begin
ADOTable11.prior;
end;


procedure TForm1.scGPButton56Click(Sender: TObject);
begin
adotable11.Delete;
end;

procedure TForm1.scGPButton57Click(Sender: TObject);
begin
ADOTable12.insert;
end;

procedure TForm1.scGPButton58Click(Sender: TObject);
begin
ADOTable12.edit;
end;

procedure TForm1.scGPButton59Click(Sender: TObject);
begin
ADOTable12.post;
end;

Procedure TForm1.scGPButton5Click(Sender: TObject);
begin
ADOTable1.prior;
ADOTable19.prior;
end;

procedure TForm1.scGPButton60Click(Sender: TObject);
begin
ADOTable12.delete;
end;

procedure TForm1.scGPButton61Click(Sender: TObject);
begin
ADOTable13.insert;
end;

procedure TForm1.scGPButton62Click(Sender: TObject);
begin
ADOTable13.edit;
end;

procedure TForm1.scGPButton63Click(Sender: TObject);
begin
ADOTable13.post;
end;

procedure TForm1.scGPButton64Click(Sender: TObject);
begin
ADOTable13.next;
end;

procedure TForm1.scGPButton65Click(Sender: TObject);
begin
ADOTable13.prior;
end;

procedure TForm1.scGPButton66Click(Sender: TObject);
begin
ADOTable13.delete;
end;

Procedure TForm1.scGPButton6Click(Sender: TObject);
begin
ADOTable1.delete;
ADOTable19.delete;
end;

procedure TForm1.scGPButton71Click(Sender: TObject);
begin
 ADOTable15.INSERT;
  ADOTable16.INSERT;
end;

procedure TForm1.scGPButton72Click(Sender: TObject);
begin
ADOTable16.edit;
ADOTable15.edit;
end;

procedure TForm1.scGPButton73Click(Sender: TObject);
begin
ADOTable15.post;
ADOTable16.post;
end;

procedure TForm1.scGPButton74Click(Sender: TObject);
begin
 ADOTable15.next;
  ADOTable16.next;
end;

procedure TForm1.scGPButton75Click(Sender: TObject);
begin
ADOTable15.prior;
ADOTable16.prior;
end;

procedure TForm1.scGPButton76Click(Sender: TObject);
begin
ADOTable18.insert;
end;

procedure TForm1.scGPButton77Click(Sender: TObject);
begin
ADOTable18.edit;
end;

procedure TForm1.scGPButton78Click(Sender: TObject);
begin
ADOTable18.post;
end;

procedure TForm1.scGPButton79Click(Sender: TObject);
begin
ADOTable18.next;
end;

procedure TForm1.scGPButton7Click(Sender: TObject);
begin
adotable14.Insert;
adotable9.Insert;
end;

Procedure TForm1.scGPButton200Click(Sender: TObject);
begin
ADOTable17.insert;
end;

procedure TForm1.scGPButton201Click(Sender: TObject);
begin
ADOTable17.edit;
end;

procedure TForm1.scGPButton202Click(Sender: TObject);
begin
ADOTable17.post;
end;

procedure TForm1.scGPButton203Click(Sender: TObject);
begin
ADOTable17.delete;
end;

Procedure TForm1.scGPButton700Click(Sender: TObject);
begin
ADOTable2.insert;
end;

procedure TForm1.scGPButton800Click(Sender: TObject);
begin
adotable14.Edit;
end;

procedure TForm1.scGPButton81Click(Sender: TObject);
begin
ADOTable18.next;
end;

procedure TForm1.scGPButton82Click(Sender: TObject);
begin
frxreport1.showreport();
end;



procedure TForm1.scGPButton83Click(Sender: TObject);
begin
   if OpenPictureDialog2.Execute then
DBImage2.Picture.LoadFromFile(OpenPictureDialog2.FileName);
end;

procedure TForm1.scGPButton84Click(Sender: TObject);
begin
FORM5.SHOW;
end;

Procedure TForm1.scGPButton8Click(Sender: TObject);
begin
ADOTable2.edit;
ADOTable9.edit;
end;

procedure TForm1.scGPButton900Click(Sender: TObject);
begin
adotable14.Post;
end;

procedure TForm1.scGPButton9Click(Sender: TObject);
begin
ADOTable2.post;
ADOTable9.post;
end;

procedure TForm1.scGPCharGlyphButton10Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 9;
end;

procedure TForm1.scGPCharGlyphButton11Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 10;
end;

procedure TForm1.scGPCharGlyphButton12Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 11;
end;

procedure TForm1.scGPCharGlyphButton13Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 12;
end;

procedure TForm1.scGPCharGlyphButton1Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 0;
end;

procedure TForm1.scGPCharGlyphButton2Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 1;
end;

procedure TForm1.scGPCharGlyphButton3Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 2;
end;

procedure TForm1.scGPCharGlyphButton4Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 3;
end;

procedure TForm1.scGPCharGlyphButton5Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 4;
end;

procedure TForm1.scGPCharGlyphButton6Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 5;
end;

procedure TForm1.scGPCharGlyphButton7Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 6;
end;

procedure TForm1.scGPCharGlyphButton8Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 7;
end;

procedure TForm1.scGPCharGlyphButton9Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 8;
end;

procedure TForm1.scGPGlyphButton100Click(Sender: TObject);
begin
scPageViewer1.PageIndex := 12;
end;

procedure TForm1.scGPSwitch1ChangeState(Sender: TObject);
begin
  BorderPanel.SetRedraw(False);

  if scSplitView1.DisplayMode = scsvmDocked then
    scSplitView1.DisplayMode := scsvmOverlay
  else
    scSplitView1.DisplayMode := scsvmDocked;

  BorderPanel.SetRedraw(True);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
adotable2.Delete;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if OpenPictureDialog3.Execute then
DBImage3.Picture.LoadFromFile(OpenPictureDialog3.FileName);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
adotable4.Insert;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
adotable4.Next;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
adotable4.Prior;
end;

procedure TForm1.CaptionLabelDblClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

procedure TForm1.scStyledForm1BeforeChangeScale(Sender: TObject);
begin
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := 0;
  Form1.Constraints.MinHeight := 0;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    CaptionLabel.Font.Color := clBtnText;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 190;
    MaxButton.GlyphOptions.NormalColorAlpha := 190;
  end
  else
  begin
    CaptionLabel.Font.Color := clGray;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
    MinButton.GlyphOptions.NormalColorAlpha := 120;
    MaxButton.GlyphOptions.NormalColorAlpha := 120;
  end;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
  Form1.Constraints.MinWidth := scStyledForm1.ScaleInt(400);
  Form1.Constraints.MinHeight := scStyledForm1.ScaleInt(400);
end;

procedure TForm1.scStyledForm1DWMClientMaximize(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkRestore;
  scGPSizeBox1.Visible := False;
  BorderPanel.Sizeable := False;
end;

procedure TForm1.scStyledForm1DWMClientRestore(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
  scGPSizeBox1.Visible := True;
  BorderPanel.Sizeable := True;
end;

end.
