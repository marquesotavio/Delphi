unit unClasseFornec;

interface

uses
System.SysUtils, System.Classes, Vcl.Dialogs, Datasnap.DBClient, Data.DB;

type TFornecedor = class
private

//atributos privados da classe
 Fcodigo: integer;
 Fnome: string;
 Fcpf: string;
 Fcep: integer;
 Ftelefone: string;
 FObs: string;
//end;



public
  constructor Create; // declaração
  destructor Destroy;

  procedure Incluir;
  procedure Alterar;
  procedure Excluir;
  procedure Cancelar;
  procedure Salvar;
  procedure GetDados;

  function GetCds: TClientDataSet;
  function getCodigo: integer;
  function ValidaCPFForn(cCPF: string): boolean;

  //atributos publicos da classe
  property codigo: integer read Fcodigo write Fcodigo;
  property nome: string read Fnome write Fnome;
  property cpf: string read Fcpf write Fcpf;
  property cep: integer read Fcep write Fcep;
  property telefone: string read Ftelefone write Ftelefone;
  property observacao: string read FObs write FObs;
end;

implementation

{ TFornecedor }

uses unDmFornecedores;

procedure TFornecedor.Alterar;
begin
  if Assigned(dmFornecedores) then
   dmFornecedores.AlterarFornec;
end;

procedure TFornecedor.Cancelar;
begin
  if Assigned(dmFornecedores) then
   dmFornecedores.CancelarFornec;
end;

constructor TFornecedor.Create;
begin
  try
  dmFornecedores:= TdmFornecedores.Create(nil);
  dmFornecedores.cdsFornecedores.Open;
 except
  showMessage('Ocorreu um erro ao tentar criar o datamodule de Fornecedores');
 end;
end;



destructor TFornecedor.Destroy;
begin
  dmFornecedores.cdsFornecedores.Close;
  FreeAndNil(dmFornecedores);
end;



procedure TFornecedor.Excluir;
begin
  if Assigned(dmFornecedores) then
   dmFornecedores.ExcluirFornec;
end;

function TFornecedor.GetCds: TClientDataSet;
begin

end;

function TFornecedor.getCodigo: integer;
begin

end;

procedure TFornecedor.GetDados;
begin
  Fcodigo   := dmFornecedores.cdsFornecedoresFOR_ID.Value;
  Fnome     := dmFornecedores.cdsFornecedoresFOR_NOME.Text;
  Fcpf      := dmFornecedores.cdsFornecedoresFOR_CPF.Text;
  Fcep      := dmFornecedores.cdsFornecedoresFOR_CEP_ID.Value;
  Ftelefone := dmFornecedores.cdsFornecedoresFOR_TELEFONE.Text;
  FObs      := dmFornecedores.cdsFornecedoresFOR_OBSERVACAO.Text;
end;

procedure TFornecedor.Incluir;
begin
  if Assigned(dmFornecedores) then
    dmFornecedores.IncluirFornec;
end;

procedure TFornecedor.Salvar;
begin
  //Atribuir ao clientdataset as informações do objeto fornecedor
  dmFornecedores.cdsFornecedoresFOR_ID.Value := Fcodigo;
  dmFornecedores.cdsFornecedoresFOR_NOME.Text := Fnome;
  dmFornecedores.cdsFornecedoresFOR_CPF.Text := Fcpf;
  dmFornecedores.cdsFornecedoresFOR_CEP_ID.Value := Fcep;
  dmFornecedores.cdsFornecedoresFOR_TELEFONE.Text := Ftelefone;
  dmFornecedores.cdsFornecedoresFOR_OBSERVACAO.Text := FObs;

  if Assigned(dmFornecedores) then
    dmFornecedores.SalvarFornec;
end;

function TFornecedor.ValidaCPFForn(cCPF: string): boolean;
begin

end;

end.
