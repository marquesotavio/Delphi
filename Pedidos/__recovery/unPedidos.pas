unit unPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmControlePedidos = class(TForm)
    MainMenu1: TMainMenu;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Cadastro1: TMenuItem;
    CadastroClientes1: TMenuItem;
    CadastroFornecedores1: TMenuItem;
    PedidodeCompras1: TMenuItem;
    PedidodeVendas1: TMenuItem;
    N1: TMenuItem;
    CadastrodeCEPs1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    actCep: TAction;
    actClientes: TAction;
    actFornecedores: TAction;
    actPedidoCompra: TAction;
    actPedidoVenda: TAction;
    actSair: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Panel1: TPanel;
    Image1: TImage;
    actTESTE: TAction;
    ToolButton12: TToolButton;
    procedure actSairExecute(Sender: TObject);
    procedure actCepExecute(Sender: TObject);
    procedure actClientesExecute(Sender: TObject);
    procedure actFornecedoresExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actTESTEExecute(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlePedidos: TfrmControlePedidos;

implementation

{$R *.dfm}

uses unCep, unCadastroClientes, unFornecedores, unTesteCep;


procedure TfrmControlePedidos.actCepExecute(Sender: TObject);
begin
 Application.CreateForm(TfrmCep, frmCep);
 frmCep.ShowModal;
end;

procedure TfrmControlePedidos.actClientesExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  frmCadastroClientes.ShowModal;
end;

procedure TfrmControlePedidos.actFornecedoresExecute(Sender: TObject);
begin
 Application.CreateForm(TfrmFornecedores, frmFornecedores);
 frmFornecedores.ShowModal;
end;

procedure TfrmControlePedidos.actSairExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmControlePedidos.actTESTEExecute(Sender: TObject);
begin
 Application.CreateForm(TfrmTesteCep, frmTesteCep);
 frmTesteCep.ShowModal;
end;

procedure TfrmControlePedidos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 canClose := Application.MessageBox('Tem certeza que deseja sair?', 'Atenção!', MB_YESNO+MB_ICONQUESTION) = idYES;
end;

procedure TfrmControlePedidos.FormKeyPress(Sender: TObject;
 var Key: Char);
begin
 if Key = #27 then
 Close;
end;

end.
