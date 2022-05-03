unit unTesteCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, xmldom, XMLIntf, XMLDoc,
  Vcl.Mask;

type
  TfrmTesteCep = class(TForm)
    mmResultado: TMemo;
    Label1: TLabel;
    btPesquisaCep: TButton;
    medCep: TMaskEdit;
    edtRua: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtUF: TEdit;
    edtIbge: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btPesquisaCepClick(Sender: TObject);
    procedure medCepKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    private
    procedure GetCEP(CEP: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTesteCep: TfrmTesteCep;

implementation

{$R *.dfm}

procedure TfrmTesteCep.btPesquisaCepClick(Sender: TObject);
begin
 GetCEP(medCep.text);
end;

procedure TfrmTesteCep.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #27) then
  Close;
end;

procedure TfrmTesteCep.medCepKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) then
  btPesquisaCepClick(nil);
end;

procedure TfrmTesteCep.GetCEP(CEP: string);
 var
 XMLDocument1: IXMLDocument;
 raizXML :IXMLNode;
 begin
   XMLDocument1 := TXMLDocument.Create(nil);
   try
     mmResultado.Clear;
     XMLDocument1.FileName := 'https://viacep.com.br/ws/' + Trim(Cep) + '/xml/';
     XMLDocument1.Active := true;
     mmResultado.lines.text := XMLDocument1.XML.Text;
     raizXML := XMLDocument1.DocumentElement;

     edtRua.Text := raizXML.ChildNodes.FindNode('logradouro').Text;
     edtBairro.Text := raizXML.ChildNodes.FindNode('bairro').Text;
     edtCidade.Text := raizXML.ChildNodes.FindNode('localidade').Text;
     edtUF.Text := raizXML.ChildNodes.FindNode('uf').Text;
     edtIbge.Text := raizXML.ChildNodes.FindNode('ibge').Text;


     mmResultado.Lines.Add('Logradouro: ' + raizXML.ChildNodes.FindNode('logradouro').Text);
     mmResultado.Lines.Add('Bairro: ' + raizXML.ChildNodes.FindNode('bairro').Text);
     mmResultado.Lines.Add('Cidade: ' + raizXML.ChildNodes.FindNode('localidade').Text);
     mmResultado.Lines.Add('UF: ' + raizXML.ChildNodes.FindNode('uf').Text);
     mmResultado.Lines.Add('IBGE: ' + raizXML.ChildNodes.FindNode('ibge').Text);
   finally
     XMLDocument1 := nil;
   end;
 end;

end.
