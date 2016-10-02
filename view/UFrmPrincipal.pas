unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Label1: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation
  Uses UFrmCidades, UFrmVendedores, UFrmRepresentadas, UFrmClientes, UFrmCodigos, UFrmPedidos,
  UFrmComissoes, UFrmConsultar;
{$R *.dfm}

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCidades,FrmCidades);
  FrmCidades.ShowModal;
  FrmCidades.Free;
end;

procedure TFrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFrmVendedores,FrmVendedores);
  FrmVendedores.ShowModal;
  FrmVendedores.Free;
end;

procedure TFrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFrmRepresentadas,FrmRepresentadas);
  FrmRepresentadas.ShowModal;
  FrmRepresentadas.Free;
end;

procedure TFrmPrincipal.SpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFrmClientes,FrmClientes);
  FrmClientes.ShowModal;
  FrmClientes.Free;
end;

procedure TFrmPrincipal.SpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCodigos,FrmCodigos);
  FrmCodigos.ShowModal;
  FrmCodigos.Free;
end;

procedure TFrmPrincipal.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPedidos,FrmPedidos);
  FrmPedidos.ShowModal;
  FrmPedidos.Free;
end;

procedure TFrmPrincipal.SpeedButton8Click(Sender: TObject);
begin
  Application.CreateForm(TFrmComissoes,FrmComissoes);
  FrmComissoes.ShowModal;
  FrmComissoes.Free;
end;

procedure TFrmPrincipal.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultar,FrmConsultar);
  FrmConsultar.ShowModal;
  FrmConsultar.Free;
end;

procedure TFrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  application.Terminate;
end;

end.
