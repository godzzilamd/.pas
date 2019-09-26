Program P1;

var n,m:byte;
    x:integer;

begin
writeln('Introduceti numerele');
write('n = '); readln(n);
write('m = '); readln(m);
if (n > m) then x:= m else x:=n;

while (x <= n) and (x <= m) and (x > 0) do
begin
    if (n mod x = 0) and (m mod x = 0) then 
    begin 
        writeln('cmmdc = ', x);
        Break; 
    end;
    dec(x);
end;

if (n > m) then x:= n else x:=m;
while 1 < 2 do
begin
    if (x mod n = 0) and (x mod m = 0) then 
    begin 
        writeln('cmmmc = ', x);
        Break; 
    end;
    inc(x);
end;

readln;
end.