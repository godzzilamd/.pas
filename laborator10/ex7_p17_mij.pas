Program P1;
Uses Crt;

type 
    custom_byte_type = array [0 .. 255] of byte;
    custom_array = array [1 .. 10] of custom_byte_type;

var 
    main_array:custom_array;
    n,i,j,x,z:byte;

//citeste de la tastatura multimea indicata
procedure read_stack(i: byte);
begin
    //citeste nr de elemente din viitoare multime
    write('Introduceti numarul de elemente din multimea nr. ', i, ' : '); 
    readln(main_array[i][255]);

    //citeste valorile elementelor
    writeln('Introduceti valorile multimii nr. ', i, ' :');
    j := 0;
    while j < main_array[i][255] do
    begin
        read(main_array[i][j]);
        inc(j);
    end;
    main_array[i][255] := j-1;
end;

begin
ClrScr;
writeln('Introduceti numarul de multimi ce vor fi introduse');
write('n = '); readln(n);

//citeste multimile
for i:= 1 to n do
begin
    read_stack(i);
end;

//verifica fiecare element din fiecare multime daca exista in multimile ce urmeaza dupa multimea data 
for i := 1 to n do
    for j := 0 to main_array[i][255] do
        for x := i + 1 to n do
            for z := 0 to main_array[x][255] do
                if (main_array[i][j] = main_array[x][z]) then
                begin
                    writeln('Sirurile nu sunt disjuncte');        
                    exit;
                end;

writeln('Sirurile sunt disjuncte');

readkey;
end.