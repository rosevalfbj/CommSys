unit UFrmVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TFrmVendedores = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedores: TFrmVendedores;

implementation
  Uses UDMConexao;

{$R *.dfm}

procedure TFrmVendedores.SpeedButton2Click(Sender: TObject);
begin
  DMConexao.SQLTable_tbvendedores.Close;
  DMConexao.SQLTable_tbvendedores.Open;
  close;
end;

end.
