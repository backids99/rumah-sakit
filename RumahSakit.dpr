program RumahSakit;

uses
  Forms,
  rumah_sakit in 'component\rumah_sakit.pas' {RumahSakitBakhtiar};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Rumah Sakit';
  Application.CreateForm(TRumahSakitBakhtiar, RumahSakitBakhtiar);
  Application.Run;
end.
