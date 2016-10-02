program PCommSys;

uses
  Vcl.Forms,
  UFrmPrincipal in 'view\UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCidades in 'view\UFrmCidades.pas' {FrmCidades},
  UDMConexao in 'datamodule\UDMConexao.pas' {DMConexao: TDataModule},
  UFrmVendedores in 'view\UFrmVendedores.pas' {FrmVendedores},
  UFrmRepresentadas in 'view\UFrmRepresentadas.pas' {FrmRepresentadas},
  UFrmClientes in 'view\UFrmClientes.pas' {FrmClientes},
  UFrmCodigos in 'view\UFrmCodigos.pas' {FrmCodigos},
  UFrmPedidos in 'view\UFrmPedidos.pas' {FrmPedidos},
  UFuncoes in 'classes\UFuncoes.pas',
  UFrmComissoes in 'view\UFrmComissoes.pas' {FrmComissoes},
  UFrmConsultar in 'view\UFrmConsultar.pas' {FrmConsultar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.Run;
end.
