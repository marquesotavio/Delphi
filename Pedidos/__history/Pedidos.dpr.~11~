program Pedidos;

uses
  Vcl.Forms,
  unPedidos in 'unPedidos.pas' {frmControlePedidos},
  unDmConexao in 'unDmConexao.pas' {dmConexao: TDataModule},
  unMainPadrao in 'unMainPadrao.pas' {frmMainPadrao},
  unCep in 'unCep.pas' {frmCep},
  unDmCep in 'unDmCep.pas' {dmCep: TDataModule},
  unCadastroClientes in 'unCadastroClientes.pas' {frmCadastroClientes},
  unDmClientes in 'unDmClientes.pas' {dmClientes: TDataModule},
  unFornecedores in 'unFornecedores.pas' {frmFornecedores},
  unDmFornecedores in 'unDmFornecedores.pas' {dmFornecedores: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmControlePedidos, frmControlePedidos);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.CreateForm(TdmClientes, dmClientes);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TdmFornecedores, dmFornecedores);
  Application.Run;
end.
