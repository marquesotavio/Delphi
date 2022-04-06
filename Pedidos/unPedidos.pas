unit unPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

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
    procedure actSairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlePedidos: TfrmControlePedidos;

implementation

{$R *.dfm}

procedure TfrmControlePedidos.actSairExecute(Sender: TObject);
begin
 Close;
end;

end.
