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
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    function CheckFields(Dataset: TDataset): Boolean;
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

procedure TFrmRepresentadas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase( Key )[1];
end;

procedure TFrmRepresentadas.SpeedButton2Click(Sender: TObject);
begin
  DMConexao.SQLTable_tbfornecedores.Close;
  DMConexao.SQLTable_tbfornecedores.Open;
  close;
end;

function TfrmRepresentadas.CheckFields(Dataset: TDataset): Boolean;
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
