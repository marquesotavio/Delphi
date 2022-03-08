program projEstacionamento;

uses
  Vcl.Forms,
  unEstacionamento in 'unEstacionamento.pas' {FormPrincipal},
  unFormPadrao in 'unFormPadrao.pas' {frmBase},
  unUsuario in 'unUsuario.pas' {frmUsuario},
  unChegada in 'unChegada.pas' {frmChegada},
  unSaida in 'unSaida.pas' {frmSaida};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmChegada, frmChegada);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmSaida, frmSaida);
  Application.Run;
end.
