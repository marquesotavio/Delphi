unit unSorteio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList;

type
  TfrmSorteio = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActionList1: TActionList;
    ImageList1: TImageList;
    actSair: TAction;
    ToolButton3: TToolButton;
    actDivisaoTimes: TAction;
    procedure actSairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSorteio: TfrmSorteio;

implementation

{$R *.dfm}


procedure TfrmSorteio.actSairExecute(Sender: TObject);
begin
 Close;
end;

end.
