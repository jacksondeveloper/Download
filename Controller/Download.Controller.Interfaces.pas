unit Download.Controller.Interfaces;

interface

uses Download.Download.Tipos, Data.DB;

type

  iDownloadObserver = interface;

  iControllerIdHTTP = interface
    ['{644AE485-0761-4EE7-8B13-CA82C6D44288}']
    procedure FazerDownloadDoArquivo(strUrl, strDestino: String);
    procedure PararDownload;
    procedure AdicionarObserver(Observer: iDownloadObserver);
    function EstaExecutando: Boolean;
  end;

  iControllerDados = interface
    ['{9897BAA6-A2A8-4FE9-B40B-1BDE32BD138D}']
    function RetornaHistorico: TDataSet;
  end;

  iDownloadObserver = interface
    ['{082A61DA-2489-4FD3-876B-1514AEADB6BE}']
    procedure Atualizar(ResultadoDownload: TResultadoDownload);
  end;

  iDownloadSubjet = interface
    ['{8ECD813D-37F0-4F84-A375-111F3971AD62}']
    procedure AdicionarObserver(Observer: iDownloadObserver);
    procedure RemoverObserver(Observer: iDownloadObserver);
    procedure Notificar(ResultadoDownload: TResultadoDownload);
  end;

implementation

end.
