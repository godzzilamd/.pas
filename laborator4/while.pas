Program P4;
Uses Crt;

var x: single = -3;

Begin
ClrScr;
while (x <= 3) do
begin
    write(x * x:1:1, '   ');
    x := x + 0.5;
end;

writeln;
writeln('Tastati orice pentru a iesi');
readkey;
end.