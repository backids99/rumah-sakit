unit rumah_sakit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, jpeg, StdCtrls, DB, DBTables, Grids, DBGrids,
  ComCtrls, QRCtrls, QuickRpt, Buttons, ADODB;

type
  TRumahSakitBakhtiar = class(TForm)
    MainMenu1: TMainMenu;
    Data1: TMenuItem;
    DataDokter1: TMenuItem;
    DataObat1: TMenuItem;
    DataPetugas1: TMenuItem;
    Edit1: TMenuItem;
    EditDokter1: TMenuItem;
    EditObat1: TMenuItem;
    EditPetugas1: TMenuItem;
    Cari1: TMenuItem;
    CariDokter1: TMenuItem;
    CariObat1: TMenuItem;
    CariPetugas1: TMenuItem;
    Laporan1: TMenuItem;
    LaporanDokter1: TMenuItem;
    LaporanObat1: TMenuItem;
    LaporanPetugas1: TMenuItem;
    Help1: TMenuItem;
    Manual1: TMenuItem;
    About1: TMenuItem;
    Exit1: TMenuItem;
    PanelWelcome: TPanel;
    PanelInputDataDokter: TPanel;
    PanelInputDataObat: TPanel;
    PanelInputDataPetugas: TPanel;
    PanelInputDataPenjualan: TPanel;
    PanelEditDokter: TPanel;
    PanelEditObat: TPanel;
    PanelEditPetugas: TPanel;
    PanelEditPenjualan: TPanel;
    PanelCariDokter: TPanel;
    PanelCariObat: TPanel;
    PanelCariPetugas: TPanel;
    Panel13: TPanel;
    PanelLaporanDokter: TPanel;
    PanelLaporanObat: TPanel;
    PanelLaporanPetugas: TPanel;
    PanelLaporanPenjualan: TPanel;
    Panel18: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBGrid1: TDBGrid;
    EditKodeDokter: TEdit;
    EditNamaDokter: TEdit;
    EditAlamatDokter: TEdit;
    EditSpesialisDokter: TEdit;
    Simpan: TButton;
    Batal: TButton;
    Keluar: TButton;
    DataSourceDokter: TDataSource;
    TableDokter: TTable;
    DataObat2: TMenuItem;
    DataPenjualan1: TMenuItem;
    View1: TMenuItem;
    Print1: TMenuItem;
    LaporanObat2: TMenuItem;
    LaporanPenjualan1: TMenuItem;
    View2: TMenuItem;
    Print2: TMenuItem;
    View3: TMenuItem;
    Print3: TMenuItem;
    View4: TMenuItem;
    Print4: TMenuItem;
    EditKodeObat1: TEdit;
    Label14: TLabel;
    Label19: TLabel;
    EditNamaObat1: TEdit;
    Label20: TLabel;
    ComboBoxJenisObat: TComboBox;
    Label21: TLabel;
    ComboBoxKemasanObat: TComboBox;
    Label22: TLabel;
    EditDosisObat1: TEdit;
    Label23: TLabel;
    EditIsiObat1: TEdit;
    EditHargaObat1: TEdit;
    Label24: TLabel;
    DBGridObat1: TDBGrid;
    ButtonSimpanObat1: TButton;
    ButtonBatalObat: TButton;
    ButtonKeluarObat: TButton;
    MemoDeskripsiObat1: TMemo;
    Label25: TLabel;
    Label26: TLabel;
    DateTimePickerKadaluarsaObat1: TDateTimePicker;
    EditProduksiObat1: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    EditBanyakDusObat1: TEdit;
    EditBanyakObat1: TEdit;
    Label29: TLabel;
    DataSourceObat: TDataSource;
    TableObat: TTable;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBGridEditDokter: TDBGrid;
    EditNamaEditDokter: TEdit;
    EditAlamatEditDOkter: TEdit;
    EditSpesialisEditDokter: TEdit;
    ComboBoxEditDokter1: TComboBox;
    ButtonSimpanEditDokter: TButton;
    ButtonHapusEditDokter: TButton;
    ButtonKeluarEditDokter: TButton;
    ButtonCariDokter: TButton;
    RadioGroupCariDokter: TRadioGroup;
    EditCariDokter: TEdit;
    Label34: TLabel;
    DBGridCariDokter: TDBGrid;
    ButtonKeluarCariDokter: TButton;
    QuickRepDokter: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBGridEditO: TDBGrid;
    EditNamaEditO: TEdit;
    EditDosisEditO: TEdit;
    EditIsiEditO: TEdit;
    ComboBoxKOEditO: TComboBox;
    ButtonSimpanEditO: TButton;
    ButtonHapusEditO: TButton;
    ButtonKeluarEditO: TButton;
    EditBanyakEditO: TEdit;
    DateTimePickerEditO: TDateTimePicker;
    ComboBoxJEditO: TComboBox;
    ComboBoxKEditO: TComboBox;
    EditBanyakDusEditO: TEdit;
    MemoEditO: TMemo;
    EditProduksiEditO: TEdit;
    EditHargaEditO: TEdit;
    RadioGroupCariObat: TRadioGroup;
    Label47: TLabel;
    EditDataCariObat: TEdit;
    DBGridCariObat: TDBGrid;
    ButtonCariObat: TButton;
    ButtonKeluarCariO: TButton;
    TablePetugas: TTable;
    DataSourcePetugas: TDataSource;
    PanelCetakBon: TPanel;
    Image27: TImage;
    DataSourcePenjualan: TDataSource;
    TablePenjualan: TTable;
    QuickRepObat: TQuickRep;
    QRBand5: TQRBand;
    QRLabel8: TQRLabel;
    QRShape15: TQRShape;
    QRBand6: TQRBand;
    QRShape16: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRBand7: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand8: TQRBand;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    TableTerjual: TTable;
    DataSourceTerjual: TDataSource;
    Label48: TLabel;
    EditKodeDataPetugas: TEdit;
    Label49: TLabel;
    EditNamaDataPetugas: TEdit;
    Label50: TLabel;
    EditAlamatDataPetugas: TEdit;
    Label51: TLabel;
    EditTelpDataPetugas: TEdit;
    Label52: TLabel;
    Label53: TLabel;
    DateTimePickerLhrDataPtgs: TDateTimePicker;
    RadioGroupKelaminPetugas: TRadioGroup;
    DBGridDataPetugas: TDBGrid;
    ButtonSimpanDataPtgs: TButton;
    ButtonBatalDataPtgs: TButton;
    ButtonKeluarDataPtgs: TButton;
    EditTelpEditPetugas: TEdit;
    EditNamaEditPetugas: TEdit;
    EditAlamatEditPetugas: TEdit;
    DBGridEditPetugas: TDBGrid;
    DateTimePickerEditPetugas: TDateTimePicker;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    ButtonSEPetugas: TButton;
    ButtonHEPetugas: TButton;
    ButtonKEPetugas: TButton;
    Label60: TLabel;
    RadioGroupKEP: TRadioGroup;
    RadioGroupCariPetugas: TRadioGroup;
    Label61: TLabel;
    EditDataCariPetugas: TEdit;
    DBGridCariPetugas: TDBGrid;
    Query1: TQuery;
    DataSourceQuery1: TDataSource;
    Database1: TDatabase;
    ButtonCariDataPetugas: TButton;
    ButtonKeluarCariPetugas: TButton;
    QuickRepPetugas: TQuickRep;
    QRBand9: TQRBand;
    QRLabel19: TQRLabel;
    QRShape37: TQRShape;
    QRBand10: TQRBand;
    QRShape38: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRDBText17: TQRDBText;
    QRShape44: TQRShape;
    QRDBText18: TQRDBText;
    QRShape45: TQRShape;
    QRDBText19: TQRDBText;
    QRShape46: TQRShape;
    QRDBText20: TQRDBText;
    QRBand11: TQRBand;
    QRLabel20: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel21: TQRLabel;
    QRSysData6: TQRSysData;
    QRBand12: TQRBand;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLabel26: TQRLabel;
    QRShape55: TQRShape;
    QRLabel27: TQRLabel;
    QRShape56: TQRShape;
    QRLabel28: TQRLabel;
    QRShape57: TQRShape;
    QRLabel29: TQRLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    EditTHDataPenjualan: TEdit;
    EditDisDataPenjualan: TEdit;
    EditHBDataPenjualan: TEdit;
    EditBayarDataPenjualan: TEdit;
    EditKembalianDataPenjualan: TEdit;
    DBGridPenjualanDataPenjualan: TDBGrid;
    ButtonSimpanDataPenjualan: TButton;
    ButtonCetakDataPenjualan: TButton;
    ButtonKeluarDataPenjualan: TButton;
    Panel1: TPanel;
    EditNoBonDataPenjualan: TEdit;
    Label62: TLabel;
    Label64: TLabel;
    EditNMPetugasDataPenjualan: TEdit;
    Label65: TLabel;
    PanelTambahPenjualan: TPanel;
    Label70: TLabel;
    Label69: TLabel;
    Label68: TLabel;
    Label67: TLabel;
    Label66: TLabel;
    EditSTDataPenjualan: TEdit;
    EditNMODataPenjualan: TEdit;
    EditHODataPenjualan: TEdit;
    EditBODataPenjualan: TEdit;
    ButtonTODataPenjualan: TButton;
    DBGridTerjualDataPenjualan: TDBGrid;
    ComboBoxEditPetugas: TComboBox;
    ComboBoxStatusEP: TComboBox;
    ComboBoxPtgsDataPenjualan: TComboBox;
    ComboBoxKodeDataPenjualan: TComboBox;
    ButtonOutDataPenjualan: TButton;
    Button3: TButton;
    Button4: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QuickRepCetakBon: TQuickRep;
    QRBand13: TQRBand;
    QRLabel25: TQRLabel;
    QRShape47: TQRShape;
    QRBand14: TQRBand;
    QRShape58: TQRShape;
    QRDBText23: TQRDBText;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRBand15: TQRBand;
    QRLabel31: TQRLabel;
    QRSysData8: TQRSysData;
    QRBand16: TQRBand;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel36: TQRLabel;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRLabel37: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText21: TQRDBText;
    QRShape61: TQRShape;
    QRShape68: TQRShape;
    QRLabel38: TQRLabel;
    QRDBText26: TQRDBText;
    QRSysData7: TQRSysData;
    QRLabel30: TQRLabel;
    Panel2: TPanel;
    Label63: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    EditNMPetugasEP: TEdit;
    Panel3: TPanel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    DBGridEditPenjualan: TDBGrid;
    Button2: TButton;
    Button5: TButton;
    Button6: TButton;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    DBGrid3: TDBGrid;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ButtonEditDataPenjualan: TButton;
    QuickRepPenjualan: TQuickRep;
    QRBand18: TQRBand;
    QRLabel40: TQRLabel;
    QRShape76: TQRShape;
    QRBand19: TQRBand;
    QRShape77: TQRShape;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRBand20: TQRBand;
    QRLabel41: TQRLabel;
    QRSysData9: TQRSysData;
    QRLabel42: TQRLabel;
    QRSysData10: TQRSysData;
    QRBand21: TQRBand;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRBand22: TQRBand;
    QRLabel48: TQRLabel;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRBand23: TQRBand;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRLabel47: TQRLabel;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel39: TQRLabel;
    QRDBText29: TQRDBText;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRLabel49: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText22: TQRDBText;
    ComboBoxNoBonEP: TComboBox;
    QRLabel50: TQRLabel;
    QRExpr4: TQRExpr;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    ComboBoxPetugasEP: TComboBox;
    Button10: TButton;
    procedure SimpanClick(Sender: TObject);
    procedure BatalClick(Sender: TObject);
    procedure KeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataDokter1Click(Sender: TObject);
    procedure DataObat2Click(Sender: TObject);
    procedure ButtonSimpanObat1Click(Sender: TObject);
    procedure ButtonBatalObatClick(Sender: TObject);
    procedure ComboBoxJenisObatSelect(Sender: TObject);
    procedure ComboBoxJenisObatClick(Sender: TObject);
    procedure ButtonSimpanEditDokterClick(Sender: TObject);
    procedure EditDokter1Click(Sender: TObject);
    procedure ComboBoxEditDokter1Change(Sender: TObject);
    procedure ButtonHapusEditDokterClick(Sender: TObject);
    procedure ButtonKeluarEditDokterClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure ButtonCariDokterClick(Sender: TObject);
    procedure CariDokter1Click(Sender: TObject);
    procedure ButtonKeluarCariDokterClick(Sender: TObject);
    procedure View1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure ButtonSimpanEditOClick(Sender: TObject);
    procedure ComboBoxJEditOChange(Sender: TObject);
    procedure ComboBoxKOEditOChange(Sender: TObject);
    procedure ComboBoxJEditOClick(Sender: TObject);
    procedure ButtonHapusEditOClick(Sender: TObject);
    procedure ButtonKeluarEditOClick(Sender: TObject);
    procedure ButtonCariObatClick(Sender: TObject);
    procedure ButtonKeluarCariOClick(Sender: TObject);
    procedure View2Click(Sender: TObject);
    procedure Print2Click(Sender: TObject);
    procedure ButtonSimpanDataPtgsClick(Sender: TObject);
    procedure ButtonBatalDataPtgsClick(Sender: TObject);
    procedure ButtonSEPetugasClick(Sender: TObject);
    procedure ButtonHEPetugasClick(Sender: TObject);
    procedure ButtonCariDataPetugasClick(Sender: TObject);
    procedure View4Click(Sender: TObject);
    procedure Print4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonTODataPenjualanClick(Sender: TObject);
    procedure EditDisDataPenjualanChange(Sender: TObject);
    procedure EditBayarDataPenjualanChange(Sender: TObject);
    procedure ComboBoxKodeDataPenjualanChange(Sender: TObject);
    procedure ComboBoxPtgsDataPenjualanChange(Sender: TObject);
    procedure ButtonSimpanDataPenjualanClick(Sender: TObject);
    procedure ButtonOutDataPenjualanClick(Sender: TObject);
    procedure EditBODataPenjualanChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ButtonCetakDataPenjualanClick(Sender: TObject);
    procedure ButtonEditDataPenjualanClick(Sender: TObject);
    procedure DataPetugas1Click(Sender: TObject);
    procedure EditPetugas1Click(Sender: TObject);
    procedure CariPetugas1Click(Sender: TObject);
    procedure DataPenjualan1Click(Sender: TObject);
    procedure ComboBoxEditPetugasClick(Sender: TObject);
    procedure View3Click(Sender: TObject);
    procedure Print3Click(Sender: TObject);
    procedure EditObat1Click(Sender: TObject);
    procedure CariObat1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
    procedure CounterNomor;

  end;

var
  RumahSakitBakhtiar: TRumahSakitBakhtiar;

implementation

uses Math;

{$R *.dfm}

function AddLeadingZeroes(const aNumber, Length : integer) : string;
begin
   result := SysUtils.Format('%.*d', [Length, aNumber]) ;
end;

// *------------------------------------------------------------------------* //
// FORM ACTIVATE
procedure TRumahSakitBakhtiar.FormActivate(Sender: TObject);
begin

end;

// *------------------------------------------------------------------------* //
// COUNTER NOMOR
procedure TRumahSakitBakhtiar.CounterNomor;
  var Nomor, Panjang, No, i:Integer;
      Kode, Nol:String;
  begin
    //Panel1.Visible:=False;
    TablePenjualan.Open;
    Nomor:=TablePenjualan.RecordCount;
    if Nomor = 0 then
      begin
        Kode := '00001';
      end
    else
      begin
        Nomor := Nomor + 1;
        Panjang := Length(IntToStr(Nomor));
        No := 5-Panjang;
        Nol := '0';
        i := 1;
        while ( i < No ) do
          begin
            Nol := Nol + '0';
            i := i + 1;
          end;
          Kode := Nol + IntToStr(Nomor);
      end;
        EditNoBonDataPenjualan.Text := Kode;
end;

// *------------------------------------------------------------------------* //
// FORM CREATE
procedure TRumahSakitBakhtiar.FormCreate(Sender: TObject);
var
    no_dokter, no_obat, no_petugas : String;
    ada_dokter, ada_obat, ada_petugas : Integer;
    FDbDriver : string;
    FAlias: string;
    FAliasDir: string;
    FParamsDir: string;
begin

  // Panel
  PanelWelcome.Visible := True;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;

  FDbDriver := 'PARADOX';
  FAlias := 'DB_RUMAH_SAKIT';
  FAliasDir := ExtractFilePath(ParamStr(0)) + 'database';
  FParamsDir := 'PATH=' + ExtractFilePath(ParamStr(0)) + 'database';
  Session.ConfigMode := cmPersistent;

  if not Session.IsAlias(FAlias) then
  begin
    //if (Application.MessageBox('Database Error.', 'Peringatan', MB_ABORTRETRYIGNORE or MB_ICONQUESTION)= IDABORT) then
      //begin
        //Close;
      //end
    //else if (Application.MessageBox('Database Error.', 'Peringatan', MB_ABORTRETRYIGNORE or MB_ICONQUESTION)= IDRETRY) then
      //begin
          Session.AddStandardAlias(FAlias, FAliasDir, FDbDriver);
          Session.SaveConfigFile;
      //end;
  end;



    Database1.DatabaseName := FAlias;
    Database1.DriverName   := 'STANDARD';
    Database1.Params.Clear;
    Database1.Params.Add(FParamsDir);
    //Database1.Connected:= true;


    //TableDokter.SessionName := FAlias;
    TableDokter.DatabaseName := FAlias;
    TableDokter.TableName := 'dokter';
    TableDokter.Active := True;
    //TableDokter.Open;

    //TableObat.SessionName := FAlias;
    TableObat.DatabaseName := FAlias;
    TableObat.TableName := 'obat';
    TableObat.Active := True;
    //TableObat.Open;

    //TablePetugas.SessionName := FAlias;
    TablePetugas.DatabaseName := FAlias;
    TablePetugas.TableName := 'petugas';
    TablePetugas.Active := True;
    //TablePetugas.Open;

    //TablePenjualan.SessionName := FAlias;
    TablePenjualan.DatabaseName := FAlias;
    TablePenjualan.TableName := 'penjualan';
    TablePenjualan.Active := True;
    //TablePenjualan.Open;

    //TableTerjual.SessionName := FAlias;
    TableTerjual.DatabaseName := FAlias;
    TableTerjual.TableName := 'terjual';
    TableTerjual.Active := True;
    //TableTerjual.Open;

    //Query1.SessionName := FAlias;
    //Query1.SQL.Clear;
    Query1.DatabaseName := FAlias;
    Query1.SQL.Add('select * from terjual.db where No_bon =:bon');
    Query1.ParamByName('bon').DataType := ftString;
    Query1.ParamByName('bon').ParamType := ptInput;
    Query1.ParamByName('bon').Text := '00001';
    Query1.Active := True;

  TableDokter.Filtered := False;
  ada_dokter := TableDokter.RecordCount;
  if ada_dokter = 0 then
     begin
        no_dokter := 'B0001';
     end
  else
     begin
        no_dokter := 'B' + AddLeadingZeroes(ada_dokter+1, 4);
     end;

  EditKodeDokter.Text := no_dokter;

  TableObat.Filtered := False;
  ada_obat := TableObat.RecordCount;
  if ada_obat = 0 then
     begin
        no_obat := 'A001';
     end
  else
     begin
        no_obat := 'A' + AddLeadingZeroes(ada_obat+1, 3);
     end;

  EditKodeObat1.Text := no_obat;

  TablePetugas.Filtered := False;
  ada_petugas := TablePetugas.RecordCount;
  if ada_petugas = 0 then
     begin
        no_petugas := 'C001';
     end
  else
     begin
        no_petugas := 'C' + AddLeadingZeroes(ada_petugas+1, 3);
     end;

  EditKodeDataPetugas.Text := no_petugas;

  // No Bon edit penjualan
  ComboBoxNoBonEP.Items.Clear;
  TablePenjualan.Filtered := false;
  TablePenjualan.Refresh;
  TablePenjualan.IndexName := 'index_penjualan';
  while not TablePenjualan.Eof do
  begin
    ComboBoxNoBonEP.Items.Add(TablePenjualan.FieldByName('No_bon').AsString);
    TablePenjualan.Next;
  end;
  TablePenjualan.First;


//Main menu
  //Data1.Visible := false;
  //Edit1.Visible := false;
  //Cari1.Visible := false;
  //Laporan1.Visible := false;


// String ComboBox Input Data Obat
  ComboBoxJenisObat.Items.Clear;
  ComboBoxJenisObat.Items.Add('Cair obat minum'); //0
  ComboBoxJenisObat.Items.Add('Cair obat suntik'); //1
  ComboBoxJenisObat.Items.Add('Krim'); //2
  ComboBoxJenisObat.Items.Add('Injeksi'); //3
  ComboBoxJenisObat.Items.Add('Infus'); //4
  ComboBoxJenisObat.Items.Add('Sirup'); //5
  ComboBoxJenisObat.Items.Add('Kapsul'); //6
  ComboBoxJenisObat.Items.Add('Kaptab'); //7
  ComboBoxJenisObat.Items.Add('Tablet'); //8
  ComboBoxJenisObat.Items.Add('Inhaler'); //9
  ComboBoxJenisObat.Items.Add('Tetes Mata'); //10

  // Combobox jenis edit obat
  ComboBoxJEditO.Items.Clear;
  ComboBoxJEditO.Items.Add('Cair obat minum'); //0
  ComboBoxJEditO.Items.Add('Cair obat suntik'); //1
  ComboBoxJEditO.Items.Add('Krim'); //2
  ComboBoxJEditO.Items.Add('Injeksi'); //3
  ComboBoxJEditO.Items.Add('Infus'); //4
  ComboBoxJEditO.Items.Add('Sirup'); //5
  ComboBoxJEditO.Items.Add('Kapsul'); //6
  ComboBoxJEditO.Items.Add('Kaptab'); //7
  ComboBoxJEditO.Items.Add('Tablet'); //8
  ComboBoxJEditO.Items.Add('Inhaler'); //9
  ComboBoxJEditO.Items.Add('Tetes Mata'); //10

// Panel edit petugas
  ComboBoxEditPetugas.Items.Clear;
  TablePetugas.IndexName := 'index_petugas';
  while not TablePetugas.Eof do
  begin
    ComboBoxEditPetugas.Items.Add(TablePetugas.FieldByName('Kode_petugas').AsString);
    ComboBoxPtgsDataPenjualan.Items.Add(TablePetugas.fieldByname('Kode_petugas').AsString);
    ComboBoxPetugasEP.Items.Add(TablePetugas.FieldByName('Kode_petugas').AsString);
    TablePetugas.Next;
  end;
  TablePetugas.First;

  ComboBoxStatusEP.Items.Clear;
  ComboBoxStatusEP.Items.Add('Active');
  ComboBoxStatusEP.Items.Add('Deactive');

  CounterNomor;

  ComboBoxKodeDataPenjualan.Items.Clear;
  ComboBoxKOEditO.Items.Clear;
  TableObat.IndexName := 'index_obat';
  while not TableObat.Eof do
    begin
      ComboBoxKodeDataPenjualan.Items.Add(TableObat.fieldByname('Kode_obat').AsString);
      ComboBoxKOEditO.Items.Add(TableObat.fieldByname('Kode_obat').AsString);
      TableObat.Next;
    end;
  TableObat.First;

  //TableDokter.Refresh;
  ComboBoxEditDokter1.Items.Clear;
  TableDokter.IndexName := 'index_dokter';
  while not TableDokter.Eof do
  begin
    ComboBoxEditDokter1.Items.Add(TableDokter.FieldByName('Kode_Dokter').AsString);
    TableDokter.Next;
  end;
  TableDokter.First;
end;

// *------------------------------------------------------------------------* //
// FORM MENU UTAMA
// Data Dokter
procedure TRumahSakitBakhtiar.DataDokter1Click(Sender: TObject);
var no_dokter : String;
var ada_dokter : Integer;
begin

  TableDokter.Filtered := False;
  TableDokter.Refresh;
  ada_dokter := TableDokter.RecordCount;
  if ada_dokter = 0 then
     begin
        no_dokter := 'B0001';
     end
  else
     begin
        no_dokter := 'B' + AddLeadingZeroes(ada_dokter+1, 4);
     end;

  EditKodeDokter.Text := no_dokter;


  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := True;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;
end;

// Edit Dokter
procedure TRumahSakitBakhtiar.EditDokter1Click(Sender: TObject);
begin
  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := True;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;

  TableDokter.Refresh;
  ComboBoxEditDokter1.Items.Clear;
  TableDokter.IndexName := 'index_dokter';
  while not TableDokter.Eof do
  begin
    ComboBoxEditDokter1.Items.Add(TableDokter.FieldByName('Kode_Dokter').AsString);
    TableDokter.Next;
  end;
  TableDokter.First;
end;

// Cari Dokter
procedure TRumahSakitBakhtiar.CariDokter1Click(Sender: TObject);
begin
  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := True;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;

end;

// Report Dokter
procedure TRumahSakitBakhtiar.View1Click(Sender: TObject);
begin
  TableDokter.Refresh;
  TableDokter.Filtered:= False;
  QuickRepDokter.Preview;
end;

procedure TRumahSakitBakhtiar.Print1Click(Sender: TObject);
begin
  TableDokter.Refresh;
  TableDokter.Filtered:= False;
  QuickRepDokter.Print;
end;

// Report Obat
procedure TRumahSakitBakhtiar.View2Click(Sender: TObject);
begin
  TableObat.Refresh;
  TableObat.Filtered:= False;
  QuickRepObat.Preview;
end;

procedure TRumahSakitBakhtiar.Print2Click(Sender: TObject);
begin
  TableObat.Refresh;
  TableObat.Filtered:= False;
  QuickRepObat.Print;
end;

// Report Petugas
procedure TRumahSakitBakhtiar.View4Click(Sender: TObject);
begin
  TablePetugas.Refresh;
  TablePetugas.Filtered:= False;
  QuickRepPetugas.Preview;
end;

procedure TRumahSakitBakhtiar.Print4Click(Sender: TObject);
begin
  TablePetugas.Refresh;
  TablePetugas.Filtered:= False;
  QuickRepPetugas.Print;
end;

// Report Penjualan
procedure TRumahSakitBakhtiar.View3Click(Sender: TObject);
begin
  TablePenjualan.Refresh;
  TablePenjualan.Filtered:= False;
  QuickRepPenjualan.Preview;
end;

procedure TRumahSakitBakhtiar.Print3Click(Sender: TObject);
begin
  TablePenjualan.Refresh;
  TablePenjualan.Filtered:= False;
  QuickRepPenjualan.Print;
end;

// Data Obat
procedure TRumahSakitBakhtiar.DataObat2Click(Sender: TObject);
var no_obat : String;
var ada_obat : Integer;
begin

  TableObat.Filtered := False;
  TableObat.Refresh;
  ada_obat := TableObat.RecordCount;
  if ada_obat = 0 then
     begin
        no_obat := 'A001';
     end
  else
     begin
        no_obat := 'A' + AddLeadingZeroes(ada_obat+1, 3);
     end;

  EditKodeObat1.Text := no_obat;


  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := True;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;
end;

// Edit Obat
procedure TRumahSakitBakhtiar.EditObat1Click(Sender: TObject);
begin
  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := True;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;

  ComboBoxKOEditO.Items.Clear;
  TableObat.Refresh;
  TableObat.Filtered := false;
  TableObat.IndexName := 'index_obat';
  while not TableObat.Eof do
    begin
      ComboBoxKOEditO.Items.Add(TableObat.fieldByname('Kode_obat').AsString);
      TableObat.Next;
    end;
  TableObat.First;
end;

// Cari Obat
procedure TRumahSakitBakhtiar.CariObat1Click(Sender: TObject);
begin
  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := True;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;
end;

// Data petugas
procedure TRumahSakitBakhtiar.DataPetugas1Click(Sender: TObject);
var no_petugas : String;
var ada_petugas : Integer;
begin

  TablePetugas.Filtered := False;
  TablePetugas.Refresh;
  ada_petugas := TablePetugas.RecordCount;
  if ada_petugas = 0 then
     begin
        no_petugas := 'C001';
     end
  else
     begin
        no_petugas := 'C' + AddLeadingZeroes(ada_petugas+1, 3);
     end;

  EditKodeDataPetugas.Text := no_petugas;

  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := True;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;
end;

// Edit petugas
procedure TRumahSakitBakhtiar.EditPetugas1Click(Sender: TObject);
begin
  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := True;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;

  ComboBoxEditPetugas.Items.Clear;
  TablePetugas.Refresh;
  TablePetugas.Filtered := false;
  TablePetugas.IndexName := 'index_petugas';
  while not TablePetugas.Eof do
  begin
    ComboBoxEditPetugas.Items.Add(TablePetugas.FieldByName('Kode_petugas').AsString);
    TablePetugas.Next;
  end;
  TablePetugas.First;
end;

// Cari petugas
procedure TRumahSakitBakhtiar.CariPetugas1Click(Sender: TObject);
begin
  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := False;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := True;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;
end;

// Data penjualan
procedure TRumahSakitBakhtiar.DataPenjualan1Click(Sender: TObject);
begin
  PanelWelcome.Visible := False;

  PanelInputDataDokter.Visible := False;
  PanelInputDataObat.Visible := False;
  PanelInputDataPetugas.Visible := False;
  PanelInputDataPenjualan.Visible := True;

  PanelEditDokter.Visible := False;
  PanelEditObat.Visible := False;
  PanelEditPetugas.Visible := False;
  PanelEditPenjualan.Visible := False;

  PanelCariDokter.Visible := False;
  PanelCariObat.Visible := False;
  PanelCariPetugas.Visible := False;
  Panel13.Visible := False;

  PanelLaporanDokter.Visible := False;
  PanelLaporanObat.Visible := False;
  PanelLaporanPetugas.Visible := False;
  PanelLaporanPenjualan.Visible := False;

  PanelCetakBon.Visible := False;

  Panel18.Visible := False;

  ComboBoxPtgsDataPenjualan.Items.Clear;
  TablePetugas.Refresh;
  TablePetugas.Filtered := false;
  TablePetugas.IndexName := 'index_petugas';
  while not TablePetugas.Eof do
  begin
    ComboBoxPtgsDataPenjualan.Items.Add(TablePetugas.fieldByname('Kode_petugas').AsString);
    TablePetugas.Next;
  end;
  TablePetugas.First;

  ComboBoxKodeDataPenjualan.Items.Clear;
  TableObat.Refresh;
  TableObat.Filtered := False;
  TableObat.IndexName := 'index_obat';
  while not TableObat.Eof do
  begin
    ComboBoxKodeDataPenjualan.Items.Add(TableObat.fieldByname('Kode_obat').AsString);
    TableObat.Next;
  end;
  TableObat.First;
end;

// EXIT MENU
procedure TRumahSakitBakhtiar.Exit1Click(Sender: TObject);
begin
  Close;
end;

// *------------------------------------------------------------------------* //
// FORM EDIT/INPUT DOKTER
procedure TRumahSakitBakhtiar.SimpanClick(Sender: TObject);
var no_dokter : String;
var ada_dokter : Integer;
begin

  TableDokter.Append;
  TableDokter.FieldByName('Kode_Dokter').AsString:=EditKodeDokter.Text;
  TableDokter.FieldByName('Nama_Dokter').AsString:=EditNamaDokter.Text;
  TableDokter.FieldByName('Alamat_Dokter').AsString:=EditAlamatDokter.Text;
  TableDokter.FieldByName('Spesialis_Dokter').AsString:=EditSpesialisDokter.Text;
  TableDokter.Post;

  TableDokter.Filtered := False;
  TableDokter.Refresh;
  ada_dokter := TableDokter.RecordCount;
  if ada_dokter = 0 then
     begin
        no_dokter := 'B0001';
     end
  else
     begin
        no_dokter := 'B' + AddLeadingZeroes(ada_dokter+1, 4);
     end;

  EditKodeDokter.Text := no_dokter;
  EditNamaDokter.Text:='';
  EditAlamatDokter.Text:='';
  EditSpesialisDokter.Text:='';
  EditNamaDokter.SetFocus;
end;

procedure TRumahSakitBakhtiar.BatalClick(Sender: TObject);
begin
  EditNamaDokter.Text:='';
  EditAlamatDokter.Text:='';
  EditSpesialisDokter.Text:='';
  EditNamaDokter.SetFocus;
end;

procedure TRumahSakitBakhtiar.KeluarClick(Sender: TObject);
begin
   PanelWelcome.Visible:= True;
end;

// *------------------------------------------------------------------------* //
// FORM DATA/INPUT OBAT
procedure TRumahSakitBakhtiar.ButtonSimpanObat1Click(Sender: TObject);
var no_obat : String;
var ada_obat : Integer;
begin

  TableObat.Append;
  TableObat.FieldByName('Kode_obat').AsString:=EditKodeObat1.Text;
  TableObat.FieldByName('Nama_obat').AsString:=EditNamaObat1.Text;
  TableObat.FieldByName('Jenis_obat').AsString:=ComboBoxJenisObat.Text;
  TableObat.FieldByName('Kemasan_obat').AsString:=ComboBoxKemasanObat.Text;
  TableObat.FieldByName('Dosis_obat').AsString:=EditDosisObat1.Text;
  TableObat.FieldByName('Isi_obat').AsString:=EditIsiObat1.Text;
  TableObat.FieldByName('Banyak_obat').AsString:=EditBanyakObat1.Text;
  TableObat.FieldByName('Banyak_dus_obat').AsString:=EditBanyakDusObat1.Text;
  TableObat.FieldByName('Produksi_obat').AsString:=EditProduksiObat1.Text;
  TableObat.FieldByName('Tgl_kadaluarsa_obat').AsString:=DateToStr(DateTimePickerKadaluarsaObat1.Date);
  TableObat.FieldByName('Tgl_masuk_obat').AsString:=FormatDateTime('mm/dd/yyyy', Now);
  TableObat.FieldByName('Deskripsi_obat').AsString:=MemoDeskripsiObat1.Text;
  TableObat.FieldByName('Harga_satuan_obat').AsString:=EditHargaObat1.Text;
  TableObat.Post;

  TableObat.Filtered := False;
  TableObat.Refresh;
  ada_obat := TableObat.RecordCount;
  if ada_obat = 0 then
     begin
        no_obat := 'A001';
     end
  else
     begin
        no_obat := 'A' + AddLeadingZeroes(ada_obat+1, 3);
     end;

  EditKodeObat1.Text := no_obat;
  EditNamaObat1.Text:='';
  EditDosisObat1.Text:='';
  EditIsiObat1.Text:='';
  EditBanyakObat1.Text:='';
  EditBanyakDusObat1.Text:='';
  EditProduksiObat1.Text:='';
  EditHargaObat1.Text:='';
  MemoDeskripsiObat1.Text:='';
  ComboBoxJenisObat.ClearSelection;
  ComboBoxKemasanObat.Clear;
  DateTimePickerKadaluarsaObat1.Date := Now;
  EditNamaObat1.SetFocus;
end;

procedure TRumahSakitBakhtiar.ButtonBatalObatClick(Sender: TObject);
begin
  EditNamaObat1.Text:='';
  EditDosisObat1.Text:='';
  EditIsiObat1.Text:='';
  EditBanyakObat1.Text:='';
  EditBanyakDusObat1.Text:='';
  EditProduksiObat1.Text:='';
  EditHargaObat1.Text:='';
  MemoDeskripsiObat1.Text:='';
  ComboBoxJenisObat.ClearSelection;
  ComboBoxKemasanObat.Clear;
  DateTimePickerKadaluarsaObat1.Date := Now;
  EditNamaObat1.SetFocus;
end;

procedure TRumahSakitBakhtiar.ComboBoxJenisObatSelect(Sender: TObject);
begin
  if (ComboBoxJenisObat.ItemIndex = 0) then  // Cair obat minum
    begin
      ComboBoxKemasanObat.Items.Add('Botol');
    end;
  if (ComboBoxJenisObat.ItemIndex = 1) then  // Cair obat suntik
    begin
      ComboBoxKemasanObat.Items.Add('Ampul');
      ComboBoxKemasanObat.Items.Add('Vial');
      ComboBoxKemasanObat.Items.Add('Prefilled');
    end;
  if (ComboBoxJenisObat.ItemIndex = 2) then  // Krim
    begin
      ComboBoxKemasanObat.Items.Add('Tube');
    end;
  if (ComboBoxJenisObat.ItemIndex = 3) then  // Injeksi
    begin
      ComboBoxKemasanObat.Items.Add('Ampul');
      ComboBoxKemasanObat.Items.Add('Vial');
      ComboBoxKemasanObat.Items.Add('Prefilled');
    end;
  if (ComboBoxJenisObat.ItemIndex = 4) then  // Infus
    begin
      ComboBoxKemasanObat.Items.Add('Botol');
      ComboBoxKemasanObat.Items.Add('Vial');
    end;
  if (ComboBoxJenisObat.ItemIndex = 5) then   //  Sirup
    begin
      ComboBoxKemasanObat.Items.Add('Botol');
    end;
  if (ComboBoxJenisObat.ItemIndex = 6) then   // Kapsul
    begin
      ComboBoxKemasanObat.Items.Add('Blister');
      ComboBoxKemasanObat.Items.Add('Botol');
      ComboBoxKemasanObat.Items.Add('Prefilled');
      ComboBoxKemasanObat.Items.Add('Strip');
    end;
  if (ComboBoxJenisObat.ItemIndex = 7) then   // Kaptab
    begin
      ComboBoxKemasanObat.Items.Add('Amplop');
      ComboBoxKemasanObat.Items.Add('Strip');
      ComboBoxKemasanObat.Items.Add('Blister');
    end;
  if (ComboBoxJenisObat.ItemIndex = 8) then   // Tablet
    begin
      ComboBoxKemasanObat.Items.Add('Botol');
      ComboBoxKemasanObat.Items.Add('Blister');
      ComboBoxKemasanObat.Items.Add('Strip');
    end;
  if (ComboBoxJenisObat.ItemIndex = 9) then  // Inhaler
    begin
      ComboBoxKemasanObat.Items.Add('Botol');
    end;
  if (ComboBoxJenisObat.ItemIndex = 10) then  // Tetes mata
    begin
      ComboBoxKemasanObat.Items.Add('Botol');
    end;
end;

procedure TRumahSakitBakhtiar.ComboBoxJenisObatClick(Sender: TObject);
begin
  ComboBoxKemasanObat.Clear;
end;

// *------------------------------------------------------------------------* //
// FORM EDIT DOKTER
procedure TRumahSakitBakhtiar.ButtonSimpanEditDokterClick(Sender: TObject);
begin
  TableDokter.Edit;
  TableDokter.FieldByName('Nama_Dokter').AsString := EditNamaEditDokter.Text;
  TableDokter.FieldByName('Alamat_Dokter').AsString := EditAlamatEditDOkter.Text;
  TableDokter.FieldByName('Spesialis_Dokter').AsString := EditSpesialisEditDokter.Text;
  TableDokter.Post;
  ComboBoxEditDokter1.Text := '';
  EditNamaEditDokter.Text := '';
  EditAlamatEditDOkter.Text := '';
  EditSpesialisEditDokter.Text := '';
  ComboBoxEditDokter1.SetFocus;
end;

procedure TRumahSakitBakhtiar.ComboBoxEditDokter1Change(Sender: TObject);
var ada : boolean;
begin
  ada := TableDokter.FindKey([ComboBoxEditDokter1.Text]);
  if ada then
    begin
      EditNamaEditDokter.Text := TableDokter.FieldByName('Nama_Dokter').AsString;
      EditAlamatEditDOkter.Text := TableDokter.FieldByName('Alamat_Dokter').AsString;
      EditSpesialisEditDokter.Text := TableDokter.FieldByName('Spesialis_Dokter').AsString;
    end;
end;

procedure TRumahSakitBakhtiar.ButtonHapusEditDokterClick(Sender: TObject);
var s : array[0..255] of char;
begin
  StrPCopy(s, Format('Yakin data kode dokter %s akan dihapus ?', [TableDokter.Fields[0].AsString]));
  if (Application.MessageBox(s, 'Peringatan', MB_YESNO or MB_ICONQUESTION)= IDYES) then
  begin
    ComboBoxEditDokter1.Items.Delete(ComboBoxEditDokter1.ItemIndex);
    TableDokter.Delete;
    EditNamaEditDokter.Text := '';
    EditAlamatEditDOkter.Text := '';
    EditSpesialisEditDokter.Text := '';
    ComboBoxEditDokter1.Text := '';
    ComboBoxEditDokter1.SetFocus;
  end;
end;

procedure TRumahSakitBakhtiar.ButtonKeluarEditDokterClick(Sender: TObject);
begin
  PanelWelcome.Visible := True;
  PanelEditDokter.Visible := False;
end;

// *------------------------------------------------------------------------* //
// FORM CARI DOKTER
procedure TRumahSakitBakhtiar.ButtonCariDokterClick(Sender: TObject);
var ada : Boolean;
begin
  if RadioGroupCariDokter.ItemIndex = 0 then
    begin
      TableDokter.SetKey;
      ada := TableDokter.FindKey([EditCariDokter.Text]);
      if ada then
        begin
          TableDokter.GotoNearest;
          DBGridCariDokter.SetFocus;
        end
      else
        begin
          MessageDlg('Data tidak ditemukan' ,mtWarning, [mbOK],0);
        end;
  end
  else if RadioGroupCariDokter.ItemIndex = 1 then
    begin
      TableDokter.IndexName := 'index_nama_dokter';
      ada := TableDokter.FindKey([EditCariDokter.Text]);
      if ada then
        begin
          TableDokter.GotoNearest;
          DBGridCariDokter.SetFocus;
        end
      else
        begin
          MessageDlg('Data tidak ditemukan', mtWarning, [mbOK], 0);
        end;
    end;
end;

procedure TRumahSakitBakhtiar.ButtonKeluarCariDokterClick(Sender: TObject);
begin
  PanelCariDokter.Visible := False;
end;

// *------------------------------------------------------------------------* //
// FORM EDIT OBAT
procedure TRumahSakitBakhtiar.ButtonSimpanEditOClick(Sender: TObject);
begin
  TableObat.Edit;
  TableObat.FieldByName('Nama_Obat').AsString := EditNamaEditO.Text;
  TableObat.FieldByName('Dosis_obat').AsString := EditDosisEditO.Text;
  TableObat.FieldByName('Isi_obat').AsString := EditIsiEditO.Text;
  TableObat.FieldByName('Banyak_obat').AsString := EditBanyakEditO.Text;
  TableObat.FieldByName('Banyak_dus_obat').AsString := EditBanyakDusEditO.Text;
  TableObat.FieldByName('Produksi_obat').AsString := EditProduksiEditO.Text;
  TableObat.FieldByName('Harga_satuan_obat').AsString := EditHargaEditO.Text;
  TableObat.FieldByName('Jenis_obat').AsString := ComboBoxJEditO.Text;
  TableObat.FieldByName('Kemasan_obat').AsString := ComboBoxKEditO.Text;
  TableObat.FieldByName('Deskripsi_obat').AsString := MemoEditO.Text;
  TableObat.FieldByName('Tgl_kadaluarsa_obat').AsString := DateToStr(DateTimePickerEditO.Date);
  TableObat.Post;
  EditNamaEditO.Text:='';
  EditDosisEditO.Text:='';
  EditIsiEditO.Text:='';
  EditBanyakEditO.Text:='';
  EditBanyakDusEditO.Text:='';
  EditProduksiEditO.Text:='';
  EditHargaEditO.Text:='';
  MemoEditO.Text:='';
  ComboBoxJEditO.Text := '';
  ComboBoxKOEditO.Text := '';
  ComboBoxJEditO.ClearSelection;
  ComboBoxKEditO.Clear;
  DateTimePickerEditO.Date := Now;
  ComboBoxKOEditO.SetFocus;
end;

procedure TRumahSakitBakhtiar.ComboBoxJEditOChange(Sender: TObject);
begin
  if (ComboBoxJEditO.ItemIndex = 0) then  // Cair obat minum
    begin
      ComboBoxKEditO.Items.Add('Botol');
    end;
  if (ComboBoxJEditO.ItemIndex = 1) then  // Cair obat suntik
    begin
      ComboBoxKEditO.Items.Add('Ampul');
      ComboBoxKEditO.Items.Add('Vial');
      ComboBoxKEditO.Items.Add('Prefilled');
    end;
  if (ComboBoxJEditO.ItemIndex = 2) then  // Krim
    begin
      ComboBoxKEditO.Items.Add('Tube');
    end;
  if (ComboBoxJEditO.ItemIndex = 3) then  // Injeksi
    begin
      ComboBoxKEditO.Items.Add('Ampul');
      ComboBoxKEditO.Items.Add('Vial');
      ComboBoxKEditO.Items.Add('Prefilled');
    end;
  if (ComboBoxJEditO.ItemIndex = 4) then  // Infus
    begin
      ComboBoxKEditO.Items.Add('Botol');
      ComboBoxKEditO.Items.Add('Vial');
    end;
  if (ComboBoxJEditO.ItemIndex = 5) then   //  Sirup
    begin
      ComboBoxKEditO.Items.Add('Botol');
    end;
  if (ComboBoxJEditO.ItemIndex = 6) then   // Kapsul
    begin
      ComboBoxKEditO.Items.Add('Blister');
      ComboBoxKEditO.Items.Add('Botol');
      ComboBoxKEditO.Items.Add('Prefilled');
      ComboBoxKEditO.Items.Add('Strip');
    end;
  if (ComboBoxJEditO.ItemIndex = 7) then   // Kaptab
    begin
      ComboBoxKEditO.Items.Add('Amplop');
      ComboBoxKEditO.Items.Add('Strip');
      ComboBoxKEditO.Items.Add('Blister');
    end;
  if (ComboBoxJEditO.ItemIndex = 8) then   // Tablet
    begin
      ComboBoxKEditO.Items.Add('Botol');
      ComboBoxKEditO.Items.Add('Blister');
      ComboBoxKEditO.Items.Add('Strip');
    end;
  if (ComboBoxJEditO.ItemIndex = 9) then  // Inhaler
    begin
      ComboBoxKEditO.Items.Add('Botol');
    end;
  if (ComboBoxJEditO.ItemIndex = 10) then  // Tetes mata
    begin
      ComboBoxKEditO.Items.Add('Botol');
    end;
end;

procedure TRumahSakitBakhtiar.ComboBoxKOEditOChange(Sender: TObject);
var ada : boolean;
begin
  ada := TableObat.FindKey([ComboBoxKOEditO.Text]);
  if ada then
    begin
      EditNamaEditO.Text := TableObat.FieldByName('Nama_Obat').AsString;
      EditDosisEditO.Text := TableObat.FieldByName('Dosis_obat').AsString;
      EditIsiEditO.Text := TableObat.FieldByName('Isi_Obat').AsString;
      EditBanyakEditO.Text := TableObat.FieldByName('Banyak_obat').AsString;
      EditBanyakDusEditO.Text := TableObat.FieldByName('Banyak_dus_obat').AsString;
      EditProduksiEditO.Text := TableObat.FieldByName('Produksi_obat').AsString;
      EditHargaEditO.Text := TableObat.FieldByName('Harga_satuan_obat').AsString;
      ComboBoxJEditO.Text := TableObat.FieldByName('Jenis_obat').AsString;

  if (ComboBoxJEditO.Text = 'Cair obat minum') then  // Cair obat minum
    begin
      ComboBoxKEditO.Items.Add('Botol');
    end;
  if (ComboBoxJEditO.Text = 'Cair obat suntik') then  // Cair obat suntik
    begin
      ComboBoxKEditO.Items.Add('Ampul');
      ComboBoxKEditO.Items.Add('Vial');
      ComboBoxKEditO.Items.Add('Prefilled');
    end;
  if (ComboBoxJEditO.Text = 'Krim') then  // Krim
    begin
      ComboBoxKEditO.Items.Add('Tube');
    end;
  if (ComboBoxJEditO.Text = 'Injeksi') then  // Injeksi
    begin
      ComboBoxKEditO.Items.Add('Ampul');
      ComboBoxKEditO.Items.Add('Vial');
      ComboBoxKEditO.Items.Add('Prefilled');
    end;
  if (ComboBoxJEditO.Text = 'Infus') then  // Infus
    begin
      ComboBoxKEditO.Items.Add('Botol');
      ComboBoxKEditO.Items.Add('Vial');
    end;
  if (ComboBoxJEditO.Text = 'Sirup') then   //  Sirup
    begin
      ComboBoxKEditO.Items.Add('Botol');
    end;
  if (ComboBoxJEditO.Text = 'Kapsul') then   // Kapsul
    begin
      ComboBoxKEditO.Items.Add('Blister');
      ComboBoxKEditO.Items.Add('Botol');
      ComboBoxKEditO.Items.Add('Prefilled');
      ComboBoxKEditO.Items.Add('Strip');
    end;
  if (ComboBoxJEditO.Text = 'Kaptab') then   // Kaptab
    begin
      ComboBoxKEditO.Items.Add('Amplop');
      ComboBoxKEditO.Items.Add('Strip');
      ComboBoxKEditO.Items.Add('Blister');
    end;
  if (ComboBoxJEditO.Text = 'Tablet') then   // Tablet
    begin
      ComboBoxKEditO.Items.Add('Botol');
      ComboBoxKEditO.Items.Add('Blister');
      ComboBoxKEditO.Items.Add('Strip');
    end;
  if (ComboBoxJEditO.Text = 'Inhaler') then  // Inhaler
    begin
      ComboBoxKEditO.Items.Add('Botol');
    end;
  if (ComboBoxJEditO.Text = 'Tetes mata') then  // Tetes mata
    begin
      ComboBoxKEditO.Items.Add('Botol');
    end;


      ComboBoxKEditO.Text := TableObat.FieldByName('Kemasan_obat').AsString;
      MemoEditO.Text := TableObat.FieldByName('Deskripsi_obat').AsString;
      DateTimePickerEditO.Date := TableObat.FieldByName('Tgl_kadaluarsa_obat').AsDateTime;
    end;
end;

procedure TRumahSakitBakhtiar.ComboBoxJEditOClick(Sender: TObject);
begin
  ComboBoxKEditO.Clear;
end;

procedure TRumahSakitBakhtiar.ButtonHapusEditOClick(Sender: TObject);
var s : array[0..255] of char;
begin
  StrPCopy(s, Format('Yakin data kode obat %s akan dihapus ?', [TableObat.Fields[0].AsString]));
  if (Application.MessageBox(s, 'Peringatan', MB_YESNO or MB_ICONQUESTION)= IDYES) then
  begin
    ComboBoxKOEditO.Items.Delete(ComboBoxKOEditO.ItemIndex);
    TableObat.Delete;
    EditNamaEditO.Text:='';
    EditDosisEditO.Text:='';
    EditIsiEditO.Text:='';
    EditBanyakEditO.Text:='';
    EditBanyakDusEditO.Text:='';
    EditProduksiEditO.Text:='';
    EditHargaEditO.Text:='';
    MemoEditO.Text:='';
    ComboBoxJEditO.Text := '';
    ComboBoxJEditO.ClearSelection;
    ComboBoxKEditO.Clear;
    DateTimePickerEditO.Date := Now;
    ComboBoxKOEditO.SetFocus;
    end;
end;

procedure TRumahSakitBakhtiar.ButtonKeluarEditOClick(Sender: TObject);
begin
  PanelEditObat.Visible := False;
end;

// *------------------------------------------------------------------------* //
// FORM CARI OBAT
procedure TRumahSakitBakhtiar.ButtonCariObatClick(Sender: TObject);
var ada : Boolean;
begin
  if RadioGroupCariObat.ItemIndex = 0 then
    begin
      TableObat.SetKey;
      ada := TableObat.FindKey([EditDataCariObat.Text]);
      if ada then
        begin
          TableObat.GotoNearest;
          DBGridCariObat.SetFocus;
        end
      else
        begin
          MessageDlg('Data tidak ditemukan' ,mtWarning, [mbOK],0);
        end;
    end
  else if RadioGroupCariObat.ItemIndex = 1 then
    begin
      TableObat.IndexName := 'index_nama_obat';
      ada := TableObat.FindKey([EditDataCariObat.Text]);
      if ada then
        begin
          TableObat.GotoNearest;
          DBGridCariObat.SetFocus;
        end
      else
        begin
          MessageDlg('Data tidak ditemukan', mtWarning, [mbOK], 0);
        end;
    end
  else if RadioGroupCariObat.ItemIndex = 2 then
    begin
      TableObat.IndexName := 'index_produksi_obat';
      ada := TableObat.FindKey([EditDataCariObat.Text]);
      if ada then
        begin
          TableObat.GotoNearest;
          DBGridCariObat.SetFocus;
        end
      else
        begin
          MessageDlg('Data tidak ditemukan', mtWarning, [mbOK], 0);
        end;
    end;
end;

procedure TRumahSakitBakhtiar.ButtonKeluarCariOClick(Sender: TObject);
begin
  PanelCariObat.Visible := False;
end;

// *------------------------------------------------------------------------* //
// FORM DATA PETUGAS

procedure TRumahSakitBakhtiar.ButtonSimpanDataPtgsClick(Sender: TObject);
var ini, no_petugas : String;
var ada_petugas : Integer;
begin

  if RadioGroupKelaminPetugas.ItemIndex = 0 then
    begin
      ini := 'Laki-laki';
    end
  else
    begin
      ini := 'Perempuan';
    end;

  TablePetugas.Append;
  TablePetugas.FieldByName('Kode_petugas').AsString:=EditKodeDataPetugas.Text;
  TablePetugas.FieldByName('Nama_petugas').AsString:=EditNamaDataPetugas.Text;
  TablePetugas.FieldByName('Alamat_petugas').AsString:=EditAlamatDataPetugas.Text;
  TablePetugas.FieldByName('Telp_petugas').AsString:=EditTelpDataPetugas.Text;
  TablePetugas.FieldByName('Kelamin_petugas').AsString:= ini;
  TablePetugas.FieldByName('Tanggal_lahir_petugas').AsString:=DateToStr(DateTimePickerLhrDataPtgs.Date);
  TablePetugas.FieldByName('Tanggal_masuk_petugas').AsString:=FormatDateTime('mm/dd/yyyy', Now);
  TablePetugas.FieldByName('Status_petugas').AsString:='Active';
  TablePetugas.Post;

  TablePetugas.Filtered := False;
  TablePetugas.Refresh;
  ada_petugas := TablePetugas.RecordCount;
  if ada_petugas = 0 then
     begin
        no_petugas := 'C001';
     end
  else
     begin
        no_petugas := 'C' + AddLeadingZeroes(ada_petugas+1, 3);
     end;
     
  EditKodeDataPetugas.Text := no_petugas;
  EditNamaDataPetugas.Text:='';
  EditAlamatDataPetugas.Text:='';
  EditTelpDataPetugas.Text:='';
  DateTimePickerLhrDataPtgs.Date := Now;
  EditNamaDataPetugas.SetFocus;
end;

procedure TRumahSakitBakhtiar.ButtonBatalDataPtgsClick(Sender: TObject);
begin
  EditNamaDataPetugas.Text:='';
  EditAlamatDataPetugas.Text:='';
  EditTelpDataPetugas.Text:='';
  DateTimePickerLhrDataPtgs.Date := StrToDate('1/1/1990');
  EditNamaDataPetugas.SetFocus;
end;

// *------------------------------------------------------------------------* //
// FORM EDIT PETUGAS

procedure TRumahSakitBakhtiar.ButtonSEPetugasClick(Sender: TObject);
var ini : String;
begin

  if RadioGroupKEP.ItemIndex = 0 then
    begin
      ini := 'Laki-laki';
    end
  else
    begin
      ini := 'Perempuan';
    end;

  TablePetugas.Edit;
  TablePetugas.FieldByName('Nama_petugas').AsString := EditNamaEditPetugas.Text;
  TablePetugas.FieldByName('Alamat_petugas').AsString := EditAlamatEditPetugas.Text;
  TablePetugas.FieldByName('Telp_petugas').AsString := EditTelpEditPetugas.Text;
  TablePetugas.FieldByName('Status_petugas').AsString := ComboBoxStatusEP.Text;
  TablePetugas.FieldByName('Kelamin_petugas').AsString := ini;
  TablePetugas.FieldByName('Tanggal_lahir_petugas').AsString := DateToStr(DateTimePickerEditPetugas.Date);
  TablePetugas.Post;
  EditNamaEditPetugas.Text:='';
  EditAlamatEditPetugas.Text:='';
  EditTelpEditPetugas.Text:='';
  ComboBoxStatusEP.Text:='';
  ComboBoxEditPetugas.Text := '';
  DateTimePickerEditPetugas.Date := StrToDate('1/1/1990');
  ComboBoxEditPetugas.SetFocus;
end;

procedure TRumahSakitBakhtiar.ComboBoxEditPetugasClick(Sender: TObject);
var ada : boolean;
var ini : string;
begin
  ada := TablePetugas.FindKey([ComboBoxEditPetugas.Text]);
  if ada then
    begin
      EditNamaEditPetugas.Text := TablePetugas.FieldByName('Nama_petugas').AsString;
      EditAlamatEditPetugas.Text := TablePetugas.FieldByName('Alamat_petugas').AsString;
      EditTelpEditPetugas.Text := TablePetugas.FieldByName('Telp_petugas').AsString;
      ComboBoxStatusEP.Text := TablePetugas.FieldByName('Status_petugas').AsString;
      DateTimePickerEditPetugas.Date := TablePetugas.FieldByName('Tanggal_lahir_petugas').AsDateTime;
      ini := TablePetugas.FieldByName('Kelamin_petugas').AsString;
      if ini = 'Perempuan' then ini := '1' else ini := '0';
      RadioGroupKEP.ItemIndex := StrToInt(ini);
    end;
end;

procedure TRumahSakitBakhtiar.ButtonHEPetugasClick(Sender: TObject);
var s : array[0..255] of char;
begin
  StrPCopy(s, Format('Yakin data kode petugas %s akan dihapus ?', [TablePetugas.Fields[0].AsString]));
  if (Application.MessageBox(s, 'Peringatan', MB_YESNO or MB_ICONQUESTION)= IDYES) then
  begin
    ComboBoxEditPetugas.Items.Delete(ComboBoxEditPetugas.ItemIndex);
    TablePetugas.Delete;
    EditNamaEditPetugas.Text:='';
    EditAlamatEditPetugas.Text:='';
    EditTelpEditPetugas.Text:='';
    ComboBoxStatusEP.Text:='';
    DateTimePickerEditPetugas.Date := StrToDate('1/1/1990');
    ComboBoxEditPetugas.SetFocus;
  end;
end;

// *------------------------------------------------------------------------* //
// FORM CARI PETUGAS


procedure TRumahSakitBakhtiar.ButtonCariDataPetugasClick(Sender: TObject);
var ada : Boolean;
begin
  if RadioGroupCariPetugas.ItemIndex = 0 then
    begin
      TablePetugas.SetKey;
      ada := TablePetugas.FindKey([EditDataCariPetugas.Text]);
      if ada then
        begin
          TablePetugas.GotoNearest;
          DBGridCariPetugas.SetFocus;
        end
      else
        begin
          MessageDlg('Data tidak ditemukan' ,mtWarning, [mbOK],0);
        end;
    end
  else if RadioGroupCariPetugas.ItemIndex = 1 then
    begin
      TablePetugas.IndexName := 'index_nama_petugas';
      ada := TablePetugas.FindKey([EditDataCariPetugas.Text]);
      if ada then
        begin
          TablePetugas.GotoNearest;
          DBGridCariPetugas.SetFocus;
        end
      else
        begin
          MessageDlg('Data tidak ditemukan', mtWarning, [mbOK], 0);
        end;
    end
  else if RadioGroupCariPetugas.ItemIndex = 2 then
    begin
      TablePetugas.IndexName := 'index_telf_petugas';
      ada:= TablePetugas.FindKey([EditDataCariPetugas.Text]);
      if ada then
        begin
          TablePetugas.GotoNearest;
          DBGridCariPetugas.SetFocus;
        end
      else
        begin
          MessageDlg('Data tidak ditemukan.', mtWarning, [mbOK], 0);
        end;
    end;
end;

// *------------------------------------------------------------------------* //
// FORM DATA PENJUALAN

procedure TRumahSakitBakhtiar.ButtonTODataPenjualanClick(Sender: TObject);
var no_terjual : String;
var no_ada : Integer;
begin
  Button3.Enabled := true;
  Button4.Enabled := true;
  ButtonOutDataPenjualan.Enabled := true;
  TableTerjual.Filtered := False;
  no_ada := TableTerjual.RecordCount;
  if no_ada = 0 then
     begin
        no_terjual := 'G001';
     end
  else
     begin
        no_terjual := 'G' + AddLeadingZeroes(no_ada+1, 3);
     end;


  TableTerjual.Filter := 'No_bon=' + EditNoBonDataPenjualan.Text;
  TableTerjual.Filtered := True;

  if (EditHODataPenjualan.Text = '') or (EditHODataPenjualan.Text = '0') then
  else
    begin
  TableTerjual.Append;
  TableTerjual.FieldByName('No_terjual').AsString := no_terjual;
  TableTerjual.FieldByName('No_bon').AsString:= EditNoBonDataPenjualan.Text;
  TableTerjual.FieldByName('Kode_obat').AsString:= ComboBoxKodeDataPenjualan.Text;
  TableTerjual.FieldByName('Harga').AsString:= EditHODataPenjualan.Text;
  TableTerjual.FieldByName('Jumlah').AsString:= EditBODataPenjualan.Text;
  TableTerjual.FieldByName('SubTotal').AsString:= EditSTDataPenjualan.Text;
  TableTerjual.FieldByName('Nama_obat').AsString := EditNMODataPenjualan.Text;
  TableTerjual.Post;

  Query1.Close;
  Query1.Params[0].AsString := EditNoBonDataPenjualan.Text;
  Query1.Open;

  ComboBoxKodeDataPenjualan.ClearSelection;
  EditNMODataPenjualan.Text:='';
  EditHODataPenjualan.Text:='';
  EditBODataPenjualan.Text:='';
  EditSTDataPenjualan.Text:='';
  end;
end;

procedure TRumahSakitBakhtiar.EditBODataPenjualanChange(Sender: TObject);
var I: Integer;
begin
  if TryStrToInt(EditBODataPenjualan.Text, I) then
  begin
    I := StrToInt(EditBODataPenjualan.Text);
    EditSTDataPenjualan.Text := IntToStr(StrToInt(EditHODataPenjualan.Text)*I);
  end;
end;

procedure TRumahSakitBakhtiar.EditDisDataPenjualanChange(Sender: TObject);
var I: Integer;
begin
// Pengurangan total harga - discount Data Penjualan
  if TryStrToInt(EditDisDataPenjualan.Text, I) then
    begin
      I := StrToInt(EditDisDataPenjualan.Text);
      EditHBDataPenjualan.Text := IntToStr(StrToInt(EditTHDataPenjualan.Text)-I);
    end;
end;

procedure TRumahSakitBakhtiar.EditBayarDataPenjualanChange(Sender: TObject);
var I: Integer;
begin
// Pengurangan bayar - harga bersih Data Penjualan
  if TryStrToInt(EditBayarDataPenjualan.Text, I) then
    begin
      I := StrToInt(EditBayarDataPenjualan.Text);
      EditKembalianDataPenjualan.Text := IntToStr(I-StrToInt(EditHBDataPenjualan.Text));
    end;
end;

procedure TRumahSakitBakhtiar.ComboBoxKodeDataPenjualanChange(Sender: TObject);
var ada : Boolean;
begin
  EditTHDataPenjualan.Text := '';
  TableObat.IndexName := 'index_obat';
  ada := TableObat.FindKey([ComboBoxKodeDataPenjualan.Text]);
  if ada then
    begin
      EditNMODataPenjualan.Text := TableObat.fieldByname('Nama_obat').AsString;
      EditHODataPenjualan.Text := TableObat.fieldByname('Harga_satuan_obat').AsString;
    end;

  TableTerjual.Filtered := False;
end;

procedure TRumahSakitBakhtiar.ComboBoxPtgsDataPenjualanChange(Sender: TObject);
var ada : Boolean;
begin
  ada := TablePetugas.FindKey([ComboBoxPtgsDataPenjualan.Text]);
  if ada then
    begin
      EditNMPetugasDataPenjualan.Text := TablePetugas.fieldByname('Nama_petugas').AsString;
    end;
  PanelTambahPenjualan.Enabled := true;
end;

procedure TRumahSakitBakhtiar.ButtonSimpanDataPenjualanClick(Sender: TObject);
begin
  TablePenjualan.Append;
  TablePenjualan.FieldByName('No_bon').AsString:=EditNoBonDataPenjualan.Text;
  TablePenjualan.FieldByName('Harga_bersih').AsString:=EditHBDataPenjualan.Text;
  TablePenjualan.FieldByName('Total').AsString:=EditTHDataPenjualan.Text;
  TablePenjualan.FieldByName('Discount').AsString:=EditDisDataPenjualan.Text;
  TablePenjualan.FieldByName('Bayar').AsString:=EditBayarDataPenjualan.Text;
  TablePenjualan.FieldByName('Kembali').AsString:=EditKembalianDataPenjualan.Text;
  TablePenjualan.FieldByName('Kode_petugas').AsString:=ComboBoxPtgsDataPenjualan.Text;
  TablePenjualan.FieldByName('Tanggal').AsString:=DateToStr(Date);
  TablePenjualan.FieldByName('Waktu').AsString:=TimeToStr(Time);
  TablePenjualan.Post;

  Query1.Close;
  Query1.Params[0].AsString:= EditNoBonDataPenjualan.Text;
  Query1.Open;

  CounterNomor;
  ButtonCetakDataPenjualan.Enabled := true;

  ComboBoxPtgsDataPenjualan.ClearSelection;
  ComboBoxKodeDataPenjualan.ClearSelection;
  EditNMPetugasDataPenjualan.Text := '';
  EditNMODataPenjualan.Text:='';
  EditHODataPenjualan.Text:='';
  EditBODataPenjualan.Text:='';
  EditSTDataPenjualan.Text:='';
  EditTHDataPenjualan.Text:='';
  EditDisDataPenjualan.Text:='';
  EditHBDataPenjualan.Text:='';
  EditBayarDataPenjualan.Text:='';
  EditKembalianDataPenjualan.Text:='';
end;

procedure TRumahSakitBakhtiar.ButtonOutDataPenjualanClick(Sender: TObject);
//var Harga, Jumlah, SubTotal, Total : Integer;
//var Hargaku : String;
var sum, I, B : Integer;
begin
  TableTerjual.Filter := 'No_bon=' + EditNoBonDataPenjualan.Text;
  TableTerjual.Filtered := True;

sum := 0;
B := TableTerjual.RecordCount;

  For I:=0 to B-1 do
  begin
    sum := sum + TableTerjual.FieldByName('SubTotal').AsInteger;
    TableTerjual.Next;
  end;

  EditTHDataPenjualan.Text := IntToStr(sum);
   //Edit1.Text := IntToStr(sum);
  //Harga:=StrToInt(Query1.fieldByname('Harga').AsString);
  //Harga:=SumInt(Harga);
  //Hargaku:= IntToStr(Harga);
  //Jumlah:=StrToInt(Query1.fieldByname('Jumlah').AsString);
  //SubTotal:=Harga*Jumlah;
  //Total:=StrToInt(EditTHDataPenjualan.Text);
  //Total:=Total+SubTotal;
  //MessageDlg(IntToStr(sum) ,mtWarning, [mbOK],0);
  //EditTHDataPenjualan.Text :=  IntToStr(Total);

  ButtonSimpanDataPenjualan.Enabled := true;
end;

procedure TRumahSakitBakhtiar.SpeedButton1Click(Sender: TObject);
begin
  Query1.Prior;
  DBGridTerjualDataPenjualan.SetFocus;
end;

procedure TRumahSakitBakhtiar.SpeedButton2Click(Sender: TObject);
begin
  Query1.Next;
  DBGridTerjualDataPenjualan.SetFocus;
end;

procedure TRumahSakitBakhtiar.Button4Click(Sender: TObject);
begin
  DBGridTerjualDataPenjualan.ReadOnly := False;
  Query1.Delete;
  DBGridTerjualDataPenjualan.ReadOnly := True;
end;

procedure TRumahSakitBakhtiar.Button3Click(Sender: TObject);
begin
  ButtonEditDataPenjualan.Visible := True;
  ButtonTODataPenjualan.Visible := false;
  ComboBoxKodeDataPenjualan.Enabled := false;
  ComboBoxKodeDataPenjualan.Text := Query1.fieldbyname('Kode_obat').AsString;
  TableObat.FindKey([ComboBoxKodeDataPenjualan.Text]);
  EditNMODataPenjualan.Text := TableObat.FieldByname('Nama_obat').AsString;
  EditHODataPenjualan.Text := Query1.fieldbyname('Harga').AsString;
  EditBODataPenjualan.Text := Query1.fieldbyname('Jumlah').AsString;
  EditSTDataPenjualan.Text := Query1.fieldbyname('SubTotal').AsString;
end;

procedure TRumahSakitBakhtiar.ButtonCetakDataPenjualanClick(Sender: TObject);
//var aku : string;
begin

  //aku := 'No_bon=' + IntToStr(StrToInt(EditNoBonDataPenjualan.Text)-1);
  //TableTerjual.Filter := 'No_bon=' + IntToStr(StrToInt(EditNoBonDataPenjualan.Text)-1);
  //TableTerjual.Filtered := True;
  //TablePenjualan.Filter := 'No_bon=' + IntToStr(StrToInt(EditNoBonDataPenjualan.Text)-1);
  //TablePenjualan.Filtered := True;
  //QuickRepCetakBon.DataSet := TableTerjual;
  //QRDBText16.DataSet := TableTerjual;
  //QRDBText16.DataField := 'No_bon';
  QuickRepCetakBon.Preview;
  //TablePenjualan.Filtered := False;
  //TableTerjual.Filtered := False;
end;

procedure TRumahSakitBakhtiar.ButtonEditDataPenjualanClick(
  Sender: TObject);
begin
  Query1.Edit;
  Query1.fieldbyname('Kode_obat').AsString := ComboBoxKodeDataPenjualan.Text;
  Query1.fieldbyname('Harga').AsString := EditHODataPenjualan.Text;
  Query1.fieldbyname('Jumlah').AsString := EditBODataPenjualan.Text;
  Query1.fieldbyname('SubTotal').AsString := EditSTDataPenjualan.Text;
  Query1.FieldByName('Nama_obat').AsString := EditNMODataPenjualan.Text;
  Query1.Post;

  ComboBoxKodeDataPenjualan.Text := '';
  EditNMODataPenjualan.Text := '';
  EditHODataPenjualan.Text := '';
  EditBODataPenjualan.Text := '';
  EditSTDataPenjualan.Text := '';

  ComboBoxKodeDataPenjualan.Enabled := True;
  ButtonEditDataPenjualan.Visible := False;
  ButtonTODataPenjualan.Visible := True;
end;

end.
