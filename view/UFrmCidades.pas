unit UFrmCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFrmCidades = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCidades: TFrmCidades;

implementation
   Uses UDMConexao;

{$R *.dfm}



procedure TFrmCidades.SpeedButton2Click(Sender: TObject);
begin
  DMConexao.SQLTable_tbcidades.Close;
  DMConexao.SQLTable_tbcidades.Open;
  close;
end;

end.
