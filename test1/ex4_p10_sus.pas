Program P1;
Uses Crt;

var a : array [0 .. 255] of char;
    i,n : byte;
    l : byte;

begin
ClrScr;
write('n = '); readln(n);
writeln('Introduceti textul :');

for i:= 1 to n do
begin
    read(a[i]);
    if a[i] = ' ' then
    begin
        l := i;
        break;
    end;
end;

if l <> 0 then writeln('Primul spatiu este pe pozitia : ', l) 
    else writeln('Nu sunt spatii');

readln;
end.
