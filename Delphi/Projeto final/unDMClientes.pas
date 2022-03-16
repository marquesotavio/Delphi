unit unDMClientes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmClientes = class(TDataModule)
    cdsClientes: TClientDataSet;
    dsClientes: TDataSource;
    cdsClientesCodCli: TIntegerField;
    cdsClientesPlaca: TStringField;
    cdsClientesTipoVeiculo: TStringField;
    cdsClientesMarca: TStringField;
    cdsClientesModelo: TStringField;
    cdsClientesNomeCliente: TStringField;
    cdsClientesTipoDoc: TStringField;
    cdsClientesNumDoc: TStringField;
    cdsClientesMensalista: TStringField;
    cdsClientesDataPag: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmClientes: TdmClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unClientes;

{$R *.dfm}

end.
