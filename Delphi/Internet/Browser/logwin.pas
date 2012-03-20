unit logwin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IniFiles, Menus;

type
  TLogForm = class(TForm)
    LogMemo: TMemo;
    PopupMenu: TPopupMenu;
    pCopy: TMenuItem;
    pClear: TMenuItem;
    pCopyAll: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pClearClick(Sender: TObject);
    procedure pCopyAllClick(Sender: TObject);
    procedure pCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogForm: TLogForm;

implementation

Uses FBUnitIcs;

{$R *.dfm}

procedure TLogForm.FormCreate(Sender: TObject);
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(HTTPForm.FIniFileName);
  try
    Top := IniFile.ReadInteger('LogForm', 'Top', Top);
    Left := IniFile.ReadInteger('LogForm', 'Left',   Left);
    Width := IniFile.ReadInteger('LogForm', 'Width',  Width);
    Height := IniFile.ReadInteger('LogForm', 'Height', Height);
  finally
    IniFile.Free;
    end;
end;

procedure TLogForm.FormDestroy(Sender: TObject);
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(HTTPForm.FIniFileName);
  try
    IniFile.WriteInteger('LogForm', 'Top', Top);
    IniFile.WriteInteger('LogForm', 'Left', Left);
    IniFile.WriteInteger('LogForm', 'Width', Width);
    IniFile.WriteInteger('LogForm', 'Height', Height);
  finally
    IniFile.Free;
    end;
end;

procedure TLogForm.pClearClick(Sender: TObject);
begin
    LogMemo.Lines.Clear;
end;

procedure TLogForm.pCopyAllClick(Sender: TObject);
begin
    LogMemo.SelectAll;
    LogMemo.CopyToClipboard;
end;

procedure TLogForm.pCopyClick(Sender: TObject);
begin
    LogMemo.CopyToClipboard;
end;

end.
