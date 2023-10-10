unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    adcConexao: TADOConnection;
    adtConexao: TADOTable;
    DBGrid1: TDBGrid;
    dtsConexao: TDataSource;
    dbnNav: TDBNavigator;
    stbDataHora: TStatusBar;
    tmDataHora: TTimer;
    mmuMenus: TMainMenu;
    c1: TMenuItem;
    mmuClientes: TMenuItem;
    Sair1: TMenuItem;
    Re1: TMenuItem;
    mmuSair: TMenuItem;
    mmuDespertador: TMenuItem;
    mmuSeparador: TMenuItem;
    procedure tmDataHoraTimer(Sender: TObject);
    procedure mmuSairClick(Sender: TObject);
    procedure mmuDespertadorClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Unit2;


procedure TfrmPrincipal.tmDataHoraTimer(Sender: TObject);
begin
    stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd", "de" "mmmm" de "yyyy',now);
    stbDataHora.Panels[1].Text := 'Bem Vindo';
    stbDataHora.Panels[2].Text := '' + FormatDateTime('hh:nn:mm',now);
end;

procedure TfrmPrincipal.mmuDespertadorClick(Sender: TObject);
begin
    frmDespertador.ShowModal();
end;

procedure TfrmPrincipal.mmuSairClick(Sender: TObject);
begin
    close;
end;

end.
