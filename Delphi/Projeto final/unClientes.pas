unit unClientes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFormPadrao, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Datasnap.DBClient, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;
//  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
//  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFormPadrao, Data.DB,, System.ImageList,
//  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Datasnap.DBClient, Vcl.Grids,
//  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;
type
  TfrmCadastroClientes = class(TfrmBase)
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    ToolBar2: TToolBar;
    btnPesquisar: TButton;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    //procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
//    function GetDir:string;
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

uses unDMCadastroClientes;

procedure TfrmCadastroClientes.FormCreate(Sender: TObject);
begin
  inherited;
  // Criar o datamodule
  if (not Assigned(dmCadastroClientes)) then
  dmCadastroClientes:= TdmCadastroClientes.Create(Self);
  // Criar o set
  dmCadastroClientes.cdsCadastroClientes.CreateDataSet;
end;

procedure TfrmCadastroClientes.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dmCadastroClientes.cdsCadastroClientes.Insert;
  DBEdit1.Enabled:= True;
end;

procedure TfrmCadastroClientes.btnAlterarClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Enabled:= False;
  dmCadastroClientes.cdsCadastroClientes.Edit;
  DBEdit2.SetFocus;
end;

procedure TfrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg ('Deseja mesmo excluir o registro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
  dmCadastroClientes.cdsCadastroClientes.Delete;
  end;
end;

procedure TfrmCadastroClientes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dmCadastroClientes.cdsCadastroClientes.Post;
  PageControl1.ActivePage := tsGrid;
end;

//procedure TfrmCadastroClientes.btnPesquisarClick(Sender: TObject);
//begin
//  inherited;
//  dmCadastroClientes.Locate('Nome Cliente', Edit1.Text[loPartialKey, loCaseInsensitive]);
//end;

procedure TfrmCadastroClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dmCadastroClientes.cdsCadastroClientes.Cancel;
  DBEdit1.Enabled:= True;
  PageControl1.ActivePage := tsGrid;
end;

procedure TfrmCadastroClientes.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmCadastroClientes);
end;

procedure TfrmCadastroClientes.FormShow(Sender: TObject);
begin
  inherited;
  dmCadastroClientes.cdsCadastroClientes.Open;
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
