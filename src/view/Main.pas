unit Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Winapi.WinInet,
  Winapi.WinHTTP,
  System.Net.HTTPClient,
  Vcl.Dialogs, Vcl.StdCtrls, HTTP4D.Win.Request;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses HTTP4D.Win.Events;

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    THTTPWinRequest.New.Open;
  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

end.
