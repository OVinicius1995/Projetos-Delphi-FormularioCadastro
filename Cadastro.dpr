program Cadastro;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmPrincipal},
  Unit2 in 'Unit2.pas' {frmDespertador},
  Unit3 in 'Unit3.pas' {frmPlayer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDespertador, frmDespertador);
  Application.CreateForm(TfrmPlayer, frmPlayer);
  Application.Run;
end.
