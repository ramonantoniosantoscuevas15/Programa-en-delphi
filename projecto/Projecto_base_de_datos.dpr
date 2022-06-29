program Projecto_base_de_datos;

uses
  Vcl.Forms,
  Ulibros in 'Ulibros.pas' {Libreria},
  Umodulo in 'Umodulo.pas' {modulo: TDataModule},
  Ucurd in 'Ucurd.pas' {Crud};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLibreria, Libreria);
  Application.CreateForm(Tmodulo, modulo);
  Application.CreateForm(TCrud, Crud);
  Application.Run;
end.
