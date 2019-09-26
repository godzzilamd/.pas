Program P1;

var n:byte = 10;

begin
writeln('Numerele sunt :');
while (n < 100) do
Begin
    if n + (n mod 10) * 10 + (n div 10) = 55 then write(n, ' ');
    inc(n);
end;
readln;
end.