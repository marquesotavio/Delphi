unit unCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unMainPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCep = class(TfrmMainPadrao)
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actAlterarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCep: TfrmCep;

implementation

{$R *.dfm}

uses unDmCep;

procedure TfrmCep.FormCreate(Sender: TObject);
begin
  inherited;
  //criando o datamodule de CEP para uso
  if not Assigned(dmCep) then
  dmCep:= TdmCep.Create(nil);
  dsCadastro.DataSet:= dmCep.cdsCep;
end;

procedure TfrmCep.FormShow(Sender: TObject);
begin
  inherited;
  //Abro o dataset
  dmCep.cdsCep.Open;
end;


procedure TfrmCep.actIncluirExecute(Sender: TObject);
begin
  inherited;
  dmCep.cdsCep.Append;
end;

procedure TfrmCep.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dmCep.cdsCep.Edit;
end;

procedure TfrmCep.actCancelarExecute(Sender: TObject);
begin
  inherited;
  dmCep.cdsCep.Cancel;
end;

procedure TfrmCep.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja mesmo excluir o registro?', mtConfirmation,
     [mbYes, mbNo], 0) = mrYes then
  begin
    dmCep.cdsCep.Delete;
    dmCep.cdsCep.ApplyUpdates(0);
  end;

end;

procedure TfrmCep.actSalvarExecute(Sender: TObject);
begin
  // Testa se há mudanças.
  // ApplyUpdates persiste o comando no banco de dados.
  inherited;
  dmCep.cdsCep.Post;

  if (dmCep.cdsCep.ChangeCount > 0) then
  dmCep.cdsCep.ApplyUpdates(-1);
end;

procedure TfrmCep.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #27) and (Assigned(dmCep)) then
  Close;
end;

procedure TfrmCep.FormDestroy(Sender: TObject);
begin
  if Assigned(dmCep) then
  begin
    dmCep.cdsCep.Close;
    FreeAndNil(dmCep);
  end;
end;

end.
