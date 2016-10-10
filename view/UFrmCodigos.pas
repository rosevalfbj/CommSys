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
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    function CheckFields(Dataset: TDataset): Boolean;
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

procedure TFrmCodigos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

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

function TfrmCodigos.CheckFields(Dataset: TDataset): Boolean;
var i: Integer;
begin
  i := 0;
  Result := True;
  for i := 0 to Dataset.Fields.Count - 1 do
    begin
      if (Dataset.Fields[i].Required) and (Dataset.Fields[i].IsNull) then
      begin
        MessageDlg('O campo ' + Dataset.Fields[i].DisplayLabel + ' não foi informado!', mtWarning, [mbOk], 0);
        Dataset.Fields[i].FocusControl;
        Result := False;
        Break;
      end;
    end;
end;

end.
