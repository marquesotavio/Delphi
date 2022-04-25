unit unFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unMainPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.DBCtrls;

type
  TfrmFornecedores = class(TfrmMainPadrao)
    DBNavigator1: TDBNavigator;
  procedure FormCreate (Sender: TObject);
  procedure FormDestroy (Sender: TObject);
  procedure FormShow (Sender: TObject);
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
