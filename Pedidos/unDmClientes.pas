unit unDmClientes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient;

type
  TdmClientes = class(TDataModule)
    qrClientes: TFDQuery;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    cdsClientesCLI_ID: TIntegerField;
    cdsClientesCLI_NOME: TStringField;
    cdsClientesCLI_CPF: TStringField;
    cdsClientesCLI_CEP_ID: TIntegerField;
    cdsClientesCLI_TELEFONE: TStringField;
    cdsClientesCLI_OBSERVACAO: TMemoField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmClientes: TdmClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unDmConexao;

{$R *.dfm}

procedure TdmClientes.DataModuleCreate(Sender: TObject);
begin
  //Comando sql de abertura de tabela
 qrClientes.SQL.Clear;
 qrClientes.SQL.Add('SELECT * FROM CLIENTE');

 //Ligação dos componentes
 qrClientes.Connection:= dmConexao.fdConnection;
 dspClientes.DataSet:= qrClientes;
 cdsClientes.ProviderName:= 'dspClientes';
end;

end.
