unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, unMeuComboBox;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cbPesquisa: TComboBox;
    Edit2: TEdit;
    Button5: TButton;
    Panel: TPanel;
    ScrollBox2: TScrollBox;
    ScrollBox1: TScrollBox;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


function GetHardDiskSerial: string;
var
  VolumeSerialNumber: DWORD;
  MaximumComponentLength: DWORD;
  FileSystemFlags: DWORD;
  SerialNumber: string;
begin
  GetVolumeInformation('C:\', nil, 0, @VolumeSerialNumber, MaximumComponentLength, FileSystemFlags, nil, 0);
  SerialNumber := IntToHex(VolumeSerialNumber, 8);
  Result := SerialNumber;
end;

end.
