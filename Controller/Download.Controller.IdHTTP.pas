unit Download.Controller.IdHTTP;

interface

uses
  Download.Download.Tipos, Download.Controller.Interfaces,
  Download.Model.Interfaces, Download.Model.IdHTTP;

type

  TControllerIdHTTP = class(TInterfacedObject, iControllerIdHTTP)
    private
      FModelIdHTTP: iModelIdHTTP;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iControllerIdHTTP;
      procedure FazerDownloadDoArquivo(strUrl, strDestino: String);
      procedure PararDownload;
      procedure AdicionarObserver(Observer: iDownloadObserver);
      function EstaExecutando: Boolean;
  end;

implementation

{ TControllerIdHTTP }

procedure TControllerIdHTTP.AdicionarObserver(Observer: iDownloadObserver);
begin
  FModelIdHTTP.RetornarOBserver.AdicionarObserver(Observer);
end;

constructor TControllerIdHTTP.Create;
begin
  FModelIdHTTP := TModelIdHTTP.New;
end;

destructor TControllerIdHTTP.Destroy;
begin
  inherited;
end;

function TControllerIdHTTP.EstaExecutando: Boolean;
begin
  Result := FModelIdHTTP.EstaExecutando;
end;

procedure TControllerIdHTTP.FazerDownloadDoArquivo(strUrl, strDestino: String);
begin
  FModelIdHTTP.FazerDownloadDoArquivo(strUrl, strDestino);
end;

class function TControllerIdHTTP.New: iControllerIdHTTP;
begin
   result := Self.Create;
end;

procedure TControllerIdHTTP.PararDownload;
begin
  FModelIdHTTP.PararDownload;
end;

end.

end.
