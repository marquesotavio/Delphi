unit unFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unMainPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, unClasseFornec;

type
  TfrmFornecedores = class(TfrmMainPadrao)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    ed_BairroCliente: TEdit;
    Label7: TLabel;
    Label9: TLabel;
    ed_IbgeCliente: TEdit;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
  procedure FormCreate (Sender: TObject);
  procedure FormDestroy (Sender: TObject);
  procedure FormShow (Sender: TObject);
  procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses unDmFornecedores;

{ TfrmFornecedores }



procedure TfrmFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
  //criando o datamodule de Fornecedores para uso
  if not Assigned(dmFornecedores) then
  dmFornecedores:= TdmFornecedores.Create(nil);
  dsCadastro.DataSet:= dmFornecedores.cdsFornecedores;
end;

procedure TfrmFornecedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #27) and (Assigned(dmFornecedores)) then
  Close;
end;

procedure TfrmFornecedores.FormDestroy(Sender: TObject);
begin
 if Assigned(dmFornecedores) then
 begin
   dmFornecedores.cdsFornecedores.Close;
   FreeAndNil(dmFornecedores);
 end;

end;

procedure TfrmFornecedores.FormShow(Sender: TObject);
begin
 inherited;
 dmFornecedores.cdsFornecedores.Open;
end;

end.
