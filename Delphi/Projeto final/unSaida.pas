unit unSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFormPadrao, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmSaida = class(TfrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaida: TfrmSaida;

implementation

{$R *.dfm}

end.
