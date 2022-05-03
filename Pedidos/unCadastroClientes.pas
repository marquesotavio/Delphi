unit unCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unMainPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Samples.Spin, xmldom, XMLIntf, XMLDoc;

type
  TfrmCadastroClientes = class(TfrmMainPadrao)
    DBNavigator1: TDBNavigator;
    ed_codigoCliente: TSpinEdit;
    ed_nomeCliente: TEdit;
    ed_cpfCliente: TMaskEdit;
    med_cepCliente: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ed_RuaCliente: TEdit;
    Label5: TLabel;
    ed_CidadeCliente: TEdit;
    Label6: TLabel;
    ed_UfCliente: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    ed_telefoneCliente: TMaskEdit;
    btLocalizar: TButton;
    actLocalizar: TAction;
    Label9: TLabel;
    ed_obsCliente: TMemo;
    Label10: TLabel;
    ed_BairroCliente: TEdit;
    Label11: TLabel;
    ed_IbgeCliente: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    private
    procedure GetCEP(CEP: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

uses unDmClientes;

{ TfrmCadastroClientes }


procedure TfrmCadastroClientes.FormCreate(Sender: TObject);
begin
 inherited;
 //criando o datamodule de Clientes para uso
 if not Assigned(dmClientes) then
 dmClientes:= TdmClientes.Create(nil);

 dsCadastro.DataSet:= dmClientes.cdsClientes;
end;

procedure TfrmCadastroClientes.FormDestroy(Sender: TObject);
begin
 if Assigned(dmClientes) then
 begin
   dmClientes.cdsClientes.Close;
   FreeAndNil(dmClientes);
 end;
end;

procedure TfrmCadastroClientes.FormShow(Sender: TObject);
begin
 inherited;
 dmClientes.cdsClientes.Open;
end;

procedure TfrmCadastroClientes.GetCEP(CEP: string);
var
 XMLDocument1: IXMLDocument;
 raizXML :IXMLNode;
 begin
   XMLDocument1 := TXMLDocument.Create(nil);
   try
//     mmResultado.Clear;
     XMLDocument1.FileName := 'https://viacep.com.br/ws/' + Trim(Cep) + '/xml/';
     XMLDocument1.Active := true;
//     mmResultado.lines.text := XMLDocument1.XML.Text;
     raizXML := XMLDocument1.DocumentElement;

     ed_RuaCliente.Text := raizXML.ChildNodes.FindNode('logradouro').Text;
     ed_BairroCliente.Text := raizXML.ChildNodes.FindNode('bairro').Text;
     ed_CidadeCliente.Text := raizXML.ChildNodes.FindNode('localidade').Text;
     ed_UfCliente.Text := raizXML.ChildNodes.FindNode('uf').Text;
     ed_IbgeCliente.Text := raizXML.ChildNodes.FindNode('ibge').Text;


//     mmResultado.Lines.Add('Logradouro: ' + raizXML.ChildNodes.FindNode('logradouro').Text);
//     mmResultado.Lines.Add('Bairro: ' + raizXML.ChildNodes.FindNode('bairro').Text);
//     mmResultado.Lines.Add('Cidade: ' + raizXML.ChildNodes.FindNode('localidade').Text);
//     mmResultado.Lines.Add('UF: ' + raizXML.ChildNodes.FindNode('uf').Text);
//     mmResultado.Lines.Add('IBGE: ' + raizXML.ChildNodes.FindNode('ibge').Text);
   finally
     XMLDocument1 := nil;
   end;
 end;

procedure TfrmCadastroClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #27) and (Assigned(dmClientes)) then
  Close;
end;

procedure TfrmCadastroClientes.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dmClientes.cdsClientes.Edit;
end;

procedure TfrmCadastroClientes.actExcluirExecute(Sender: TObject);
begin
  inherited;
    inherited;
  if MessageDlg('Deseja mesmo excluir o registro?', mtConfirmation,
     [mbYes, mbNo], 0) = mrYes then
  begin
    dmClientes.cdsClientes.Delete;
    dmClientes.cdsClientes.ApplyUpdates(0);
  end;
end;

procedure TfrmCadastroClientes.actIncluirExecute(Sender: TObject);
begin
  inherited;
  // coloco o dataset no modo de inclusao
  dmClientes.cdsClientes.Append;

end;

procedure TfrmCadastroClientes.actLocalizarExecute(Sender: TObject);
begin
  inherited;
  GetCEP(med_cepCliente.text);
end;

procedure TfrmCadastroClientes.actSalvarExecute(Sender: TObject);
begin
  inherited;
  if (dmClientes.cdsClientes.State=dsInsert) then
  begin
    dmClientes.cdsClientes.FieldByName('CLI_ID').AsInteger:= ed_codigoCliente.Value;
    dmClientes.cdsClientes.FieldByName('CLI_NOME').AsString:= ed_nomeCliente.Text;
    dmClientes.cdsClientes.FieldByName('CLI_CPF').AsString:= ed_cpfCliente.Text;
    dmClientes.cdsClientes.FieldByName('CLI_TELEFONE').AsString:= ed_telefoneCliente.Text;
    dmClientes.cdsClientes.FieldByName('CLI_OBSERVACAO').AsString:= ed_obsCliente.Text;
    dmClientes.cdsClientes.FieldByName('CLI_CEP_ID').AsInteger:= 1;
  end
else if (dmClientes.cdsClientes.State=dsEdit) then
begin
    dmClientes.cdsClientes.FieldByName('CLI_NOME').AsString:= ed_nomeCliente.Text;
    dmClientes.cdsClientes.FieldByName('CLI_CPF').AsString:= ed_cpfCliente.Text;
    dmClientes.cdsClientes.FieldByName('CLI_TELEFONE').AsString:= ed_telefoneCliente.Text;
    dmClientes.cdsClientes.FieldByName('CLI_OBSERVACAO').AsString:= ed_obsCliente.Text;
    dmClientes.cdsClientes.FieldByName('CLI_CEP_ID').AsInteger:= 1;
end;
    // salvo em memoria
    dmClientes.cdsClientes.Post;
    // persisto no banco
    if (dmClientes.cdsClientes.ChangeCount > 0) then
      dmClientes.cdsClientes.ApplyUpdates(-1);
end;

end.

