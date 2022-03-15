unit unFormPadrao;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ToolWin, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids;
type
  TfrmBase = class(TForm)
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    btnIncluir: TToolButton;
    btnAlterar: TToolButton;
    btnExcluir: TToolButton;
    ToolButton4: TToolButton;
    btnSalvar: TToolButton;
    btnCancelar: TToolButton;
    ToolButton7: TToolButton;
    btnFechar: TToolButton;
    StatusBar: TStatusBar;
    PageControl1: TPageControl;
    tsGrid: TTabSheet;
    tsCadastro: TTabSheet;
    DBGrid1: TDBGrid;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitaBotoes;
  public
    { Public declarations }
  end;
var
  frmBase: TfrmBase;
implementation
{$R *.dfm}

uses unUsuario;
procedure TfrmBase.HabilitaBotoes;
begin
  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnSalvar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnFechar.Enabled   := False;
end;
procedure TfrmBase.btnIncluirClick(Sender: TObject);
begin
  HabilitaBotoes;
  StatusBar.Panels[0].Text:=('Mensagens: Incluindo Registro.');
  PageControl1.ActivePage:= tsCadastro;
end;
procedure TfrmBase.btnSalvarClick(Sender: TObject);
begin
  btnIncluir.Enabled := True;
  btnAlterar.Enabled := True;
  btnExcluir.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;
  btnFechar.Enabled := True;
  PageControl1.ActivePage := tsGrid;
end;
procedure TfrmBase.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePage := tsGrid;
end;
procedure TfrmBase.btnAlterarClick(Sender: TObject);
begin
  HabilitaBotoes;
  StatusBar.Panels[0].Text:=('Mensagens: Alterando Registro.');
  PageControl1.ActivePage:= tsCadastro;
end;
procedure TfrmBase.btnCancelarClick(Sender: TObject);
begin
 PageControl1.ActivePage := tsGrid;
 btnIncluir.Enabled := True;
 btnAlterar.Enabled := True;
 btnExcluir.Enabled := True;
 btnSalvar.Enabled := False;
 btnCancelar.Enabled := False;
 btnFechar.Enabled := True;
 end;
procedure TfrmBase.btnExcluirClick(Sender: TObject);
begin
  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnFechar.Enabled   := False;
begin
  btnIncluir.Enabled  := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := False;
  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnFechar.Enabled   := True;
  StatusBar.Panels[0].Text:=('Mensagem:');
  end;
end;
procedure TfrmBase.btnFecharClick(Sender: TObject);
begin
  close;
end;
end.
