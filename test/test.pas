Program P1;
Uses Crt;

var n,m:byte;
    x:integer;

begin
ClrScr;
writeln('Introduceti numerele');
write('n = '); readln(n);
write('m = '); readln(m);

x := m * n;
 
while(n <> m) do
begin
    if(n > m) 
    then
        n := n - m
    else
        m := m - n;
end;

writeln('cmmdc = ', n);
writeln('cmmmc = ', x / n:1:1);

readkey;
end.