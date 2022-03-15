unit unEstacionamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin,
  System.ImageList, Vcl.ImgList, Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Sobre1: TMenuItem;
    ToolBar1: TToolBar;
    mmCadastroUsuarios: TMenuItem;
    ImageList1: TImageList;
    btUsuarios: TToolButton;
    ToolButton1: TToolButton;
    btClientes: TToolButton;
    ToolButton3: TToolButton;
    btEntrada: TToolButton;
    ToolButton5: TToolButton;
    btSaida: TToolButton;
    mmCadastroClientes: TMenuItem;
    procedure btUsuariosClick(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure btEntradaClick(Sender: TObject);
    procedure mmCadastroClientesClick(Sender: TObject);
    procedure btSaidaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses unUsuario, unClientes, unEntrada, unFormPadrao, unDMUsuario, unSaida;

procedure TFormPrincipal.btUsuariosClick(Sender: TObject);
begin
 Application.CreateForm(TfrmUsuario, frmUsuario);
 frmUsuario.ShowModal;
end;

procedure TFormPrincipal.mmCadastroClientesClick(Sender: TObject);
begin
 Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
 frmCadastroClientes.ShowModal;
end;

procedure TFormPrincipal.btClientesClick(Sender: TObject);
begin
 Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
 frmCadastroClientes.ShowModal;
end;

procedure TFormPrincipal.btEntradaClick(Sender: TObject);
begin
 Application.CreateForm(TfrmEntrada, frmEntrada);
 frmEntrada.ShowModal;
end;

procedure TFormPrincipal.btSaidaClick(Sender: TObject);
begin
 Application.CreateForm(TfrmSaida, frmSaida);
 frmSaida.ShowModal;
end;

end.
