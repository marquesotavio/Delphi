unit unEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFormPadrao, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEntrada = class(TfrmBase)
    btnPesquisar: TButton;
    Edit1: TEdit;
    ToolBar2: TToolBar;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
//    function GetDir:string;
  public
    { Public declarations }
  end;

var
  frmEntrada: TfrmEntrada;

implementation

{$R *.dfm}

uses unDMEntrada;

procedure TfrmEntrada.FormCreate(Sender: TObject);
begin
  inherited;
  // Criar o datamodule
  if (not Assigned(dmEntrada)) then
  dmEntrada:= TdmEntrada.Create(Self);
  // Criar o set
  dmEntrada.cdsEntrada.CreateDataSet;
end;

procedure TfrmEntrada.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dmEntrada.cdsEntrada.Insert;
  //DBEdit1.Enabled:= True;
end;

procedure TfrmEntrada.btnAlterarClick(Sender: TObject);
begin
  inherited;
  //DBEdit1.Enabled:= False;
  dmEntrada.cdsEntrada.Edit;
  //DBEdit2.SetFocus;
end;

procedure TfrmEntrada.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg ('Deseja mesmo excluir o registro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
  dmEntrada.cdsEntrada.Delete;
  end;
end;

procedure TfrmEntrada.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dmEntrada.cdsEntrada.Post;
  PageControl1.ActivePage := tsGrid;
end;

//procedure TfrmEntrada.btnPesquisarClick(Sender: TObject);
//begin
//  inherited;
//  dmEntrada.Locate('Nome Cliente', Edit1.Text[loPartialKey, loCaseInsensitive]);
//end;

procedure TfrmEntrada.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dmEntrada.cdsEntrada.Cancel;
 // DBEdit1.Enabled:= True;
  PageControl1.ActivePage := tsGrid;
end;

procedure TfrmEntrada.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmEntrada);
end;

procedure TfrmEntrada.FormShow(Sender: TObject);
begin
  inherited;
  dmEntrada.cdsEntrada.Open;
//
  //Carrego os dados do xml
//  if FileExists(GetDir) then
//    dmCadastroClientes.cdsCadastroClientes.LoadFromFile(GetDir);
//
    //indice
//dmCadastroClientes.cdsCadastroClientes.IndexFieldNames:= 'CodCli';
end;



//function TfrmCadastroClientes.GetDir: string;
//begin
// Result:= ExtractFilePath(Application.ExeName)+'Cli.xml';
//end;
end.
