unit unCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unMainPadrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.DBCtrls;

type
  TfrmCep = class(TfrmMainPadrao)
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCep: TfrmCep;

implementation

{$R *.dfm}

uses unDmCep;

procedure TfrmCep.FormCreate(Sender: TObject);
begin
  inherited;
  //criando o datamodule de CEP para uso
  if not Assigned(dmCep) then
  dmCep:= TdmCep.Create(nil);

  dsCadastro.DataSet:= dmCep.cdsCep;
end;

procedure TfrmCep.FormDestroy(Sender: TObject);
begin
  if Assigned(dmCep) then
  begin
    dmCep.cdsCep.Close;
    FreeAndNil(dmCep);
  end;
end;

procedure TfrmCep.FormShow(Sender: TObject);
begin
  inherited;
  //Abro o dataset
  dmCep.cdsCep.Open;
end;

end.
