unit unDMCadastroClientes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmCadastroClientes = class(TDataModule)
    cdsCadastroClientes: TClientDataSet;
    dsCadastroClientes: TDataSource;
    cdsCadastroClientesCodCli: TIntegerField;
    cdsCadastroClientesPlaca: TStringField;
    cdsCadastroClientesNomeCli: TStringField;
    cdsCadastroClientesTipoVeiculo: TStringField;
    cdsCadastroClientesMarca: TStringField;
    cdsCadastroClientesModelo: TStringField;
    cdsCadastroClientesMensalista: TStringField;
    cdsCadastroClientesTiipoDoc: TStringField;
    cdsCadastroClientesNumDoc: TStringField;
    cdsCadastroClientesDataPag: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadastroClientes: TdmCadastroClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
