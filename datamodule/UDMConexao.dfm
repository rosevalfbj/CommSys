object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 589
  Width = 679
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=21.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'MaxBlobSize=-1'
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=CommSys'
      'User_Name=root'
      'Password=root'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60')
    Connected = True
    Left = 32
    Top = 16
  end
  object SQLTable_tbcidades: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'tb_cidades'
    Left = 136
    Top = 16
    object SQLTable_tbcidadesCodigo_cid: TIntegerField
      FieldName = 'Codigo_cid'
      Required = True
    end
    object SQLTable_tbcidadesNome_cid: TStringField
      FieldName = 'Nome_cid'
      Size = 40
    end
    object SQLTable_tbcidadesEstado_cid: TStringField
      FieldName = 'Estado_cid'
      Size = 10
    end
  end
  object ClientDataSet_tbcidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_tbcidades'
    AfterInsert = ClientDataSet_tbcidadesAfterInsert
    AfterEdit = ClientDataSet_tbcidadesAfterEdit
    BeforePost = ClientDataSet_tbcidadesBeforePost
    AfterPost = ClientDataSet_tbcidadesAfterPost
    AfterCancel = ClientDataSet_tbcidadesAfterCancel
    AfterDelete = ClientDataSet_tbcidadesAfterDelete
    AfterRefresh = ClientDataSet_tbcidadesAfterRefresh
    Left = 456
    Top = 17
    object ClientDataSet_tbcidadesCodigo_cid: TIntegerField
      FieldName = 'Codigo_cid'
      Required = True
    end
    object ClientDataSet_tbcidadesNome_cid: TStringField
      FieldName = 'Nome_cid'
      Required = True
      Size = 40
    end
    object ClientDataSet_tbcidadesEstado_cid: TStringField
      FieldName = 'Estado_cid'
      Required = True
      Size = 10
    end
  end
  object DataSetProvider_tbcidades: TDataSetProvider
    DataSet = SQLTable_tbcidades
    Left = 288
    Top = 16
  end
  object SQLTable_tbvendedores: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'tb_vendedores'
    Left = 136
    Top = 64
    object SQLTable_tbvendedoresCodigo_vdd: TIntegerField
      FieldName = 'Codigo_vdd'
      Required = True
    end
    object SQLTable_tbvendedoresNome_vdd: TStringField
      FieldName = 'Nome_vdd'
      Required = True
      Size = 60
    end
  end
  object ClientDataSet_tbvendedores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_tbvendedores'
    AfterInsert = ClientDataSet_tbvendedoresAfterInsert
    AfterEdit = ClientDataSet_tbvendedoresAfterEdit
    BeforePost = ClientDataSet_tbvendedoresBeforePost
    AfterPost = ClientDataSet_tbvendedoresAfterPost
    AfterCancel = ClientDataSet_tbvendedoresAfterCancel
    AfterDelete = ClientDataSet_tbvendedoresAfterDelete
    AfterRefresh = ClientDataSet_tbvendedoresAfterRefresh
    Left = 456
    Top = 65
    object ClientDataSet_tbvendedoresCodigo_vdd: TIntegerField
      FieldName = 'Codigo_vdd'
      Required = True
    end
    object ClientDataSet_tbvendedoresNome_vdd: TStringField
      FieldName = 'Nome_vdd'
      Required = True
      Size = 60
    end
  end
  object DataSetProvider_tbvendedores: TDataSetProvider
    DataSet = SQLTable_tbvendedores
    Left = 288
    Top = 64
  end
  object ClientDataSet_tbfornecedores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_tbfornecedores'
    AfterInsert = ClientDataSet_tbfornecedoresAfterInsert
    AfterEdit = ClientDataSet_tbfornecedoresAfterEdit
    BeforePost = ClientDataSet_tbfornecedoresBeforePost
    AfterPost = ClientDataSet_tbfornecedoresAfterPost
    AfterCancel = ClientDataSet_tbfornecedoresAfterCancel
    AfterDelete = ClientDataSet_tbfornecedoresAfterDelete
    AfterRefresh = ClientDataSet_tbfornecedoresAfterRefresh
    Left = 456
    Top = 120
    object ClientDataSet_tbfornecedoresCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
    object ClientDataSet_tbfornecedoresNome_for: TStringField
      FieldName = 'Nome_for'
      Required = True
      Size = 60
    end
    object ClientDataSet_tbfornecedoresCnpj_for: TStringField
      FieldName = 'Cnpj_for'
    end
  end
  object DataSetProvider_tbfornecedores: TDataSetProvider
    DataSet = SQLTable_tbfornecedores
    Left = 288
    Top = 120
  end
  object SQLTable_tbfornecedores: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'tb_fornecedores'
    Left = 136
    Top = 120
    object SQLTable_tbfornecedoresCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
    object SQLTable_tbfornecedoresNome_for: TStringField
      FieldName = 'Nome_for'
      Required = True
      Size = 60
    end
    object SQLTable_tbfornecedoresCnpj_for: TStringField
      FieldName = 'Cnpj_for'
    end
  end
  object ClientDataSet_tbclientes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_tbclientes'
    AfterInsert = ClientDataSet_tbclientesAfterInsert
    AfterEdit = ClientDataSet_tbclientesAfterEdit
    BeforePost = ClientDataSet_tbclientesBeforePost
    AfterPost = ClientDataSet_tbclientesAfterPost
    AfterCancel = ClientDataSet_tbclientesAfterCancel
    AfterDelete = ClientDataSet_tbclientesAfterDelete
    AfterRefresh = ClientDataSet_tbclientesAfterRefresh
    Left = 456
    Top = 168
    object ClientDataSet_tbclientesCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet_tbclientesNome_cli: TStringField
      FieldName = 'Nome_cli'
      Required = True
      Size = 60
    end
    object ClientDataSet_tbclientesEndereco_cli: TStringField
      FieldName = 'Endereco_cli'
      Size = 80
    end
    object ClientDataSet_tbclientesBairro_cli: TStringField
      FieldName = 'Bairro_cli'
      Size = 40
    end
    object ClientDataSet_tbclientesCnpj_cli: TStringField
      FieldName = 'Cnpj_cli'
    end
    object ClientDataSet_tbclientesTelefone_cli: TStringField
      FieldName = 'Telefone_cli'
    end
    object ClientDataSet_tbclientesEmail_cli: TStringField
      FieldName = 'Email_cli'
      Size = 40
    end
    object ClientDataSet_tbclientesCodigo_cid: TIntegerField
      FieldName = 'Codigo_cid'
      Required = True
    end
  end
  object DataSetProvider_tbclientes: TDataSetProvider
    DataSet = SQLTable_tbclientes
    Left = 288
    Top = 168
  end
  object SQLTable_tbclientes: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'tb_clientes'
    Left = 136
    Top = 168
    object SQLTable_tbclientesCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      Required = True
    end
    object SQLTable_tbclientesNome_cli: TStringField
      FieldName = 'Nome_cli'
      Required = True
      Size = 60
    end
    object SQLTable_tbclientesEndereco_cli: TStringField
      FieldName = 'Endereco_cli'
      Size = 80
    end
    object SQLTable_tbclientesBairro_cli: TStringField
      FieldName = 'Bairro_cli'
      Size = 40
    end
    object SQLTable_tbclientesCnpj_cli: TStringField
      FieldName = 'Cnpj_cli'
    end
    object SQLTable_tbclientesTelefone_cli: TStringField
      FieldName = 'Telefone_cli'
    end
    object SQLTable_tbclientesEmail_cli: TStringField
      FieldName = 'Email_cli'
      Size = 40
    end
    object SQLTable_tbclientesCodigo_cid: TIntegerField
      FieldName = 'Codigo_cid'
    end
  end
  object ClientDataSet_tbcodigos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_tbcodigos'
    AfterEdit = ClientDataSet_tbcodigosAfterEdit
    AfterPost = ClientDataSet_tbcodigosAfterPost
    AfterCancel = ClientDataSet_tbcodigosAfterCancel
    AfterDelete = ClientDataSet_tbcodigosAfterDelete
    AfterRefresh = ClientDataSet_tbcodigosAfterRefresh
    Left = 456
    Top = 216
    object ClientDataSet_tbcodigosCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
    object ClientDataSet_tbcodigosCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      Required = True
    end
    object ClientDataSet_tbcodigosCodigo_cdg: TIntegerField
      FieldName = 'Codigo_cdg'
      Required = True
    end
    object ClientDataSet_tbcodigosnome_for: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_for'
      LookupDataSet = ClientDataSet_tbfornecedores
      LookupKeyFields = 'Codigo_for'
      LookupResultField = 'Nome_for'
      KeyFields = 'Codigo_for'
      Required = True
      Size = 60
      Lookup = True
    end
  end
  object DataSetProvider_tbcodigos: TDataSetProvider
    DataSet = SQLDataSet_tbcodigos
    Left = 288
    Top = 216
  end
  object ClientDataSet_master: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_master'
    Left = 456
    Top = 480
    object ClientDataSet_mastercodigo_cli: TIntegerField
      FieldName = 'codigo_cli'
      Required = True
    end
    object ClientDataSet_masternome_cli: TStringField
      FieldName = 'nome_cli'
      Required = True
      Size = 60
    end
    object ClientDataSet_masterSQLDataSet_detail: TDataSetField
      FieldName = 'SQLDataSet_detail'
    end
  end
  object DataSetProvider_master: TDataSetProvider
    DataSet = SQLDataSet_master
    Left = 288
    Top = 480
  end
  object DataSource_master: TDataSource
    Left = 40
    Top = 480
  end
  object ClientDataSet_detail: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = ClientDataSet_masterSQLDataSet_detail
    IndexFieldNames = 'Codigo_cli'
    Params = <>
    AfterEdit = ClientDataSet_detailAfterEdit
    BeforePost = ClientDataSet_detailBeforePost
    AfterPost = ClientDataSet_detailAfterPost
    AfterCancel = ClientDataSet_detailAfterCancel
    AfterDelete = ClientDataSet_detailAfterDelete
    AfterRefresh = ClientDataSet_detailAfterRefresh
    Left = 456
    Top = 536
    object ClientDataSet_detailcodigo_cli: TIntegerField
      FieldName = 'codigo_cli'
      Required = True
    end
    object ClientDataSet_detailnome_for: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_for'
      LookupDataSet = ClientDataSet_tbfornecedores
      LookupKeyFields = 'Codigo_for'
      LookupResultField = 'Nome_for'
      KeyFields = 'codigo_for'
      Required = True
      Size = 60
      Lookup = True
    end
    object ClientDataSet_detailcodigo_cdg: TIntegerField
      FieldName = 'codigo_cdg'
      Required = True
    end
    object ClientDataSet_detailcodigo_for: TIntegerField
      FieldName = 'codigo_for'
      Required = True
    end
  end
  object DataSetProvider_detail: TDataSetProvider
    DataSet = SQLDataSet_detail
    Left = 288
    Top = 536
  end
  object DataSource_detail: TDataSource
    DataSet = SQLDataSet_master
    Left = 40
    Top = 528
  end
  object SQLDataSet_master: TSQLDataSet
    Active = True
    CommandText = 'select codigo_cli, nome_cli from `tb_clientes`'
    DataSource = DataSource_master
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 144
    Top = 480
    object SQLDataSet_mastercodigo_cli: TIntegerField
      FieldName = 'codigo_cli'
      Required = True
    end
    object SQLDataSet_masternome_cli: TStringField
      FieldName = 'nome_cli'
      Required = True
      Size = 60
    end
  end
  object SQLDataSet_detail: TSQLDataSet
    Active = True
    CommandText = 'select * from tb_codigos'#13#10'where codigo_cli =:codigo_cli'
    DataSource = DataSource_detail
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo_cli'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 144
    Top = 528
    object SQLDataSet_detailCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
    object SQLDataSet_detailCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      Required = True
    end
    object SQLDataSet_detailCodigo_cdg: TIntegerField
      FieldName = 'Codigo_cdg'
      Required = True
    end
    object SQLDataSet_detailnome_for: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_for'
      LookupDataSet = ClientDataSet_tbfornecedores
      LookupKeyFields = 'Codigo_for'
      LookupResultField = 'Nome_for'
      KeyFields = 'Codigo_for'
      Size = 30
      Lookup = True
    end
  end
  object DataSource_tbcodigos: TDataSource
    DataSet = SQLDataSet_master
    Left = 32
    Top = 216
  end
  object SQLDataSet_tbcodigos: TSQLDataSet
    CommandText = 'select * from tb_codigos'#13#10'where codigo_cli =:codigo_cli'
    DataSource = DataSource_tbcodigos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo_cli'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 144
    Top = 216
    object SQLDataSet_tbcodigosCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
    object SQLDataSet_tbcodigosCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      Required = True
    end
    object SQLDataSet_tbcodigosCodigo_cdg: TIntegerField
      FieldName = 'Codigo_cdg'
      Required = True
    end
    object SQLDataSet_tbcodigosnome_for: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_for'
      LookupDataSet = SQLTable_tbfornecedores
      LookupKeyFields = 'Codigo_for'
      LookupResultField = 'Nome_for'
      KeyFields = 'Codigo_for'
      Size = 60
      Lookup = True
    end
  end
  object DataSetProvider_tbpedidos: TDataSetProvider
    DataSet = SQLDataSet_tbpedidos
    Left = 288
    Top = 264
  end
  object ClientDataSet_tbpedidos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_tbpedidos'
    AfterEdit = ClientDataSet_tbpedidosAfterEdit
    BeforePost = ClientDataSet_tbpedidosBeforePost
    AfterPost = ClientDataSet_tbpedidosAfterPost
    AfterCancel = ClientDataSet_tbpedidosAfterCancel
    AfterDelete = ClientDataSet_tbpedidosAfterDelete
    AfterRefresh = ClientDataSet_tbpedidosAfterRefresh
    Left = 456
    Top = 264
    object ClientDataSet_tbpedidosPedido_pdd: TLargeintField
      FieldName = 'Pedido_pdd'
      Required = True
    end
    object ClientDataSet_tbpedidosQtdParcelas_pdd: TIntegerField
      FieldName = 'QtdParcelas_pdd'
      Required = True
    end
    object ClientDataSet_tbpedidosDatavenda_pdd: TDateField
      FieldName = 'Datavenda_pdd'
      Required = True
    end
    object ClientDataSet_tbpedidosvalor_pdd: TFMTBCDField
      FieldName = 'valor_pdd'
      Precision = 10
      Size = 2
    end
    object ClientDataSet_tbpedidosStatus_pdd: TStringField
      FieldName = 'Status_pdd'
      Required = True
    end
    object ClientDataSet_tbpedidosCodigo_vdd: TIntegerField
      FieldName = 'Codigo_vdd'
      Required = True
    end
    object ClientDataSet_tbpedidosCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      Required = True
    end
    object ClientDataSet_tbpedidosCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
    object ClientDataSet_tbpedidosSQLDataSet_tbcomissoes: TDataSetField
      FieldName = 'SQLDataSet_tbcomissoes'
    end
    object ClientDataSet_tbpedidosNome_for: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_for'
      LookupDataSet = ClientDataSet_tbfornecedores
      LookupKeyFields = 'Codigo_for'
      LookupResultField = 'Nome_for'
      KeyFields = 'Codigo_for'
      Size = 60
      Lookup = True
    end
    object ClientDataSet_tbpedidosNome_cli: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_cli'
      LookupDataSet = ClientDataSet_tbclientes
      LookupKeyFields = 'Codigo_cli'
      LookupResultField = 'Nome_cli'
      KeyFields = 'Codigo_cli'
      Size = 60
      Lookup = True
    end
  end
  object ClientDataSet_tbcomissoes: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = ClientDataSet_tbpedidosSQLDataSet_tbcomissoes
    IndexFieldNames = 'Pedido_pdd;Codigo_for'
    Params = <>
    AfterEdit = ClientDataSet_tbcomissoesAfterEdit
    BeforePost = ClientDataSet_tbcomissoesBeforePost
    AfterPost = ClientDataSet_tbcomissoesAfterPost
    AfterCancel = ClientDataSet_tbcomissoesAfterCancel
    AfterDelete = ClientDataSet_tbcomissoesAfterDelete
    AfterRefresh = ClientDataSet_tbcomissoesAfterRefresh
    Left = 472
    Top = 376
    object ClientDataSet_tbcomissoesStatus_com: TStringField
      FieldName = 'Status_com'
      Required = True
    end
    object ClientDataSet_tbcomissoesNotafiscal_com: TIntegerField
      FieldName = 'Notafiscal_com'
      Required = True
    end
    object ClientDataSet_tbcomissoesDataemissao_com: TDateField
      FieldName = 'Dataemissao_com'
      Required = True
    end
    object ClientDataSet_tbcomissoesvalorcomissao_com: TFMTBCDField
      FieldName = 'valorcomissao_com'
      DisplayFormat = 'R$ #,##0.00;0;_'
      currency = True
      Precision = 10
      Size = 2
    end
    object ClientDataSet_tbcomissoesvalorpagto_com: TFMTBCDField
      FieldName = 'valorpagto_com'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object ClientDataSet_tbcomissoesPagaem_pdd: TDateField
      FieldName = 'Pagaem_pdd'
      Required = True
    end
    object ClientDataSet_tbcomissoesPercentcomissao_pdd: TIntegerField
      FieldName = 'Percentcomissao_pdd'
      Required = True
    end
    object ClientDataSet_tbcomissoesObservacao_com: TStringField
      FieldName = 'Observacao_com'
      Size = 120
    end
    object ClientDataSet_tbcomissoesPedido_pdd: TLargeintField
      FieldName = 'Pedido_pdd'
      Required = True
    end
    object ClientDataSet_tbcomissoesParcelapaga_com: TIntegerField
      FieldName = 'Parcelapaga_com'
      Required = True
    end
    object ClientDataSet_tbcomissoesCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
  end
  object DataSetProvider_tbcomissoes: TDataSetProvider
    DataSet = SQLDataSet_tbcomissoes
    Left = 304
    Top = 376
  end
  object SQLDataSet_tbcomissoes: TSQLDataSet
    Active = True
    CommandText = 
      'select * from tb_comissoes'#13#10'where pedido_pdd=:pedido_pdd and cod' +
      'igo_for=:codigo_for'
    DataSource = DataSource_tbcomissoes_detail
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'Pedido_pdd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Codigo_for'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 160
    Top = 376
    object SQLDataSet_tbcomissoesStatus_com: TStringField
      FieldName = 'Status_com'
      Required = True
    end
    object SQLDataSet_tbcomissoesNotafiscal_com: TIntegerField
      FieldName = 'Notafiscal_com'
      Required = True
    end
    object SQLDataSet_tbcomissoesDataemissao_com: TDateField
      FieldName = 'Dataemissao_com'
    end
    object SQLDataSet_tbcomissoesvalorcomissao_com: TFMTBCDField
      FieldName = 'valorcomissao_com'
      Precision = 10
      Size = 2
    end
    object SQLDataSet_tbcomissoesvalorpagto_com: TFMTBCDField
      FieldName = 'valorpagto_com'
      Precision = 10
      Size = 2
    end
    object SQLDataSet_tbcomissoesPagaem_pdd: TDateField
      FieldName = 'Pagaem_pdd'
      Required = True
    end
    object SQLDataSet_tbcomissoesPercentcomissao_pdd: TIntegerField
      FieldName = 'Percentcomissao_pdd'
      Required = True
    end
    object SQLDataSet_tbcomissoesObservacao_com: TStringField
      FieldName = 'Observacao_com'
      Size = 120
    end
    object SQLDataSet_tbcomissoesPedido_pdd: TLargeintField
      FieldName = 'Pedido_pdd'
      Required = True
    end
    object SQLDataSet_tbcomissoesParcelapaga_com: TIntegerField
      FieldName = 'Parcelapaga_com'
      Required = True
    end
    object SQLDataSet_tbcomissoesCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
  end
  object DataSource_tbcomissoes_detail: TDataSource
    DataSet = SQLDataSet_tbpedidos
    Left = 32
    Top = 378
  end
  object DataSource_tbpedidos_master: TDataSource
    Left = 32
    Top = 264
  end
  object ClientDataSet_comissoes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Pedido_pdd'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider_comissoes'
    Left = 456
    Top = 432
    object ClientDataSet_comissoesPedido_pdd: TLargeintField
      FieldName = 'Pedido_pdd'
      Required = True
    end
    object ClientDataSet_comissoesParcelapaga_com: TIntegerField
      FieldName = 'Parcelapaga_com'
      Required = True
    end
    object ClientDataSet_comissoesNome_cli: TStringField
      FieldName = 'Nome_cli'
      Required = True
      Size = 60
    end
    object ClientDataSet_comissoesNome_for: TStringField
      FieldName = 'Nome_for'
      Required = True
      Size = 60
    end
    object ClientDataSet_comissoesValorcomissao_com: TFMTBCDField
      FieldName = 'Valorcomissao_com'
      Required = True
      DisplayFormat = 'R$ #,##0.00;0;_'
      currency = True
      Precision = 10
      Size = 2
    end
    object ClientDataSet_comissoesValorpagto_com: TFMTBCDField
      FieldName = 'Valorpagto_com'
      Required = True
      DisplayFormat = 'R$ #,##0.00;0;_'
      currency = True
      Precision = 10
      Size = 2
    end
    object ClientDataSet_comissoesstatus_pdd: TStringField
      FieldName = 'status_pdd'
      Required = True
    end
    object ClientDataSet_comissoesdatavenda_pdd: TDateField
      FieldName = 'datavenda_pdd'
      Required = True
    end
  end
  object DataSetProvider_comissoes: TDataSetProvider
    DataSet = SQLQuery_comissoes
    Left = 288
    Top = 432
  end
  object DataSource_comissoes: TDataSource
    Left = 32
    Top = 432
  end
  object SQLQuery_comissoes: TSQLQuery
    DataSource = DataSource_comissoes
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Pedido_pdd'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select distinct tc.Pedido_pdd, tc.Parcelapaga_com, tcli.Nome_cli' +
        ', tf.Nome_for,tp.status_pdd, tc.Valorcomissao_com, tc.Valorpagto' +
        '_com, tp.datavenda_pdd'
      
        'from tb_comissoes tc, tb_pedidos tp, tb_fornecedores tf, tb_clie' +
        'ntes tcli'
      
        'where tc.Codigo_for = tf.Codigo_for and tp.Pedido_pdd = tc.Pedid' +
        'o_pdd and tp.Codigo_cli = tcli.codigo_cli'
      'order by tc.pedido_pdd, tc.codigo_for, tc.parcelapaga_com')
    SQLConnection = SQLConnection1
    Left = 144
    Top = 432
    object SQLQuery_comissoesPedido_pdd: TLargeintField
      FieldName = 'Pedido_pdd'
      Required = True
    end
    object SQLQuery_comissoesParcelapaga_com: TIntegerField
      FieldName = 'Parcelapaga_com'
      Required = True
    end
    object SQLQuery_comissoesNome_cli: TStringField
      FieldName = 'Nome_cli'
      Required = True
      Size = 60
    end
    object SQLQuery_comissoesNome_for: TStringField
      FieldName = 'Nome_for'
      Required = True
      Size = 60
    end
    object SQLQuery_comissoesValorcomissao_com: TFMTBCDField
      FieldName = 'Valorcomissao_com'
      Precision = 10
      Size = 2
    end
    object SQLQuery_comissoesValorpagto_com: TFMTBCDField
      FieldName = 'Valorpagto_com'
      Precision = 10
      Size = 2
    end
    object SQLQuery_comissoesstatus_pdd: TStringField
      FieldName = 'status_pdd'
      Required = True
    end
    object SQLQuery_comissoesdatavenda_pdd: TDateField
      FieldName = 'datavenda_pdd'
      Required = True
    end
  end
  object sqlt_pedidos: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'tb_pedidos'
    Left = 144
    Top = 312
    object sqlt_pedidosPedido_pdd: TLargeintField
      FieldName = 'Pedido_pdd'
      Required = True
    end
    object sqlt_pedidosQtdParcelas_pdd: TIntegerField
      FieldName = 'QtdParcelas_pdd'
      Required = True
    end
    object sqlt_pedidosDatavenda_pdd: TDateField
      FieldName = 'Datavenda_pdd'
      Required = True
    end
    object sqlt_pedidosvalor_pdd: TFMTBCDField
      FieldName = 'valor_pdd'
      Precision = 10
      Size = 2
    end
    object sqlt_pedidosStatus_pdd: TStringField
      FieldName = 'Status_pdd'
      Required = True
    end
    object sqlt_pedidosCodigo_vdd: TIntegerField
      FieldName = 'Codigo_vdd'
      Required = True
    end
    object sqlt_pedidosCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      Required = True
    end
    object sqlt_pedidosCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
  end
  object dsPedidos: TDataSource
    Left = 32
    Top = 320
  end
  object dsp_pedidos: TDataSetProvider
    DataSet = sqlt_pedidos
    Left = 280
    Top = 312
  end
  object cds_pedidos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_pedidos'
    Left = 424
    Top = 312
    object cds_pedidosPedido_pdd: TLargeintField
      FieldName = 'Pedido_pdd'
      Required = True
    end
    object cds_pedidosQtdParcelas_pdd: TIntegerField
      FieldName = 'QtdParcelas_pdd'
      Required = True
    end
    object cds_pedidosDatavenda_pdd: TDateField
      FieldName = 'Datavenda_pdd'
      Required = True
    end
    object cds_pedidosvalor_pdd: TFMTBCDField
      FieldName = 'valor_pdd'
      Precision = 10
      Size = 2
    end
    object cds_pedidosStatus_pdd: TStringField
      FieldName = 'Status_pdd'
      Required = True
    end
    object cds_pedidosCodigo_vdd: TIntegerField
      FieldName = 'Codigo_vdd'
      Required = True
    end
    object cds_pedidosCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      Required = True
    end
    object cds_pedidosCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
  end
  object SQLDataSet_tbpedidos: TSQLDataSet
    Active = True
    CommandText = 'select * from tb_pedidos'
    DataSource = DataSource_tbpedidos_master
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 152
    Top = 264
    object SQLDataSet_tbpedidosPedido_pdd: TLargeintField
      FieldName = 'Pedido_pdd'
      Required = True
    end
    object SQLDataSet_tbpedidosQtdParcelas_pdd: TIntegerField
      FieldName = 'QtdParcelas_pdd'
      Required = True
    end
    object SQLDataSet_tbpedidosDatavenda_pdd: TDateField
      FieldName = 'Datavenda_pdd'
      Required = True
    end
    object SQLDataSet_tbpedidosvalor_pdd: TFMTBCDField
      FieldName = 'valor_pdd'
      Precision = 10
      Size = 2
    end
    object SQLDataSet_tbpedidosStatus_pdd: TStringField
      FieldName = 'Status_pdd'
      Required = True
    end
    object SQLDataSet_tbpedidosCodigo_vdd: TIntegerField
      FieldName = 'Codigo_vdd'
      Required = True
    end
    object SQLDataSet_tbpedidosCodigo_cli: TIntegerField
      FieldName = 'Codigo_cli'
      Required = True
    end
    object SQLDataSet_tbpedidosCodigo_for: TIntegerField
      FieldName = 'Codigo_for'
      Required = True
    end
  end
end
