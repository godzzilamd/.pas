Program P1;
Uses Crt;

var n,m,j,i:byte;
    a : array [1 .. 100, 1 .. 100] of byte;
    s : byte = 0;

begin
ClrScr;
write('n = '); readln(n);
write('m = '); readln(m);

for i := 1 to n do
    for j := 1 to m do
        read(a[i][j]);

for i := 1 to n do
begin
    for j := 1 to m do
    s := s + a[j][i];
    writeln('Suma pe ', i, ' rind este : ', s);
    s := 0;
end;

readkey;
end.