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
    btnAbrir: TButton;
    btnPreferencias: TButton;
    procedure btnPreferenciasClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlayer: TfrmPlayer;

implementation

{$R *.dfm}

procedure TfrmPlayer.btnAbrirClick(Sender: TObject);
begin
    MediaPlayer1.Close;

    if opdMedia.Execute() then

    begin

        MediaPlayer1.FileName := opdMedia.FileName;
        MediaPlayer1.Open;

    end;

end;

procedure TfrmPlayer.btnPreferenciasClick(Sender: TObject);
begin

      opdImagemFundo.Execute();

      imgImagem.Picture.LoadFromFile(opdImagemFundo.FileName);

end;

end.
