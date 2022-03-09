program projEstacionamento;

uses
  Vcl.Forms,
  unEstacionamento in 'unEstacionamento.pas' {FormPrincipal},
  unFormPadrao in 'unFormPadrao.pas' {frmBase},
  unUsuario in 'unUsuario.pas' {frmUsuario},
  unChegada in 'unChegada.pas' {frmChegada},
  unSaida in 'unSaida.pas' {frmSaida},
  unDMUsuario in 'unDMUsuario.pas' {dmUsuario: TDataModule},
  unClientes in 'unClientes.pas' {frmCadastroClientes};
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TdmUsuario, dmUsuario);
  Application.Run;
end.
