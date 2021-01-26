unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Unit3, Vcl.Menus;

type
  Point = record
    x: Integer;
    y: Integer;
  end;
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Edit1: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, t: Array of Point;
  k,n, index1,index2: integer;

implementation
     uses unit2;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var k,i:integer;
begin
  n:=StrToInt(Edit1.Text);
  Val(Edit1.Text,n,k);
  If k<>0 then
    ShowMessage('Введено не число! Повторите ввод')
  else
    If n<=0 then
      ShowMessage('Введите положительное число')
    else
      begin
        StringGrid1.RowCount:=n+1;
        StringGrid1.Cells[1,0]:='x';
        StringGrid1.Cells[2,0]:='y';
        SetLength(a,n);
        For i:=1 to n do
          StringGrid1.Cells[0,i]:=IntToStr(i);
      end;
        StringGrid2.Cells[1,0]:='x';
        StringGrid2.Cells[2,0]:='y';
        For i:=1 to 3 do
          StringGrid2.Cells[0,i]:=IntToStr(i);
  SetLength(a,n);
  SetLength(t,3);
      end;


procedure TForm1.Button2Click(Sender: TObject);
var
i,j,k,g: integer;
begin
k:=0;
for i:=0 to (n-1) do
  begin
      a[i].x:=StrToInt(StringGrid1.Cells[1,i+1]);
   Val(StringGrid1.Cells[1,i+1],a[i].x,g);
  If g<>0 then
    ShowMessage('Введено не число! Повторите ввод');
        a[i].y:=StrToInt(StringGrid1.Cells[2,i+1]);
    Val(StringGrid1.Cells[2,i+1],a[i].y,g);
  If g<>0 then
    ShowMessage('Введено не число! Повторите ввод');
  end;
for i:=0 to 2 do
  begin
    t[i].x:=StrToInt(StringGrid2.Cells[1,i+1]);
        Val(StringGrid2.Cells[1,i+1],t[i].x,g);
  If g<>0 then
    ShowMessage('Введено не число! Повторите ввод');
    t[i].y:=StrToInt(StringGrid2.Cells[2,i+1]);
        Val(StringGrid2.Cells[2,i+1],t[i].y,g);
  If g<>0 then
    ShowMessage('Введено не число! Повторите ввод');
  end;
  for i := 0 to n-1 do
   for j := i+1 to n-1 do
    begin
     if popad(a[i].x,a[i].y,a[j].x,a[j].y,t)=true then
     Begin
     if k=0 then
     begin
       index1:=i;
       index2:=j;
       k:=k+1;
     end
     else
     if perimetr(a[index1].x,a[index1].y,a[index2].x,a[index2].y)>perimetr(a[i].x,a[i].y,a[j].x,a[j].y)
     then
      Begin
       index1:=i;
       index2:=j;
      End;
     End;
    end;
     if k=0 then
     Label5.Caption:='Нет таких прямоугольников'
     else
      begin
        Label5.Caption:='Точки:';
        Label6.Caption:= IntToStr(index1+1);
        Label7.Caption:= IntToStr(index2+1);
      end;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.N2Click(Sender: TObject);
Var f: TextFile; s: string;
     i: integer;
begin
 if OpenDialog1.Execute   then
 Begin
   s:=OpenDialog1.FileName;
   AssignFile(f,s);
   Reset(f);
   Readln(f,n);
   Edit1.Text:=IntToStr(n);
   n:=StrToInt(Edit1.Text);
   StringGrid1.RowCount:=n+1;
        StringGrid1.Cells[1,0]:='x';
        StringGrid1.Cells[2,0]:='y';
        For i:=1 to n do
          StringGrid1.Cells[0,i]:=IntToStr(i);
        StringGrid2.Cells[1,0]:='x';
        StringGrid2.Cells[2,0]:='y';
        For i:=1 to 3 do
          StringGrid2.Cells[0,i]:=IntToStr(i);
  SetLength(a,n);
  SetLength(t,3);
   for i := 1 to n do
       begin
         Read(f,a[i-1].x);
         Read(f,a[i-1].y);
         StringGrid1.Cells[1,i]:=IntToStr(a[i-1].x);
         StringGrid1.Cells[2,i]:=IntToStr(a[i-1].y);
       end;
   for i := 1 to 3 do
       begin
         Read(f,t[i-1].x);
         Read(f,t[i-1].y);
         StringGrid2.Cells[1,i]:=IntToStr(t[i-1].x);
         StringGrid2.Cells[2,i]:=IntToStr(t[i-1].y);
       end;
   CloseFile(f);
 End;
end;

procedure TForm1.N3Click(Sender: TObject);
Var f: TextFile; s: string;
     i: integer;
Begin
 if SaveDialog1.Execute   then
 Begin
   s:=SaveDialog1.FileName;
   AssignFile(f,s);
   Rewrite(f);
   writeln(f,'Координаты диагонали наименьшего прямоугольника');
   write(f,'A=(',IntToStr(a[index1].x),';',IntToStr(a[index1].y),')');
   writeln(f);
   write(f, 'B=(',IntToStr(a[index2].x),';',IntToStr(a[index2].y),')');
   CloseFile(f);
 end;
end;


end.
