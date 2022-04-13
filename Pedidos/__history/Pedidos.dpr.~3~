program Pedidos;

uses
  Vcl.Forms,
  unPedidos in 'unPedidos.pas' {frmControlePedidos},
  unDmConexao in 'unDmConexao.pas' {dmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmControlePedidos, frmControlePedidos);
  Application.Run;
end.
