unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.StdCtrls;

type
  TfrmPlayer = class(TForm)
    opdMedia: TOpenDialog;
    opdImagemFundo: TOpenPictureDialog;
    imgImagem: TImage;
    MediaPlayer1: TMediaPlayer;
    Button1: TButton;
    btnPreferencias: TButton;
    procedure btnPreferenciasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlayer: TfrmPlayer;

implementation

{$R *.dfm}

procedure TfrmPlayer.btnPreferenciasClick(Sender: TObject);
begin

      opdImagemFundo.Execute();

      ShowMessage(opdImagemFundo.FileName);

      imgImagem.Picture.LoadFromFile(opdImagemFundo.FileName);
end;

end.
