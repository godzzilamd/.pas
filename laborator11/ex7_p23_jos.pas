Program P1;
Uses Crt;

type 
    Music = record
        titlu : string;
        interpret : string;
        numarPuncte : integer;
    end;

var f : file of Music;
    newTop : Music;

begin
ClrScr;

assign(f, 'ourTextFile.dat');
reset(f);

newTop.titlu := 'titlu';
newTop.interpret := 'interpret';
newTop.numarPuncte := 10;

// read(f, newTop);
write(f, newTop);

Close(f);

readkey;
end.