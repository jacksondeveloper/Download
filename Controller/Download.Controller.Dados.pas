unit Download.Controller.Dados;

interface

uses
  Download.Controller.Interfaces, Download.Model.Dados, Data.DB;

type

  TControllerDados = class(TInterfacedObject, iControllerDados)
    private
      FModelDados: TDados;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iControllerDados;
      function RetornaHistorico: TDataSet;
  end;

implementation

uses
  System.SysUtils;

{ TControllerDados }

constructor TControllerDados.Create;
begin
  FModelDados := TDados.Create(nil);
end;

destructor TControllerDados.Destroy;
begin
  FreeAndNil(FModelDados);
  inherited;
end;

class function TControllerDados.New: iControllerDados;
begin
   result := Self.Create;
end;

function TControllerDados.RetornaHistorico: TDataSet;
begin
  result :=  FModelDados.TodosOsDownloads;
end;

end.
