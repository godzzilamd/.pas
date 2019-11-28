Program P1;
Uses Crt;

var a : array [1 .. 4, 1 .. 4] of byte = (
        (1,1,1,1),
        (1,1,1,1),
        (1,1,1,1),
        (1,1,1,1)
    );

    i,j,s,n,m,d1,d2:byte;

begin
ClrScr;
n := 4;
m := 4;

for i := 1 to n do
    for j := 1 to m do
        if (i == j) d1 := d1 + a[i][j];

for i := 1 to n do
    for j := 1 to m do
        if (i == j) d1 := d1 + a[i][j];


for i := 1 to n do
begin
    for j := 1 to m do
        write(a[i][j], ' ');
    writeln;
end;

readkey;
end.