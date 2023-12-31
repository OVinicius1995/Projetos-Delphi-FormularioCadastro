unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Imaging.pngimage;

type
  TfrmDespertador = class(TForm)
    Image1: TImage;
    metInput: TMaskEdit;
    lblStatus: TLabel;
    btnAtivar: TButton;
    btnDesativar: TButton;
    stbDataHora: TStatusBar;
    tmrDataHora: TTimer;
    procedure tmrDataHoraTimer(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
    procedure btnDesativarClick(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDespertador: TfrmDespertador;
  ativar : Boolean;

implementation

{$R *.dfm}




procedure TfrmDespertador.tmrDataHoraTimer(Sender: TObject);
begin

    stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmm" de "yyyy', now);
    stbDataHora.Panels[1].Text := '' + FormatDateTime('hh:nn:mm', now);
    stbDataHora.Panels[1].Text := TimeToStr(time);

    try

      if (metInput.Text <= TimeToStr(time)) And (ativar) then

      begin
        MessageBeep(10);
      end;


    except

    ShowMessage('Algo n�o saiu como esperado.');

    end;

end;

procedure TfrmDespertador.btnAtivarClick(Sender: TObject);
begin

      if Trim(metInput.Text) = '00:00' then

      begin

      Application.MessageBox('Horario n�o definido.','Verifique', MB_OK + MB_ICONASTERISK);

      end

      else

      begin

      Ativar := True;
      lblStatus.Caption := 'Alarme ativado';

      end

end;

procedure TfrmDespertador.btnDesativarClick(Sender: TObject);
begin
       Ativar :=false;
       lblStatus.Caption := 'Alarme desativado';
       metInput.Text :='00:00'
end;



end.
