Program P1;
Uses Crt;

var a : array [0 .. 256] of char;
    i,n : byte;
    l : byte = 100;

begin
ClrScr;
write('n = '); readln(n);
writeln('Introduceti textul :');

for i:= 1 to n do
begin
    read(a[i]);
    if a[i] = ' ' then 
        if i < l then l := i;
end;

if l <> 100 then writeln('Primul spatiu este pe pozitia : ', l) 
    else writeln('Nu sunt spatii');

readln;
end.
