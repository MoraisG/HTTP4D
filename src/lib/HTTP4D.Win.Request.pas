unit HTTP4D.Win.Request;

interface

uses
  Winapi.WinInet,
  Winapi.Windows,
  Winapi.WinHTTP,
  System.SysUtils,
  HTTP4D.Contracts;

type

  THTTPWinRequest = class(TInterfacedObject, IWinHttpRequest)
  private
    FSessionHandle: HINTERNET;
    FConectHandle: HINTERNET;
    FRequestHandle: HINTERNET;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IWinHttpRequest;
    function Abort: IWinHTTPEvents;
    function Open: IWinHttpRequest;
  end;

implementation

{ THTTPWinRequest }

function THTTPWinRequest.Abort: IWinHTTPEvents;
begin

end;

constructor THTTPWinRequest.Create;
begin

end;

destructor THTTPWinRequest.Destroy;
begin

  inherited;
end;

class function THTTPWinRequest.New: IWinHttpRequest;
begin
  Result := Self.Create;
end;

function THTTPWinRequest.Open: IWinHttpRequest;
VAR
  data: DWORD;
  dwSize: DWORD;

begin
  Result := Self;
  dwSize := sizeof(DWORD);

//  WinHttpQueryDataAvailable()

  FSessionHandle := WinHttpOpen(PWideChar('A WinHTTP Example Program / 1.0 '),
    WINHTTP_ACCESS_TYPE_DEFAULT_PROXY, WINHTTP_NO_PROXY_NAME,
    WINHTTP_NO_PROXY_BYPASS, 0);
  // try
  // try
  // if WinHttpQueryOption(FSession, WINHTTP_OPTION_CONNECT_TIMEOUT, data,
  // dwSize) then
  // begin
  // raise Exception.Create('Timeout');
  // end
  // else
  // begin
  //
  // end;
  // except
  // on E: Exception do
  // begin
  //
  // end;
  // end;
  // finally
  // WinHttpCloseHandle(FSession);
  // end;
  // WinHttpQueryDataAvailable(FSession, @dwSize);
end;

end.
