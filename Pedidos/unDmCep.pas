unit unDmCep;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider;

type
  TdmCep = class(TDataModule)
    qrCep: TFDQuery;
    dspCep: TDataSetProvider;
    cdsCep: TClientDataSet;
    cdsCepCEP_ID: TIntegerField;
    cdsCepCEP_CEP: TStringField;
    cdsCepCEP_RUA: TStringField;
    cdsCepCEP_CIDADE: TStringField;
    cdsCepCEP_UF: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCep: TdmCep;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unDmConexao;

{$R *.dfm}

procedure TdmCep.DataModuleCreate(Sender: TObject);
begin
 //Comando sql de abertura de tabela
 qrCep.SQL.Clear;
 qrCep.SQL.Add('SELECT * FROM CEP');

 //Ligação dos componentes
 qrCep.Connection:= dmConexao.fdConnection;
 dspCep.DataSet:= qrCep;
 cdsCep.ProviderName:= 'dspCep';
end;

end.
