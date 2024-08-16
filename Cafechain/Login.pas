unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, MainScreen,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    UsernameEdit: TEdit;
    PasswordEdit: TEdit;
    BtnCancel: TBitBtn;
    BtnLogin: TBitBtn;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}




procedure TForm1.BtnCancelClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to exit?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Application.Terminate;
end;

procedure TForm1.BtnLoginClick(Sender: TObject);
begin
     // Clear previous results
  FDQuery1.Close;
  FDQuery1.SQL.Text := 'SELECT COUNT(*) FROM USERS WHERE USERNAME = :Username AND PASSWORD = :Password';
  FDQuery1.Params.ParamByName('Username').AsString := UsernameEdit.Text;
  FDQuery1.Params.ParamByName('Password').AsString := PasswordEdit.Text;

  try
    FDQuery1.Open;

    if FDQuery1.Fields[0].AsInteger > 0 then
    begin
      // Code to show the next form or proceed
      // For example:
      Form2.Show;
      Self.Hide;
    end
    else
    begin
      ShowMessage('Invalid username or password.');
    end;
  except
    on E: Exception do
      ShowMessage('Database error: ' + E.Message);
  end;
end;



end.
