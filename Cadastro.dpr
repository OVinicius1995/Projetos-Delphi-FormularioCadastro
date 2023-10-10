program Cadastro;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmPrincipal},
  Unit2 in 'Unit2.pas' {frmDespertador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDespertador, frmDespertador);
  Application.Run;
end.
