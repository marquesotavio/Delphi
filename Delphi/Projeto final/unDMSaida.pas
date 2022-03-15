unit unDMSaida;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmSaida = class(TDataModule)
    cdsSaida: TClientDataSet;
    dsSaida: TDataSource;
    cdsSaidaPlaca: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSaida: TdmSaida;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unSaida;

{$R *.dfm}

end.
