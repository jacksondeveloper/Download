unit Download.Exception.TrataException;

interface

uses
  System.SysUtils;

type

  TTrataException = class
    private
      FLogFile: String;
    public
      constructor Create;
      procedure TrataException(Sender: TObject; E: Exception);
      procedure GravarLog(Value: String);
  end;

implementation

uses
  Vcl.Forms, System.Classes, Vcl.Dialogs;

{ TException }

constructor TTrataException.Create;
begin
  FLogFile := ChangeFileExt(ParamStr(0), '.log');
  Application.OnException := TrataException;
end;

procedure TTrataException.GravarLog(Value: String);
var
  txtLog: TextFile;
begin
  AssignFile(txtLog, FLogFile);

  if FileExists(FLogFile) then
    Append(txtLog)
  else
    Rewrite(txtLog);

  Writeln(txtLog, Value);
  Writeln(txtLog, FormatDateTime('dd/mm/YY hh:mm:ss - ', Now) + Value);

  CloseFile(txtLog);
end;

procedure TTrataException.TrataException(Sender: TObject; E: Exception);
begin
  GravarLog('----------------------------------------------------------');
  if TComponent(Sender) is TForm then
  begin
    GravarLog('Form: ' + TForm(Sender).Name);
    GravarLog('Caption: ' + TForm(Sender).Caption);
    GravarLog('Classe: ' + E.ClassName);
    GravarLog('Erro: ' + E.Message);
  end
  else
  begin
    GravarLog('Form: ' + TForm(TComponent(Sender).Owner).Name);
    GravarLog('Caption: ' + TForm(TComponent(Sender).Owner).Caption);
    GravarLog('Classe: ' + E.ClassName);
    GravarLog('Erro: ' + E.Message);
  end;
  GravarLog('----------------------------------------------------------');

  ShowMessage(e.Message);
end;

var
  MinhaExcecao: TTrataException;

initialization
  MinhaExcecao := TTrataException.Create;

finalization
  MinhaExcecao.Free;

end.
