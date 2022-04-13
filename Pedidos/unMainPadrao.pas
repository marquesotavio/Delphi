unit unMainPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, System.Actions, Vcl.ActnList,
  Datasnap.DBClient;

type
  TfrmMainPadrao = class(TForm)
    ToolBar2: TToolBar;
    ImageList1: TImageList;
    Panel1: TPanel;
    gridConsulta: TDBGrid;
    StatusBar: TStatusBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ActionList1: TActionList;
    actIncluir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actSalvar: TAction;
    actFechar: TAction;
    dsCadastro: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actFecharExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);


  private
    { Private declarations }
    procedure DisplayHint(Sender: TObject);
    procedure HabilitaBotoes;
  public
    { Public declarations }
  end;

var
  frmMainPadrao: TfrmMainPadrao;

implementation

{$R *.dfm}

procedure TfrmMainPadrao.HabilitaBotoes;
begin
  actIncluir.Enabled  := False;
  actAlterar.Enabled  := False;
  actExcluir.Enabled  := False;
  actSalvar.Enabled   := True;
  actCancelar.Enabled := True;
  actFechar.Enabled   := False;
end;

procedure TfrmMainPadrao.actAlterarExecute(Sender: TObject);
begin
   HabilitaBotoes;
end;

procedure TfrmMainPadrao.actCancelarExecute(Sender: TObject);
begin
 actIncluir.Enabled := True;
 actAlterar.Enabled := True;
 actExcluir.Enabled := True;
 actSalvar.Enabled := False;
 actCancelar.Enabled := False;
 actFechar.Enabled := True;
end;

procedure TfrmMainPadrao.actExcluirExecute(Sender: TObject);
begin
  actIncluir.Enabled  := False;
  actAlterar.Enabled  := False;
  actExcluir.Enabled  := False;
  actSalvar.Enabled   := False;
  actCancelar.Enabled := False;
  actFechar.Enabled   := False;
begin
  actIncluir.Enabled  := True;
  actAlterar.Enabled  := True;
  actExcluir.Enabled  := False;
  actSalvar.Enabled   := False;
  actCancelar.Enabled := False;
  actFechar.Enabled   := True;
  StatusBar.Panels[0].Text:=('Mensagem:');
  end;
end;

procedure TfrmMainPadrao.actFecharExecute(Sender: TObject);
begin
 close;
end;

procedure TfrmMainPadrao.actIncluirExecute(Sender: TObject);
begin
 HabilitaBotoes;
end;



procedure TfrmMainPadrao.actSalvarExecute(Sender: TObject);
begin
  actIncluir.Enabled := True;
  actAlterar.Enabled := True;
  actExcluir.Enabled := True;
  actSalvar.Enabled := False;
  actCancelar.Enabled := False;
  actFechar.Enabled := True;
end;

procedure TfrmMainPadrao.gridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 //Deixando o grid zebrado

 //Fun��o odd retorna true/false no caso do valor ser par/impar

 if not odd(dsCadastro.DataSet.RecNo) then
 begin
   if not (gdSelected in State) then
    begin
      gridConsulta.Canvas.Brush.Color := clMoneyGreen;
      gridConsulta.Canvas.FillRect(Rect);
      gridConsulta.DefaultDrawDataCell(rect,Column.Field,state);
    end;
 end;
end;



procedure TfrmMainPadrao.DisplayHint(Sender: TObject);
begin
 //Mostrar os hint�s na barra de status
 StatusBar.Panels[0].Text := 'Mensagem: '+Application.Hint;
end;

procedure TfrmMainPadrao.FormCreate(Sender: TObject);
begin
 Application.OnHint := DisplayHint;
end;

procedure TfrmMainPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TfrmMainPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if(key=#13) then
  Perform(WM_nextdlgctl,0,0)
 else if (Key=#27) then
  Perform(WM_nextdlgctl,1,0);
end;

end.
