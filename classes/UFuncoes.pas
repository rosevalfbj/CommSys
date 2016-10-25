unit UFuncoes;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, Vcl.StdCtrls, System.Variants;

  procedure AutoInc(cds: TClientDataSet;field:String);
  function verificaQtdDeParcelasPedido(cds: TClientDataSet;edit: TEdit):boolean;
  procedure populaCombobox(sqlt: TSQLTable;field: TField; combobox: Tcombobox);
  procedure atualizaStatusPedido(status:String);
  function calcComissao_sqlq(sqlq: TSQLQuery;field: TField):currency;
  function calcComissao_sqlt(sqlt: TSQLTable;field: TField):currency;

implementation
  uses UDMConexao;

procedure AutoInc(cds: TClientDataSet;field:String);
var
   NewID: Integer;
begin
//Assuming that your table has been created
   with cds do
   begin
      AggregatesActive := False;
      Aggregates.Clear;
      with Aggregates.Add do
      begin
        Expression := 'Max('+field+')';
        AggregateName := 'Runtime';
        Active := True;
      end;
      AggregatesActive := True;
      try
        if VarIsNull(Aggregates[0].Value) then
          NewID := 0
        else NewID := Aggregates[0].Value;
        Inc(NewID);
        FieldByName(field).AsInteger := NewID;
      except
        //on E: Exception do SomeHandle; //Probably shouldn't throw exception
      end;
   end;
end;

function verificaQtdDeParcelasPedido(cds: TClientDataSet;edit:TEdit):boolean;
begin
end;

procedure populaCombobox(sqlt: TSQLTable;field: TField; combobox: Tcombobox);
var
  table: String;
begin
  sqlt.Close;
  sqlt.Open;
  while not sqlt.Eof do
  begin
    combobox.Items.Add(field.AsString);
    sqlt.Next;
  end;
    sqlt.First;
end;

function calcComissao_sqlq(sqlq: TSQLQuery;field: TField):currency;
var
  val: currency;
begin
  val:=0;
  sqlq.Close;
  sqlq.Open;
  while not sqlq.Eof do
  begin
    val:=val+field.AsCurrency;
    sqlq.Next;
  end;
    sqlq.First;
  calcComissao_sqlq:=val;
end;

function calcComissao_sqlt(sqlt: TSQLTable;field: TField):currency;
var
  val: currency;
begin
  val:=0;
  sqlt.Close;
  sqlt.Open;
  while not sqlt.Eof do
  begin
    val:=val+field.AsCurrency;
    sqlt.Next;
  end;
    sqlt.First;
  calcComissao_sqlt:=val;
end;

procedure atualizaStatusPedido(status:String);
  begin
    DMconexao.cds_pedidos.Locate('pedido_pdd;codigo_for',VarArrayOf([DMConexao.ClientDataSet_tbcomissoesPedido_pdd.AsString,DMConexao.ClientDataSet_tbcomissoesCodigo_for.AsString]),[]);
    DMconexao.cds_pedidos.Edit;
    DMconexao.cds_pedidosStatus_pdd.AsString:=status;
    DMConexao.cds_pedidos.ApplyUpdates(-1);
    DMConexao.ClientDataSet_tbpedidos.Close;
    DMConexao.ClientDataSet_tbpedidos.Open;
  end;

end.
