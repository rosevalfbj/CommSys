unit UFrmConsultar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Data.DB, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Data.FMTBcd, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, Vcl.Buttons, Vcl.ComCtrls, System.DateUtils;

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
    dtde: TDateTimePicker;
    dtate: TDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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

  dtde.Format:='yyyy/MM/dd';
  dtate.Format:='yyyy/MM/dd';

  with DMConexao.SQLQuery_comissoes.SQL do
    begin
      Add('select distinct tc.Pedido_pdd, tc.Parcelapaga_com, tcli.Nome_cli, tcid.nome_cid, tp.status_pdd, tf.Nome_for, tc.Valorcomissao_com, tc.Valorpagto_com, tp.datavenda_pdd ');
      Add('from tb_comissoes tc, tb_pedidos tp, tb_fornecedores tf, tb_clientes tcli, tb_cidades tcid, tb_vendedores tvd where ');
      Add('tc.Codigo_for = tf.Codigo_for and tp.Pedido_pdd = tc.Pedido_pdd and tp.Codigo_cli = tcli.codigo_cli and tcli.codigo_cid = tcid.codigo_cid and tvd.codigo_vdd = tp.codigo_vdd ');

      if combobox1.Text <> '' then
        Add(' and tcli.nome_cli like '+quotedstr(combobox1.Text));
      if combobox2.Text <> '' then
        Add(' and tf.nome_for like '+quotedstr(combobox2.Text));
      if combobox4.Text <> '' then
        Add(' and tp.status_pdd like '+quotedstr(combobox4.Text));
      if combobox5.Text <> '' then
        Add(' and tcid.nome_cid like '+quotedstr(combobox5.Text));
      if combobox3.Text <> '' then
        Add(' and tvd.nome_vdd like '+quotedstr(combobox3.Text));
      if edit1.Text <> '' then
        Add(' and tc.pedido_pdd='+edit1.text);
      if (datetostr(dtde.Date) <> '') and (datetostr(dtate.Date) <> '') then
        Add(' and tp.datavenda_pdd between '+quotedstr(FormatDateTime('YYYY/MM/DD',dtde.Date))+' and '+quotedstr(FormatDateTime('YYYY/MM/DD',dtate.Date)));
      Add(' order by tc.pedido_pdd, tc.codigo_for, tc.parcelapaga_com');
    end;

  //showmessage(DMConexao.SQLQuery_comissoes.SQL.Text);
  DMConexao.SQLQuery_comissoes.Open;
  DMConexao.ClientDataSet_comissoes.close;
  DMConexao.ClientDataSet_comissoes.Open;

  edit2.Text:=FormatCurr('R$ ,0.00',calcComissao_sqlq(DMConexao.SQLQuery_comissoes,DMConexao.SQLQuery_comissoesValorComissao_com));
  edit3.Text:=FormatCurr('R$ ,0.00',calcComissao_sqlq(DMConexao.SQLQuery_comissoes,DMConexao.SQLQuery_comissoesValorPagto_com));
  dtde.Format:='dd/MM/yyyy';
  dtate.Format:='dd/MM/yyyy';
end;

procedure TFrmConsultar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TFrmConsultar.FormCreate(Sender: TObject);
begin
  DMConexao.sqlquery_comissoes.SQL.Clear;
  DMConexao.SQLQuery_comissoes.SQL.Add('select distinct tc.Pedido_pdd, tc.Parcelapaga_com, tcli.Nome_cli, tcid.nome_cid, tp.status_pdd, tf.Nome_for, tc.Valorcomissao_com, tc.Valorpagto_com, tp.datavenda_pdd ');
  DMConexao.SQLQuery_comissoes.SQL.Add('from tb_comissoes tc, tb_pedidos tp, tb_fornecedores tf, tb_clientes tcli, tb_cidades tcid, tb_vendedores tvd where ');
  DMConexao.SQLQuery_comissoes.SQL.Add('tc.Codigo_for = tf.Codigo_for and tp.Pedido_pdd = tc.Pedido_pdd and tp.Codigo_cli = tcli.codigo_cli and tcli.codigo_cid = tcid.codigo_cid and tvd.codigo_vdd = tp.codigo_vdd ');
  DMConexao.sqlquery_comissoes.SQL.Add('order by tc.pedido_pdd, tc.codigo_for, tc.parcelapaga_com');
  DMConexao.sqlquery_comissoes.close;
  DMConexao.sqlquery_comissoes.Open;
  DMConexao.ClientDataSet_comissoes.Close;
  DMConexao.ClientDataSet_comissoes.Open;

  populaCombobox(DMConexao.SQLTable_tbclientes,DMConexao.SQLTable_tbclientesNome_cli,combobox1);
  populaCombobox(DMConexao.SQLTable_tbfornecedores,DMConexao.SQLTable_tbfornecedoresNome_for,combobox2);
  populaCombobox(DMConexao.SQLTable_tbvendedores,DMConexao.SQLTable_tbvendedoresNome_vdd,combobox3);
  populaCombobox(DMConexao.SQLTable_tbcidades,DMConexao.SQLTable_tbcidadesNome_cid,combobox5);

  edit2.Text:=FormatCurr('R$ ,0.00',calcComissao_sqlq(DMConexao.SQLQuery_comissoes,DMConexao.SQLQuery_comissoesValorComissao_com));
  edit3.Text:=FormatCurr('R$ ,0.00',calcComissao_sqlq(DMConexao.SQLQuery_comissoes,DMConexao.SQLQuery_comissoesValorPagto_com));

  dtde.Date := now();
  dtate.Date := now();
end;

procedure TFrmConsultar.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.
