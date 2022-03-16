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
    Label22: TLabel;
    DBEdit20: TDBEdit;
    ToolBar2: TToolBar;
    btnPesquisar: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
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
   // function GetDir:string;
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

uses unDMClientes;

procedure TfrmCadastroClientes.FormCreate(Sender: TObject);
begin
  inherited;
  // Criar o datamodule
  if (not Assigned(dmClientes)) then
  dmClientes:= TdmClientes.Create(Self);
  // Criar o set
  dmClientes.cdsClientes.CreateDataSet;
end;

procedure TfrmCadastroClientes.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dmClientes.cdsClientes.Insert;
  DBEdit1.Enabled:= True;
end;

procedure TfrmCadastroClientes.btnAlterarClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Enabled:= False;
  dmClientes.cdsClientes.Edit;
  DBEdit2.SetFocus;
end;

procedure TfrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg ('Deseja mesmo excluir o registro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
  dmClientes.cdsClientes.Delete;
  end;
end;

procedure TfrmCadastroClientes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dmClientes.cdsClientes.Post;
  PageControl1.ActivePage := tsGrid;
end;

//procedure TfrmCadastroClientes.btnPesquisarClick(Sender: TObject);
//begin
//  inherited;
//  dmClientes.Locate('Nome Cliente', Edit1.Text[loPartialKey, loCaseInsensitive]);
//end;

procedure TfrmCadastroClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dmClientes.cdsClientes.Cancel;
  DBEdit1.Enabled:= True;
  PageControl1.ActivePage := tsGrid;
end;

procedure TfrmCadastroClientes.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmClientes);
end;

procedure TfrmCadastroClientes.FormShow(Sender: TObject);
begin
  inherited;
  dmClientes.cdsClientes.Open;

// Carrego os dados do xml
  //if FileExists(GetDir) then
  //dmClientes.cdsClientes.LoadFromFile(GetDir);

    //indice
  //dmClientes.cdsClientes.IndexFieldNames:= 'CodCli';
end;

//function TfrmCadastroClientes.GetDir: string;
//begin
// Result:= ExtractFilePath(Application.ExeName)+'Cli.xml';
//end;

end.
