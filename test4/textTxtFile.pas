Program P1;
Uses Crt;

type
    mainSet = set of byte;
var 
    i,j:byte;
    a : array [1 .. 10] of mainSet;

begin
ClrScr;

a[1] := [1, 2, 3];
a[2] := [1, 2, 3];
a[3] := [1, 2, 4];

for i := 1 to 3-1 do
  for j := i to 3-1 do
    if  (a[i] <> a[j + 1]) then
      begin
        writeln('Multimile sunt disjuncte');
        exit;
      end;
writeln('Multimile nu sunt disjuncte');
readkey;
end.