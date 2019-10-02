Program P1;

var a : array [0 .. 256] of char;
    i,n,l : byte;

begin
write('n = '); readln(n);
writeln('Introduceti textul :');

for i:= 0 to n do
begin
    read(a[i]);
    if a[i] = ' ' then l := i;
end;

if l <> 0 then writeln('Primul spatiu este pe pozitia : ', l) 
    else writeln('Nu sunt spatii');

readln;
end.
