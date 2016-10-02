unit UFrmRepresentadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFrmRepresentadas = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRepresentadas: TFrmRepresentadas;

implementation
  Uses UDMConexao;
{$R *.dfm}

procedure TFrmRepresentadas.SpeedButton2Click(Sender: TObject);
begin
  DMConexao.SQLTable_tbfornecedores.Close;
  DMConexao.SQLTable_tbfornecedores.Open;
  close;
end;

end.
