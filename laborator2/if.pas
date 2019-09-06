Program p2;
Uses Crt;

var x:integer;

begin
ClrScr;

write('Introduceti un numar : '); readln(x);

if (x mod 2 = 0)
    then writeln('true')
        else writeln('false');

writeln('Tastati orice pentru a iesi');
readkey;
end.