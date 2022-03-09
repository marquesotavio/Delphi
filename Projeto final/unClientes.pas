unit unClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFormPadrao, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroClientes = class(TfrmBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    function GetDir:string;

  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

uses unDMCadastroClientes;

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

    //Carrego os dados do xml
  if FileExists(GetDir) then
    dmCadastroClientes.cdsCadastroClientes.LoadFromFile(GetDir);

    //indice
    dmCadastroClientes.cdsCadastroClientes.IndexFieldNames:= 'CodCli';
end;

function TfrmCadastroClientes.GetDir: string;
begin
 Result:= ExtractFilePath(Application.ExeName)+'Cli.xml';
end;

end.
