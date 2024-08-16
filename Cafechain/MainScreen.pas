unit MainScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    hitlp1: TMenuItem;
    hitlp2: TMenuItem;
    MuaHng1: TMenuItem;
    KhoHng1: TMenuItem;
    KhoHng2: TMenuItem;
    Cngc1: TMenuItem;
    nhngbn1: TMenuItem;
    nhngmua1: TMenuItem;
    Nhpkho1: TMenuItem;
    Nhpkho2: TMenuItem;
    Hngha1: TMenuItem;
    Hngha2: TMenuItem;
    Vchngti1: TMenuItem;
    hot1: TMenuItem;
    Image1: TImage;
    procedure hot1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.hot1Click(Sender: TObject);
begin
    Application.Terminate;
end;

end.
