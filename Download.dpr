program Download;

uses
  Vcl.Forms,
  Download.View.Principal in 'View\Download.View.Principal.pas' {Principal},
  Download.Model.Interfaces in 'Model\Download.Model.Interfaces.pas',
  Download.Model.IdHTTP in 'Model\Download.Model.IdHTTP.pas',
  Download.Download.Tipos in 'Tipos\Download.Download.Tipos.pas',
  Download.Controller.Interfaces in 'Controller\Download.Controller.Interfaces.pas',
  Download.Controller.IdHTTP in 'Controller\Download.Controller.IdHTTP.pas',
  Download.Model.Dados in 'Model\Download.Model.Dados.pas' {Dados: TDataModule},
  Download.View.Historico in 'View\Download.View.Historico.pas' {fmHistorico},
  Download.Controller.Dados in 'Controller\Download.Controller.Dados.pas',
  Download.Exception.TrataException in 'Exception\Download.Exception.TrataException.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.
