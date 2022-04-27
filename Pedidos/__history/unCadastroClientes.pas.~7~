unit unCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unMainPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.DBCtrls;

type
  TfrmCadastroClientes = class(TfrmMainPadrao)
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    private
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

procedure TfrmCadastroClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #27) and (Assigned(dmClientes)) then
  Close;
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


end.

