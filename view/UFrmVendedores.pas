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
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    function CheckFields(Dataset: TDataset): Boolean;
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

procedure TFrmVendedores.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase( Key )[1];
end;

procedure TFrmVendedores.SpeedButton2Click(Sender: TObject);
begin
  DMConexao.SQLTable_tbvendedores.Close;
  DMConexao.SQLTable_tbvendedores.Open;
  close;
end;

function TfrmVendedores.CheckFields(Dataset: TDataset): Boolean;
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
