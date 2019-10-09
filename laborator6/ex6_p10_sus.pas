Program P1;
Uses Crt;

var x,n,i,j,k:byte;
    a : array [0 .. 100] of byte;

begin
ClrScr;
//introducerea datelor
write('n = '); readln(n);
write('x = '); readln(x);
writeln('Valorile cercurilor: ');
for i := 1 to n do
    read(a[i]);

writeln;
//backtracking fara functii si filtrare
for i := 1 to n do
begin
    for j := 1 to n do
    begin
        for k := 1 to n do
        begin
            if a[i] + a[j] + a[k] = x then writeln(a[i], ' ', a[j], ' ', a[k]);
        end;
    end;
end;

readln;
end.
