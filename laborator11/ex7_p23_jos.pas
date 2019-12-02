Program P1;
Uses Crt;

type 
    Melody = record
        titlu : string;
        interpret : string;
        numarPuncte : integer;
    end;

var f : textfile;
    newTop : array [1 .. 100] of Melody;
    n : byte;

//citeste datele din fisierul .txt predefinit corect
procedure readFromFile();
var i:byte = 0;
begin
    assign(f, 'getMelody.txt');
    reset(f);

    while not eof(f) do
    begin
        inc(i);
        readln(f, newTop[i].titlu);
        readln(f, newTop[i].interpret);
        readln(f);
    end;

    n := i;
    Close(f);
end;    

//afiseaza pe ecran datele ce se contin in noul top de cintece
procedure showMelodyObject();
var i : byte;
begin
    writeln('Noul top este');
    writeln;

    for i := 1 to n do
    begin
        writeln('Titlu : ', newTop[i].titlu);
        writeln('Interpret : ', newTop[i].interpret);
        writeln('Puncte acumulate : ', newTop[i].numarPuncte);
    end;
end;

//citeste de la tastatura punctele acumulate de melodie in saptamina aceasta
procedure getMelodyPoints();
var i : byte;
begin
    writeln('Introduceti punctajul acumulat de fiecare melodie in parte');
    for i := 1 to n do
    begin
        write('Punctajul piesei ', newTop[i].titlu, ' : ');
        readln(newTop[i].numarPuncte);
    end;
end;

//sorteaza melodiile descrescator
procedure sortnewTop();
Var i, j : integer;
    temp : Melody;
Begin
	for i:=2 to n do
        for j:=n downto i do
			If newTop[j-1].numarPuncte < newTop[j].numarPuncte Then
			Begin
				temp := newTop[j-1];
				newTop[j-1] := newTop[j];
				newTop[j] := temp;
			End;
End;

//inscrie datele prelucrate intr-un fisier text
procedure writeNewTop();
var i : byte;
begin
    assign(f, 'MelodyOutput.txt');
    rewrite(f);
    writeln('Noul top este');
    writeln;

    for i := 1 to n do
        begin
            writeln(f, 'Titlu : ', newTop[i].titlu);
            writeln(f, 'Interpret : ', newTop[i].interpret);
            writeln(f, 'Puncte acumulate : ', newTop[i].numarPuncte);
        end;
    
    Close(f);
end;

begin
ClrScr;

readFromFile;
getMelodyPoints;
sortnewTop;
showMelodyObject;
writeNewTop;

readkey;
end.