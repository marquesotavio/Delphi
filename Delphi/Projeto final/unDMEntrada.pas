unit unDMEntrada;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmEntrada = class(TDataModule)
    cdsEntrada: TClientDataSet;
    dsEntrada: TDataSource;
    cdsEntradaPlaca: TStringField;
    cdsEntradaTipoVeiculo: TStringField;
    cdsEntradaMarca: TStringField;
    cdsEntradaModelo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEntrada: TdmEntrada;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unEntrada;

{$R *.dfm}

end.
