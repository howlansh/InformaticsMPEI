unit Unit2;

interface
uses Unit1;
          function min(a,b: Integer): real;
          function max(a,b: Integer): real;
          function perimetr(x1,y1,x2,y2:Integer):real;
          function popad (x1,y1,x2,y2: Integer; t: Array of Point): boolean;

implementation
 function min(a,b: Integer): real;
         Begin
         min:=a;
           if a>b then
            min:=b;
         End;
function max(a,b: Integer): real;
         Begin
         max:=a;
           if a<b then
            max:=b;
         End;
 function perimetr(x1,y1,x2,y2:Integer):real;
          var
           h,d: real;
          begin
           d:=abs(x1-x2);
           h:=abs(y1-y2);
           perimetr:=(h+d)*2;
          end;
 function popad (x1,y1,x2,y2: Integer; t: Array of Point): boolean;
         var
          i: integer;
         Begin
           popad:=True;
          for i:=0 to 2 do
          Begin
           if (t[i].x<min(x1,x2)) or (t[i].x>max(x1,x2)) or (t[i].y>max(y2,y1)) or (t[i].y<min(y2,y1))
           then
           popad:=False;
          End;
         End;
end.
