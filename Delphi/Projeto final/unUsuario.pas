unit unUsuario;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFormPadrao, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;
type
  TfrmUsuario = class(TfrmBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
//    procedure DBEdit5Exit(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmUsuario: TfrmUsuario;
implementation
{$R *.dfm}
uses unDMUsuario;
procedure TfrmUsuario.btnAlterarClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Enabled:= False;
  dmUsuario.cdsUsuario.Edit;
  DBEdit2.SetFocus;
end;

procedure TfrmUsuario.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dmUsuario.cdsUsuario.Cancel;
  DBEdit1.Enabled:= True;
  PageControl1.ActivePage := tsGrid;
end;

procedure TfrmUsuario.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg ('Deseja mesmo excluir o registro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
  dmUsuario.cdsUsuario.Delete;
  end;
end;
procedure TfrmUsuario.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmUsuario);
end;
procedure TfrmUsuario.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dmUsuario.cdsUsuario.Insert;
  DBEdit1.Enabled:= True;
end;
procedure TfrmUsuario.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dmUsuario.cdsUsuario.Post;
  PageControl1.ActivePage := tsGrid;
end;

// TESTA SE O NOME DO USUARIO EXISTE.
// SE EXISTIR, DEVE IMPEDIR A CONTINUAÇÃO DO CADASTRO
//procedure TfrmUsuario.DBEdit5Exit(Sender: TObject);
//begin
//  inherited;
//  if dmUsuario.cdsUsuarioUsuario = dmUsuario.cdsUsuarioUsuario then
//  begin
//    ShowMessage ('Usuário já cadastrado!');
//  end
//   else
//  begin
//  ShowMessage ('Usuário não foi encotrado na base de dados. Continue o cadastro!');
//   end;
//end;

procedure TfrmUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  // Criar o datamodule
  if (not Assigned(dmUsuario)) then
  dmUsuario:= TdmUsuario.Create(Self);
  // Criar o set
  dmUsuario.cdsUsuario.CreateDataSet;
end;
procedure TfrmUsuario.FormShow(Sender: TObject);
begin
  inherited;
  dmUsuario.cdsUsuario.Open;
end;
end.
