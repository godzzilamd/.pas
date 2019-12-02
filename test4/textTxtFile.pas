Program P1;
Uses Crt;

var i: integer = 0;
  a, b, c: string;
  F: TextFile;

begin
ClrScr;

  Assign(F, 'myfile.txt');
  Reset(F);
//   while not eof(F) do
//   begin
    Read(F, a);
    while a[i] <> ',' do
    begin
        b[i] := a[i];
        inc(i);
    end;
    Write(a, '\', b);
//   end;
  Close(F);
  // Do actions...

end.