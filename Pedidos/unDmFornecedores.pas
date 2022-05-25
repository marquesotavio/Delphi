unit unDmFornecedores;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  Vcl.Dialogs, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmFornecedores = class(TDataModule)
    dspFornecedores: TDataSetProvider;
    qrFornecedores: TFDQuery;
    qrAux: TFDQuery;
    cdsFornecedores: TClientDataSet;
    cdsFornecedoresFOR_ID: TIntegerField;
    cdsFornecedoresFOR_NOME: TStringField;
    cdsFornecedoresFOR_CPF: TStringField;
    cdsFornecedoresFOR_CEP_ID: TIntegerField;
    cdsFornecedoresFOR_TELEFONE: TStringField;
    cdsFornecedoresFOR_OBSERVACAO: TStringField;
    procedure cdsFornecedoresReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IncluirFornec;
    procedure AlterarFornec;
    procedure ExcluirFornec;
    procedure CancelarFornec;
    procedure SalvarFornec;
    function GetNextCodigo: integer;
  end;

var
  dmFornecedores: TdmFornecedores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unFornecedores, unDmConexao, unRecError;

{$R *.dfm}

{ TdmFornecedores }

procedure TdmFornecedores.IncluirFornec;
begin
  try
    cdsFornecedores.Append;
  except
    on E: Exception do
    ShowMessage('Ocorreu o seguinte erro ao tentar incluir o '+ 'registro: ' + E.Message );
  end;
end;

procedure TdmFornecedores.AlterarFornec;
begin
  try
    cdsFornecedores.Edit;
  except
    on E: Exception do
    ShowMessage('Ocorreu o seguinte erro ao tentar alterar o '+ 'registro: ' + E.Message );
  end;
end;

procedure TdmFornecedores.CancelarFornec;
begin
  try
    cdsFornecedores.Cancel;
  except
    on E: Exception do
    ShowMessage('Ocorreu o seguinte erro ao tentar cancelar o '+ 'registro: ' + E.Message );
  end;
end;

procedure TdmFornecedores.cdsFornecedoresReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
 //chamada da tela de erros do sistema
 Action:= HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TdmFornecedores.ExcluirFornec;
begin
  try
    cdsFornecedores.Delete;
    if (cdsFornecedores.ChangeCount > 0) then
      cdsFornecedores.ApplyUpdates(-1);
  except
    on E: Exception do
    ShowMessage('Ocorreu o seguinte erro ao tentar excluir o '+ 'registro: ' + E.Message );
  end;
end;

procedure TdmFornecedores.SalvarFornec;
begin
 try
    cdsFornecedores.Post;
    if (cdsFornecedores.ChangeCount > 0) then
    cdsFornecedores.ApplyUpdates(-1);
  except
    on E: Exception do
    ShowMessage('Ocorreu o seguinte erro ao tentar salvar o '+ 'registro: ' + E.Message );
  end;
end;

function TdmFornecedores.GetNextCodigo: integer;
begin
  Result :=0;
  //Busca o proximo registro
  qrAux.SQL.Clear;
  qrAux.SQL.Add('Select MAX(FOR_ID) as Codigo from FORNECEDORES');
  qrAux.Open;
  Result:= qrAux.FieldByName('codigo').AsInteger +1;
  qrAux.Close;
end;

end.
