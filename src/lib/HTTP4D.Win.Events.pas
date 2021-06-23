unit HTTP4D.Win.Events;

interface

uses
  HTTP4D.Contracts,
  System.SysUtils;

type

  TWinHTTPEvents = class(TInterfacedObject, IWinHTTPEvents)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IWinHTTPEvents;
    procedure Abort; reintroduce;
    procedure OnError(ErrorNumber: LongWord; ErrorDescription: WideString);
    procedure OnResponseDataAvailable(Data: PByteArray);
    procedure OnResponseFinished;
    procedure OnResponseStart(Status: LongWord; ContentType: WideString);
  end;

implementation

{ TWinHTTPEvents }

procedure TWinHTTPEvents.Abort;
begin
  raise Exception.Create('Error Message WINHTTP4D');
end;

constructor TWinHTTPEvents.Create;
begin

end;

destructor TWinHTTPEvents.Destroy;
begin

  inherited;
end;

class function TWinHTTPEvents.New: IWinHTTPEvents;
begin
  Result := Self.Create;
end;

procedure TWinHTTPEvents.OnError(ErrorNumber: LongWord;
  ErrorDescription: WideString);
begin

end;

procedure TWinHTTPEvents.OnResponseDataAvailable(Data: PByteArray);
begin

end;

procedure TWinHTTPEvents.OnResponseFinished;
begin

end;

procedure TWinHTTPEvents.OnResponseStart(Status: LongWord;
  ContentType: WideString);
begin

end;

end.
