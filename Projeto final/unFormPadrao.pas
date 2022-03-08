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
    DBGrid: TDBGrid;
    ds: TDataSource;
    cds: TClientDataSet;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
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
end;

procedure TfrmBase.btnAlterarClick(Sender: TObject);
begin
  HabilitaBotoes;
  StatusBar.Panels[0].Text:=('Mensagens: Alterando Registro.');

end;

procedure TfrmBase.btnExcluirClick(Sender: TObject);
begin
  btnIncluir.Enabled  := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnSalvar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnFechar.Enabled   := False;

  if MessageDlg ('Deseja mesmo excluir o registro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
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
