unit unSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFormPadrao, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmSaida = class(TfrmBase)
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaida: TfrmSaida;

implementation

{$R *.dfm}

uses unDMSaida;

procedure TfrmSaida.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dmSaida.cdsSaida.Insert;
end;

procedure TfrmSaida.btnAlterarClick(Sender: TObject);
begin
  inherited;
  // DBEdit1.Enabled:= False;
  dmSaida.cdsSaida.Edit;
 // DBEdit2.SetFocus;
end;

procedure TfrmSaida.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dmSaida.cdsSaida.Cancel;
  DBEdit1.Enabled:= True;
  PageControl1.ActivePage := tsGrid;
end;

procedure TfrmSaida.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg ('Deseja mesmo excluir o registro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
  dmSaida.cdsSaida.Delete;
  end;
end;

procedure TfrmSaida.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmSaida);
end;

procedure TfrmSaida.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dmSaida.cdsSaida.Post;
  PageControl1.ActivePage := tsGrid;
end;

// TESTA SE O NOME DO USUARIO EXISTE.
// SE EXISTIR, DEVE IMPEDIR A CONTINUAÇÃO DO CADASTRO
//procedure TfrmUsuario.DBEdit5Exit(Sender: TObject);
//begin
//  inherited;
//  if dmSaida.cdsSaida = dmSaida.cdsSaida then
//  begin
//    ShowMessage ('Usuário já cadastrado!');
//  end
//   else
//  begin
//  ShowMessage ('Usuário não foi encotrado na base de dados. Continue o cadastro!');
//   end;
//end;

procedure TfrmSaida.FormCreate(Sender: TObject);
begin
  inherited;
  // Criar o datamodule
  if (not Assigned(dmSaida)) then
  dmSaida:= TdmSaida.Create(Self);
  // Criar o set
  dmSaida.cdsSaida.CreateDataSet;
end;



end.
