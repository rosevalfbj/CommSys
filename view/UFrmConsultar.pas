unit UFrmConsultar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Data.DB, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Data.FMTBcd, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, Vcl.Buttons;

type
  TFrmConsultar = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnFiltrar: TBitBtn;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DataSource_comissoes: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox3: TComboBox;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Combobox4: TComboBox;
    Combobox5: TComboBox;
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultar: TFrmConsultar;

implementation
  uses UDMConexao, UFuncoes;
{$R *.dfm}

procedure TFrmConsultar.btnFiltrarClick(Sender: TObject);
begin
  DMConexao.SQLQuery_comissoes.close;
  DMConexao.SQLQuery_comissoes.SQL.Clear;
  DMConexao.SQLQuery_comissoes.Params.Clear;

  DMConexao.SQLQuery_comissoes.SQL.Add('select distinct tc.Pedido_pdd, tc.Parcelapaga_com, tcli.Nome_cli, tcid.nome_cid, tp.status_pdd, tf.Nome_for, tc.Valorcomissao_com, tc.Valorpagto_com ');
  DMConexao.SQLQuery_comissoes.SQL.Add('from tb_comissoes tc, tb_pedidos tp, tb_fornecedores tf, tb_clientes tcli, tb_cidades tcid, tb_vendedores tvd where ');
  DMConexao.SQLQuery_comissoes.SQL.Add('tc.Codigo_for = tf.Codigo_for and tp.Pedido_pdd = tc.Pedido_pdd and tp.Codigo_cli = tcli.codigo_cli and tcli.codigo_cid = tcid.codigo_cid and tvd.codigo_vdd = tp.codigo_vdd and ');
  DMConexao.SQLQuery_comissoes.SQL.Add('tcli.nome_cli like '+quotedstr(combobox1.Text)+' and tf.nome_for like '+quotedstr(combobox2.text)+ ' and tp.status_pdd like '+quotedstr(combobox4.Text)+' and tcid.nome_cid like '+quotedstr(combobox5.Text)+' and tvd.nome_vdd like '+quotedstr(combobox3.Text));

  if edit1.Text <> '' then
    DMConexao.sqlquery_comissoes.SQL.Add(' and tc.pedido_pdd='+edit1.text);

  DMConexao.SQLQuery_comissoes.SQL.Add(' order by tc.pedido_pdd, tc.codigo_for, tc.parcelapaga_com');

  //showmessage(DMConexao.SQLQuery_comissoes.SQL.Text);
  DMConexao.SQLQuery_comissoes.Open;
  DMConexao.ClientDataSet_comissoes.close;
  DMConexao.ClientDataSet_comissoes.Open;

  edit2.Text:=FormatCurr('R$ ,0.00',calcComissao_sqlq(DMConexao.SQLQuery_comissoes,DMConexao.SQLQuery_comissoesValorComissao_com));
  edit3.Text:=FormatCurr('R$ ,0.00',calcComissao_sqlq(DMConexao.SQLQuery_comissoes,DMConexao.SQLQuery_comissoesValorPagto_com));
end;

procedure TFrmConsultar.FormCreate(Sender: TObject);
begin
  DMConexao.sqlquery_comissoes.SQL.Clear;
  DMConexao.SQLQuery_comissoes.SQL.Add('select distinct tc.Pedido_pdd, tc.Parcelapaga_com, tcli.Nome_cli, tcid.nome_cid, tp.status_pdd, tf.Nome_for, tc.Valorcomissao_com, tc.Valorpagto_com ');
  DMConexao.SQLQuery_comissoes.SQL.Add('from tb_comissoes tc, tb_pedidos tp, tb_fornecedores tf, tb_clientes tcli, tb_cidades tcid, tb_vendedores tvd where ');
  DMConexao.SQLQuery_comissoes.SQL.Add('tc.Codigo_for = tf.Codigo_for and tp.Pedido_pdd = tc.Pedido_pdd and tp.Codigo_cli = tcli.codigo_cli and tcli.codigo_cid = tcid.codigo_cid and tvd.codigo_vdd = tp.codigo_vdd ');
  DMConexao.sqlquery_comissoes.SQL.Add('order by tc.pedido_pdd, tc.codigo_for, tc.parcelapaga_com');
  DMConexao.sqlquery_comissoes.close;
  DMConexao.sqlquery_comissoes.Open;
  DMConexao.ClientDataSet_comissoes.Close;
  DMConexao.ClientDataSet_comissoes.Open;

  combobox1.Items.Add('%');
  combobox2.Items.Add('%');
  combobox3.Items.Add('%');
  combobox5.Items.Add('%');

  populaCombobox(DMConexao.SQLTable_tbclientes,DMConexao.SQLTable_tbclientesNome_cli,combobox1);
  populaCombobox(DMConexao.SQLTable_tbfornecedores,DMConexao.SQLTable_tbfornecedoresNome_for,combobox2);
  populaCombobox(DMConexao.SQLTable_tbvendedores,DMConexao.SQLTable_tbvendedoresNome_vdd,combobox3);
  populaCombobox(DMConexao.SQLTable_tbcidades,DMConexao.SQLTable_tbcidadesNome_cid,combobox5);

  edit2.Text:=FormatCurr('R$ ,0.00',calcComissao_sqlq(DMConexao.SQLQuery_comissoes,DMConexao.SQLQuery_comissoesValorComissao_com));
  edit3.Text:=FormatCurr('R$ ,0.00',calcComissao_sqlq(DMConexao.SQLQuery_comissoes,DMConexao.SQLQuery_comissoesValorPagto_com));
end;

procedure TFrmConsultar.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.
