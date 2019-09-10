Program P4;
Uses Crt;

var x: single = -3;

Begin
ClrScr;

repeat 
    write(x * x:1:1, '  ');
    x := x + 0.5;
until x = 3;

writeln;
writeln('Tastati orice pentru a iesi');
readkey;
end.