program Pedidos;

uses
  Vcl.Forms,
  unPedidos in 'unPedidos.pas' {frmControlePedidos},
  unDmConexao in 'unDmConexao.pas' {dmConexao: TDataModule},
  unMainPadrao in 'unMainPadrao.pas' {frmMainPadrao},
  unCep in 'unCep.pas' {frmCep},
  unDmCep in 'unDmCep.pas' {dmCep: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmControlePedidos, frmControlePedidos);
  Application.Run;
end.
