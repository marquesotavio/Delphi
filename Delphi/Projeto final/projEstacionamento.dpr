program projEstacionamento;
uses
  Vcl.Forms,
  unEstacionamento in 'unEstacionamento.pas' {FormPrincipal},
  unFormPadrao in 'unFormPadrao.pas' {frmBase},
  unUsuario in 'unUsuario.pas' {frmUsuario},
  unDMUsuario in 'unDMUsuario.pas' {dmUsuario: TDataModule},
  unClientes in 'unClientes.pas' {frmCadastroClientes},
  unEntrada in 'unEntrada.pas' {frmEntrada},
  unDMEntrada in 'unDMEntrada.pas' {dmEntrada: TDataModule},
  unDMCadastroClientes in 'unDMCadastroClientes.pas',
  unSaida in 'unSaida.pas' {frmSaida},
  unDMSaida in 'unDMSaida.pas' {dmSaida: TDataModule};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TfrmSaida, frmSaida);
  Application.CreateForm(TdmSaida, dmSaida);
  Application.Run;
end.
