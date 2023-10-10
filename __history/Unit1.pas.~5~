unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TfrmPrincipal = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    stbDataHora: TStatusBar;
    tmDataHora: TTimer;
    procedure tmDataHoraTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.tmDataHoraTimer(Sender: TObject);
begin
    stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd", "de" "mmmm" de "yyyy',now);
    stbDataHora.Panels[1].Text := 'Bem Vindo';
    stbDataHora.Panels[2].Text := '' + FormatDateTime('hh:nn:mm',now);
end;

end.
