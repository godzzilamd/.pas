Program P1;

var i:byte = 0;
    S:single = 0;

begin
Randomize;
while i < 5 do
Begin
    S :=S + Random(10) * Random(10);
    inc(i);
end;
writeln('A cincea incercare are valoarea de : ', S:2:2);
readln;
end.