unit UFrmComissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB;

type
  TFrmComissoes = class(TForm)
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Label1: TLabel;
    BtnBuscar: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    SpeedButton2: TSpeedButton;
    DBGrid2: TDBGrid;
    DataSource_tbcomissoes_detail: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label4: TLabel;
    DataSource_tbpedido_master: TDataSource;
    DBComboBox1: TDBComboBox;
    Label10: TLabel;
    edtTotalComissoes: TEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure DataSource_tbcomissoes_detailDataChange(Sender: TObject;
      Field: TField);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    function CheckFields(Dataset: TDataset): Boolean;
    procedure DBEdit5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComissoes: TFrmComissoes;
implementation
 Uses UDMConexao,UFuncoes;

{$R *.dfm}

procedure TFrmComissoes.BtnBuscarClick(Sender: TObject);
begin
try
 if (not DMConexao.ClientDataSet_tbpedidos.Locate('pedido_pdd',edit1.Text,[]))then
  showmessage('Registro não encontrado');
  edit1.Text:='';
finally
end;
end;

procedure TFrmComissoes.DataSource_tbcomissoes_detailDataChange(Sender: TObject;
  Field: TField);
begin
  if DataSource_tbcomissoes_detail.State in [dsInsert] then
    begin
      if DMConexao.ClientDataSet_tbcomissoes.RecordCount = DMConexao.ClientDataSet_tbpedidosQtdParcelas_pdd.AsInteger then
        begin
          //showmessage('O total de parcelas de comissões do pedido '+DMConexao.ClientDataSet_tbcomissoesPedido_pdd.AsString + ' ' +DMConexao.ClientDataSet_tbcomissoesCodigo_for.AsString +' foi atingido.');
          showmessage('O total de parcelas de comissões do pedido '+DMConexao.ClientDataSet_tbcomissoesPedido_pdd.AsString +' foi atingido!!');
          DMConexao.ClientDataSet_tbcomissoes.Cancel;
          atualizaStatusPedido('Liquidado');
        end
    end;
end;

procedure TFrmComissoes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TFrmComissoes.DBEdit5Change(Sender: TObject);
begin
  dbedit3.text := currtostr(dmconexao.ClientDataSet_tbcomissoesvalorpagto_com.AsCurrency * (dmconexao.ClientDataSet_tbcomissoesPercentcomissao_pdd.AsCurrency/100));
end;

procedure TFrmComissoes.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TFrmComissoes.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase( Key )[1];
end;

procedure TFrmComissoes.FormCreate(Sender: TObject);
begin
dbedit2.Field.EditMask:='!99/99/0000;1;_';
dbedit6.Field.EditMask:='!99/99/0000;1;_';
//dbedit4.Field.EditMask:='R$ #,##0.00;0;_';
end;

procedure TFrmComissoes.SpeedButton2Click(Sender: TObject);
begin
  DMConexao.SQLDataSet_tbcomissoes.Close;
  DMConexao.SQLDataSet_tbcomissoes.Open;
  close;
end;

function TfrmComissoes.CheckFields(Dataset: TDataset): Boolean;
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

