Program P3;
Uses Crt;

var inaltimea: integer;
    virsta: integer;
    sex: char;

Begin
ClrScr;

writeln('Introduceti datele despre persoana');
write('Inaltimea: '); readln(inaltimea);
write('Virsta: '); readln(virsta);
write('Sex: '); readln(sex);

write('Greutatea ideala pentru aceasta persoana este: ');
if (sex = 'm')
    then
        writeln(50 + 0.75*(inaltimea - 150) + (virsta - 20/4):2:2)
    else 
        writeln((50 + 0.75*(inaltimea - 150) + (virsta - 20/4))-10:2:2);


writeln;
writeln('Tastati orice pentru a iesi');
readkey;
end.