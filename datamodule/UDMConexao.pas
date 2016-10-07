unit UDMConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, System.Variants;

type
  TDMConexao = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SQLTable_tbcidades: TSQLTable;
    SQLTable_tbcidadesCodigo_cid: TIntegerField;
    SQLTable_tbcidadesNome_cid: TStringField;
    SQLTable_tbcidadesEstado_cid: TStringField;
    ClientDataSet_tbcidades: TClientDataSet;
    DataSetProvider_tbcidades: TDataSetProvider;
    ClientDataSet_tbcidadesCodigo_cid: TIntegerField;
    ClientDataSet_tbcidadesNome_cid: TStringField;
    ClientDataSet_tbcidadesEstado_cid: TStringField;
    SQLTable_tbvendedores: TSQLTable;
    ClientDataSet_tbvendedores: TClientDataSet;
    DataSetProvider_tbvendedores: TDataSetProvider;
    SQLTable_tbvendedoresCodigo_vdd: TIntegerField;
    SQLTable_tbvendedoresNome_vdd: TStringField;
    ClientDataSet_tbvendedoresCodigo_vdd: TIntegerField;
    ClientDataSet_tbvendedoresNome_vdd: TStringField;
    ClientDataSet_tbfornecedores: TClientDataSet;
    DataSetProvider_tbfornecedores: TDataSetProvider;
    SQLTable_tbfornecedores: TSQLTable;
    SQLTable_tbfornecedoresCodigo_for: TIntegerField;
    SQLTable_tbfornecedoresNome_for: TStringField;
    SQLTable_tbfornecedoresCnpj_for: TStringField;
    ClientDataSet_tbfornecedoresCodigo_for: TIntegerField;
    ClientDataSet_tbfornecedoresNome_for: TStringField;
    ClientDataSet_tbfornecedoresCnpj_for: TStringField;
    ClientDataSet_tbclientes: TClientDataSet;
    DataSetProvider_tbclientes: TDataSetProvider;
    SQLTable_tbclientes: TSQLTable;
    ClientDataSet_tbclientesCodigo_cli: TIntegerField;
    ClientDataSet_tbclientesNome_cli: TStringField;
    ClientDataSet_tbclientesEndereco_cli: TStringField;
    ClientDataSet_tbclientesBairro_cli: TStringField;
    ClientDataSet_tbclientesCnpj_cli: TStringField;
    ClientDataSet_tbclientesTelefone_cli: TStringField;
    ClientDataSet_tbclientesEmail_cli: TStringField;
    ClientDataSet_tbclientesCodigo_cid: TIntegerField;
    SQLTable_tbclientesCodigo_cli: TIntegerField;
    SQLTable_tbclientesNome_cli: TStringField;
    SQLTable_tbclientesEndereco_cli: TStringField;
    SQLTable_tbclientesBairro_cli: TStringField;
    SQLTable_tbclientesCnpj_cli: TStringField;
    SQLTable_tbclientesTelefone_cli: TStringField;
    SQLTable_tbclientesEmail_cli: TStringField;
    SQLTable_tbclientesCodigo_cid: TIntegerField;
    ClientDataSet_tbcodigos: TClientDataSet;
    DataSetProvider_tbcodigos: TDataSetProvider;
    ClientDataSet_tbcodigosCodigo_for: TIntegerField;
    ClientDataSet_tbcodigosCodigo_cli: TIntegerField;
    ClientDataSet_tbcodigosCodigo_cdg: TIntegerField;
    ClientDataSet_master: TClientDataSet;
    DataSetProvider_master: TDataSetProvider;
    DataSource_master: TDataSource;
    ClientDataSet_detail: TClientDataSet;
    DataSetProvider_detail: TDataSetProvider;
    DataSource_detail: TDataSource;
    SQLDataSet_master: TSQLDataSet;
    SQLDataSet_detail: TSQLDataSet;
    SQLDataSet_mastercodigo_cli: TIntegerField;
    SQLDataSet_masternome_cli: TStringField;
    ClientDataSet_mastercodigo_cli: TIntegerField;
    ClientDataSet_masternome_cli: TStringField;
    ClientDataSet_masterSQLDataSet_detail: TDataSetField;
    SQLDataSet_detailCodigo_for: TIntegerField;
    SQLDataSet_detailCodigo_cli: TIntegerField;
    SQLDataSet_detailCodigo_cdg: TIntegerField;
    SQLDataSet_detailnome_for: TStringField;
    ClientDataSet_detailcodigo_cli: TIntegerField;
    ClientDataSet_detailnome_for: TStringField;
    ClientDataSet_detailcodigo_cdg: TIntegerField;
    ClientDataSet_detailcodigo_for: TIntegerField;
    DataSource_tbcodigos: TDataSource;
    SQLDataSet_tbcodigos: TSQLDataSet;
    SQLDataSet_tbcodigosCodigo_for: TIntegerField;
    SQLDataSet_tbcodigosCodigo_cli: TIntegerField;
    SQLDataSet_tbcodigosCodigo_cdg: TIntegerField;
    SQLDataSet_tbcodigosnome_for: TStringField;
    ClientDataSet_tbcodigosnome_for: TStringField;
    DataSetProvider_tbpedidos: TDataSetProvider;
    ClientDataSet_tbpedidos: TClientDataSet;
    ClientDataSet_tbcomissoes: TClientDataSet;
    DataSetProvider_tbcomissoes: TDataSetProvider;
    SQLDataSet_tbcomissoes: TSQLDataSet;
    DataSource_tbcomissoes_detail: TDataSource;
    DataSource_tbpedidos_master: TDataSource;
    SQLDataSet_tbpedidos: TSQLDataSet;
    ClientDataSet_comissoes: TClientDataSet;
    DataSetProvider_comissoes: TDataSetProvider;
    DataSource_comissoes: TDataSource;
    SQLQuery_comissoes: TSQLQuery;
    SQLDataSet_tbpedidosPedido_pdd: TLargeintField;
    SQLDataSet_tbpedidosQtdParcelas_pdd: TIntegerField;
    SQLDataSet_tbpedidosDatavenda_pdd: TDateField;
    SQLDataSet_tbpedidosvalor_pdd: TFMTBCDField;
    SQLDataSet_tbpedidosStatus_pdd: TStringField;
    SQLDataSet_tbpedidosCodigo_vdd: TIntegerField;
    SQLDataSet_tbpedidosCodigo_cli: TIntegerField;
    SQLDataSet_tbpedidosCodigo_for: TIntegerField;
    SQLDataSet_tbcomissoesStatus_com: TStringField;
    SQLDataSet_tbcomissoesNotafiscal_com: TIntegerField;
    SQLDataSet_tbcomissoesDataemissao_com: TDateField;
    SQLDataSet_tbcomissoesvalorcomissao_com: TFMTBCDField;
    SQLDataSet_tbcomissoesvalorpagto_com: TFMTBCDField;
    SQLDataSet_tbcomissoesPagaem_pdd: TDateField;
    SQLDataSet_tbcomissoesPercentcomissao_pdd: TIntegerField;
    SQLDataSet_tbcomissoesObservacao_com: TStringField;
    SQLDataSet_tbcomissoesPedido_pdd: TLargeintField;
    SQLDataSet_tbcomissoesParcelapaga_com: TIntegerField;
    SQLDataSet_tbcomissoesCodigo_for: TIntegerField;
    ClientDataSet_tbpedidosPedido_pdd: TLargeintField;
    ClientDataSet_tbpedidosQtdParcelas_pdd: TIntegerField;
    ClientDataSet_tbpedidosDatavenda_pdd: TDateField;
    ClientDataSet_tbpedidosvalor_pdd: TFMTBCDField;
    ClientDataSet_tbpedidosStatus_pdd: TStringField;
    ClientDataSet_tbpedidosCodigo_vdd: TIntegerField;
    ClientDataSet_tbpedidosCodigo_cli: TIntegerField;
    ClientDataSet_tbpedidosCodigo_for: TIntegerField;
    ClientDataSet_tbpedidosSQLDataSet_tbcomissoes: TDataSetField;
    SQLQuery_comissoesPedido_pdd: TLargeintField;
    SQLQuery_comissoesParcelapaga_com: TIntegerField;
    SQLQuery_comissoesNome_cli: TStringField;
    SQLQuery_comissoesNome_for: TStringField;
    SQLQuery_comissoesValorcomissao_com: TFMTBCDField;
    SQLQuery_comissoesValorpagto_com: TFMTBCDField;
    ClientDataSet_comissoesPedido_pdd: TLargeintField;
    ClientDataSet_comissoesParcelapaga_com: TIntegerField;
    ClientDataSet_comissoesNome_cli: TStringField;
    ClientDataSet_comissoesNome_for: TStringField;
    ClientDataSet_comissoesValorcomissao_com: TFMTBCDField;
    ClientDataSet_comissoesValorpagto_com: TFMTBCDField;
    ClientDataSet_tbcomissoesStatus_com: TStringField;
    ClientDataSet_tbcomissoesNotafiscal_com: TIntegerField;
    ClientDataSet_tbcomissoesDataemissao_com: TDateField;
    ClientDataSet_tbcomissoesvalorcomissao_com: TFMTBCDField;
    ClientDataSet_tbcomissoesvalorpagto_com: TFMTBCDField;
    ClientDataSet_tbcomissoesPagaem_pdd: TDateField;
    ClientDataSet_tbcomissoesPercentcomissao_pdd: TIntegerField;
    ClientDataSet_tbcomissoesObservacao_com: TStringField;
    ClientDataSet_tbcomissoesPedido_pdd: TLargeintField;
    ClientDataSet_tbcomissoesParcelapaga_com: TIntegerField;
    ClientDataSet_tbcomissoesCodigo_for: TIntegerField;
    ClientDataSet_tbpedidosnome_cli: TStringField;
    ClientDataSet_tbpedidosnome_for: TStringField;
    SQLQuery_comissoesstatus_pdd: TStringField;
    ClientDataSet_comissoesstatus_pdd: TStringField;
    SQLQuery_comissoesdatavenda_pdd: TDateField;
    ClientDataSet_comissoesdatavenda_pdd: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ClientDataSet_tbcidadesAfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_tbcidadesAfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_tbcidadesAfterEdit(DataSet: TDataSet);
    procedure ClientDataSet_tbcidadesAfterPost(DataSet: TDataSet);
    procedure ClientDataSet_tbcidadesAfterRefresh(DataSet: TDataSet);
    procedure ClientDataSet_tbcidadesAfterInsert(DataSet: TDataSet);

    procedure ClientDataSet_tbvendedoresAfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_tbvendedoresAfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_tbvendedoresAfterEdit(DataSet: TDataSet);
    procedure ClientDataSet_tbvendedoresAfterPost(DataSet: TDataSet);
    procedure ClientDataSet_tbvendedoresAfterRefresh(DataSet: TDataSet);
    procedure ClientDataSet_tbvendedoresAfterInsert(DataSet: TDataSet);
    procedure ClientDataSet_tbfornecedoresAfterInsert(DataSet: TDataSet);
    procedure ClientDataSet_tbfornecedoresAfterPost(DataSet: TDataSet);
    procedure ClientDataSet_tbfornecedoresAfterRefresh(DataSet: TDataSet);
    procedure ClientDataSet_tbfornecedoresAfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_tbfornecedoresAfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_tbfornecedoresAfterEdit(DataSet: TDataSet);
    procedure ClientDataSet_tbclientesAfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_tbclientesAfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_tbclientesAfterEdit(DataSet: TDataSet);
    procedure ClientDataSet_tbclientesAfterPost(DataSet: TDataSet);
    procedure ClientDataSet_tbclientesAfterRefresh(DataSet: TDataSet);
    procedure ClientDataSet_tbclientesAfterInsert(DataSet: TDataSet);
    procedure ClientDataSet_tbcodigosAfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_tbcodigosAfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_tbcodigosAfterEdit(DataSet: TDataSet);
    procedure ClientDataSet_tbcodigosAfterPost(DataSet: TDataSet);
    procedure ClientDataSet_tbcodigosAfterRefresh(DataSet: TDataSet);
    procedure ClientDataSet_detailAfterRefresh(DataSet: TDataSet);
    procedure ClientDataSet_detailAfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_detailAfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_detailAfterEdit(DataSet: TDataSet);
    procedure ClientDataSet_detailAfterPost(DataSet: TDataSet);
    procedure ClientDataSet_tbpedidosAfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_tbpedidosAfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_tbpedidosAfterEdit(DataSet: TDataSet);
    procedure ClientDataSet_tbpedidosAfterPost(DataSet: TDataSet);
    procedure ClientDataSet_tbpedidosAfterRefresh(DataSet: TDataSet);
    procedure ClientDataSet_tbcomissoesAfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_tbcomissoesAfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_tbcomissoesAfterEdit(DataSet: TDataSet);
    procedure ClientDataSet_tbcomissoesAfterInsert(DataSet: TDataSet);
    procedure ClientDataSet_tbcomissoesAfterPost(DataSet: TDataSet);
    procedure ClientDataSet_tbcomissoesAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation
   Uses UFuncoes, UFrmCidades;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TDMConexao.ClientDataSet_detailAfterCancel(DataSet: TDataSet);
begin
  try
    ClientDataSet_detail.ApplyUpdates(-1);
  finally
    ClientDataSet_detail.Cancel;
  end;
end;

procedure TDMConexao.ClientDataSet_detailAfterDelete(DataSet: TDataSet);
begin
  try
    ClientDataSet_detail.ApplyUpdates(-1);
  finally
    ClientDataSet_detail.cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_detailAfterEdit(DataSet: TDataSet);
begin
  try
    ClientDataSet_detail.ApplyUpdates(-1);
  finally
    ClientDataSet_detail.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_detailAfterPost(DataSet: TDataSet);
begin
  try
    ClientDataSet_detail.ApplyUpdates(-1);
  finally
    ClientDataSet_detail.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_detailAfterRefresh(DataSet: TDataSet);
begin
  try
    ClientDataSet_detail.ApplyUpdates(-1);
  finally
    ClientDataSet_detail.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcidadesAfterCancel(DataSet: TDataSet);
begin
  try
      ClientDataSet_tbcidades.ApplyUpdates(-1);
  finally
        ClientDataSet_tbcidades.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcidadesAfterDelete(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcidades.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcidades.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcidadesAfterEdit(DataSet: TDataSet);
begin
    try
      ClientDataSet_tbcidades.ApplyUpdates(-1);
    finally
      ClientDataSet_tbcidades.Cancel;
    end;

end;

procedure TDMConexao.ClientDataSet_tbcidadesAfterInsert(DataSet: TDataSet);
begin
  AutoInc(ClientDataSet_tbcidades,'codigo_cid');
end;

procedure TDMConexao.ClientDataSet_tbcidadesAfterPost(DataSet: TDataSet);
begin
  try
     ClientDataSet_tbcidades.ApplyUpdates(-1);
  finally
      ClientDataSet_tbcidades.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcidadesAfterRefresh(DataSet: TDataSet);
begin
    try
      ClientDataSet_tbcidades.ApplyUpdates(-1);
    finally
      ClientDataSet_tbcidades.Cancel;
    end;

end;

procedure TDMConexao.ClientDataSet_tbclientesAfterCancel(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbclientes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbclientes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbclientesAfterDelete(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbclientes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbclientes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbclientesAfterEdit(DataSet: TDataSet);
begin
  ClientDataSet_tbclientes.ApplyUpdates(-1);
end;

procedure TDMConexao.ClientDataSet_tbclientesAfterInsert(DataSet: TDataSet);
begin
  AutoInc(ClientDataSet_tbclientes,'codigo_cli');
end;

procedure TDMConexao.ClientDataSet_tbclientesAfterPost(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbclientes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbclientes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbclientesAfterRefresh(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbclientes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbclientes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcodigosAfterCancel(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcodigos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcodigos.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcodigosAfterDelete(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcodigos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcodigos.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcodigosAfterEdit(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcodigos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcodigos.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcodigosAfterPost(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcodigos.ApplyUpdates(-1);
    ClientDataSet_master.ApplyUpdates(-1);
    ClientDataSet_detail.ApplyUpdates(-1);
    SqlDataSet_detail.Refresh;
    SqlDataSet_master.Refresh;
    ClientDataSet_master.Refresh;
    ClientDataSet_detail.Refresh;
  finally
      ClientDataSet_tbcodigos.cancel;
      ClientDataSet_master.cancel;
      ClientDataSet_detail.cancel;
      SqlDataSet_detail.Refresh;
      SqlDataSet_master.Refresh;
      ClientDataSet_master.Refresh;
      ClientDataSet_detail.Refresh;
  end;
end;

procedure TDMConexao.ClientDataSet_tbcodigosAfterRefresh(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcodigos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcodigos.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcomissoesAfterCancel(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcomissoes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcomissoes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcomissoesAfterDelete(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcomissoes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcomissoes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcomissoesAfterEdit(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcomissoes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcomissoes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcomissoesAfterInsert(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcomissoes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcomissoes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcomissoesAfterPost(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcomissoes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcomissoes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbcomissoesAfterRefresh(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbcomissoes.ApplyUpdates(-1);
  finally
    ClientDataSet_tbcomissoes.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbfornecedoresAfterCancel(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbfornecedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbfornecedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbfornecedoresAfterDelete(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbfornecedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbfornecedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbfornecedoresAfterEdit(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbfornecedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbfornecedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbfornecedoresAfterInsert(DataSet: TDataSet);
begin
  AutoInc(ClientDataSet_tbfornecedores,'codigo_for');
end;

procedure TDMConexao.ClientDataSet_tbfornecedoresAfterPost(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbfornecedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbfornecedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbfornecedoresAfterRefresh(
  DataSet: TDataSet);
begin
  try
    ClientDataSet_tbfornecedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbfornecedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbpedidosAfterCancel(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbpedidos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbpedidos.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbpedidosAfterDelete(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbpedidos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbpedidos.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbpedidosAfterEdit(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbpedidos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbpedidos.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbpedidosAfterPost(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbpedidos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbpedidos.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbpedidosAfterRefresh(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbpedidos.ApplyUpdates(-1);
  finally
    ClientDataSet_tbpedidos.Cancel;
  end;

end;

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  SqlConnection1.Open;

  SQLTable_tbcidades.Open;
  ClientDataSet_tbcidades.Open;

  SQLTable_tbvendedores.Open;
  ClientDataSet_tbvendedores.Open;

  SQLTable_tbfornecedores.Open;
  ClientDataSet_tbfornecedores.Open;

  SQLTable_tbclientes.Open;
  ClientDataSet_tbclientes.Open;

  SQLDataSet_tbcodigos.Open;
  ClientDataSet_tbcodigos.Open;

  SQLDataSet_tbpedidos.Open;
  ClientDataSet_tbpedidos.Open;

  SQLDataSet_tbcomissoes.Open;
  ClientDataSet_tbcomissoes.Open;

  SQLDataSet_master.Open;
  ClientDataSet_master.Open;

  SQLDataSet_detail.Open;
  ClientDataSet_detail.Open;

  SQLQuery_comissoes.Open;
  ClientDataSet_comissoes.Open;

end;

procedure TDMConexao.ClientDataSet_tbvendedoresAfterInsert(DataSet: TDataSet);
begin
  AutoInc(ClientDataSet_tbvendedores,'codigo_vdd');
end;

procedure TDMConexao.ClientDataSet_tbvendedoresAfterPost(DataSet: TDataSet);
begin
  try
     ClientDataSet_tbvendedores.ApplyUpdates(-1);
  finally
     ClientDataSet_tbvendedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbvendedoresAfterRefresh(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbvendedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbvendedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbvendedoresAfterCancel(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbvendedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbvendedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbvendedoresAfterDelete(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbvendedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbvendedores.Cancel;
  end;

end;

procedure TDMConexao.ClientDataSet_tbvendedoresAfterEdit(DataSet: TDataSet);
begin
  try
    ClientDataSet_tbvendedores.ApplyUpdates(-1);
  finally
    ClientDataSet_tbvendedores.Cancel;
  end;

end;


end.
