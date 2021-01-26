unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs;

type
  TForm3 = class(TForm)
    Button1: TButton;
    PaintBox1: TPaintBox;
    procedure Button1Click(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
Uses
    Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
close;
end;


procedure TForm3.PaintBox1Paint(Sender: TObject);
Var
  pol: array of TPoint;
  i: Integer;
begin
SetLength(pol, 3);
for i := 0 to 2 do
    Begin
      pol[i].x:=t[i].x;
      pol[i].Y:=t[i].y;
    End;
color:=clWhite;
Canvas.Pen.Style:=psSolid;
Canvas.Pen.Color:=clBlack;
Canvas.Pen.Width:=1;
Canvas.Brush.Color:=clRed;
Canvas.Brush.Style:=bsSolid;
Canvas.Polygon(pol);
Canvas.Brush.Color:=clBlack;
Canvas.Brush.Style:=bsCross;
Canvas.Rectangle(a[index1].x,a[index1].y,a[index2].x,a[index2].y);
end;


end.
