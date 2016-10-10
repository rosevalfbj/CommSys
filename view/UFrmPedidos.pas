unit UFrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Data.DB, Vcl.Mask;

type
  TFrmPedidos = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource_tbpedidos: TDataSource;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DataSource_tbvendedores: TDataSource;
    DataSource_tbclientes: TDataSource;
    DataSource_tbfornecedores: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    function CheckFields(Dataset: TDataset): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidos: TFrmPedidos;

implementation
  Uses UDMConexao;
{$R *.dfm}

procedure TFrmPedidos.Button1Click(Sender: TObject);
begin
try
 if (not DMConexao.ClientDataSet_tbpedidos.Locate('pedido_pdd',edit1.Text,[]))then
  showmessage('Registro n�o encontrado');
  edit1.Text:='';
finally

end;

end;

procedure TFrmPedidos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TFrmPedidos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TFrmPedidos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TFrmPedidos.FormCreate(Sender: TObject);
begin
dbedit2.Field.EditMask:='!99/99/0000;1;_';
end;

procedure TFrmPedidos.SpeedButton2Click(Sender: TObject);
begin
  DMConexao.SQLDataSet_tbpedidos.Close;
  DMConexao.SQLDataSet_tbpedidos.open;
  close;
end;

function TfrmPedidos.CheckFields(Dataset: TDataset): Boolean;
var i: Integer;
begin
  i := 0;
  Result := True;
  for i := 0 to Dataset.Fields.Count - 1 do
    begin
      if (Dataset.Fields[i].Required) and (Dataset.Fields[i].IsNull) then
      begin
        MessageDlg('O campo ' + Dataset.Fields[i].DisplayLabel + ' n�o foi informado!', mtWarning, [mbOk], 0);
        Dataset.Fields[i].FocusControl;
        Result := False;
        Break;
      end;
    end;
end;

end.
