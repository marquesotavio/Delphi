unit unSorteio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus;

type
  TfrmSorteio = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    procedure ListBox1Click(Sender: TObject);
    procedure ActionMainMenuBar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSorteio: TfrmSorteio;

implementation

{$R *.dfm}

procedure TfrmSorteio.ActionMainMenuBar1Click(Sender: TObject);
begin

end;

procedure TfrmSorteio.ListBox1Click(Sender: TObject);
begin

end;

end.
