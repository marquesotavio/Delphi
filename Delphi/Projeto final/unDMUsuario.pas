unit unDMUsuario;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmUsuario = class(TDataModule)
    cdsUsuario: TClientDataSet;
    dsUsuario: TDataSource;
    cdsUsuarioCodUsu: TIntegerField;
    cdsUsuarioNomeUsu: TStringField;
    cdsUsuarioSenhaUsu: TStringField;
    cdsUsuarioFunção: TStringField;
    cdsUsuarioUsuario: TStringField;
    cdsUsuarioCPF: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUsuario: TdmUsuario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
