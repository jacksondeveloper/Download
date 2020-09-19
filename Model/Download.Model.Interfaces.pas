unit Download.Model.Interfaces;

interface

uses Download.Controller.Interfaces;

type

  iModelIdHTTP = interface
    ['{5C07E1EE-355C-4C30-BD9A-249D7C7F4F50}']
    procedure FazerDownloadDoArquivo(strUrl, strDestino: String);
    procedure PararDownload;
    function RetornarOBserver: iDownloadSubjet;
    function EstaExecutando: Boolean;
  end;

implementation

end.
