unit Elemental;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TElements = class(TForm)
    FirstElement: TButton;
    SecondElement: TButton;
    Element1: TListBox;
    Element2: TListBox;
    Title: TLabel;
    Results: TListBox;
    Possibilities: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Elements: TElements;

implementation

{$R *.dfm}

end.
