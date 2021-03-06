unit HTTP4D.Contracts;
{$ALIGN ON}
{$MINENUMSIZE 4}
{$WEAKPACKAGEUNIT}
{$HPPEMIT ''}
{$HPPEMIT '#include "winhttp.h"'}
{$HPPEMIT '#include "httprequest.h"'}
{$HPPEMIT '#pragma comment(lib, "winhttp")'}
{$HPPEMIT ''}

interface

uses
  Winapi.Windows,
  Winapi.WinInet,
  System.SysUtils,
  Winapi.WinHTTP;

type
  IWinHTTPEvents = interface;

  IWinHttpRequest = interface(IInterface)
    ['{62D38C48-01DB-4642-A998-DBE44BBAC0B0}']
    function Abort: IWinHTTPEvents;
    function Open: IWinHttpRequest;
  end;

  IWinHTTPEvents = interface(IInterface)
    ['{FE973812-E04E-4EB7-B6BD-7F3DF8777943}']
    procedure Abort;
    procedure OnError(ErrorNumber: LongWord; ErrorDescription: WideString);
    procedure OnResponseDataAvailable(Data: PByteArray);
    procedure OnResponseFinished;
    procedure OnResponseStart(Status: LongWord; ContentType: WideString);
  end;

implementation

end.
