unit UFrmCodigos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Data.DB, Datasnap.DBClient,
  Data.FMTBcd, Data.SqlExpr;

type
  TFrmCodigos = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    SpeedButton2: TSpeedButton;
    DBNavigator2: TDBNavigator;
    DataSource_tbfornecedores: TDataSource;
    DataSource_master: TDataSource;
    DBGrid2: TDBGrid;
    DataSource_detail: TDataSource;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCodigos: TFrmCodigos;

implementation
   uses UDMConexao;

{$R *.dfm}

procedure TFrmCodigos.FormCreate(Sender: TObject);
begin
    DMConexao.ClientDataSet_master.close;
    DMConexao.ClientDataSet_detail.close;
    DMConexao.ClientDataSet_master.Open;
    DMConexao.ClientDataSet_detail.Open;
end;


procedure TFrmCodigos.SpeedButton2Click(Sender: TObject);
begin
  DMConexao.SQLDataSet_tbcodigos.Close;
  DMConexao.SQLDataSet_tbcodigos.Open;
  close;
end;

end.
