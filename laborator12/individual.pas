Program P1;
Uses Crt;

type
    Produs = record
        nume : string;
        pret : real;
    end;
    Magazin = record
        nrProduse : byte;
        produse : array [1 .. 100] of Produs;
    end;
    ProdusUtilizator = record
        nume : string;
        cantitate : byte;
    end;
var 
    p, m : byte;
    magazine : array [1 .. 100] of Magazin;
    produseleUtilizatorului : array [1 .. 100] of ProdusUtilizator;

procedure citesteProduse(i : byte);
var k : byte;
begin
    for k := 1 to magazine[i].nrProduse do
    begin
        write('Denumirea : '); readln(magazine[i].produse[k].nume);
        write('Pret : '); readln(magazine[i].produse[k].pret);
    end;
end;

procedure citesteProduseleMagazinelor();
var i : byte;
begin
    for i := 1 to m do
    begin
        write('Numarul produselor din magazinul nr. ', i, ' : ');
        readln(magazine[i].nrProduse);
        citesteProduse(i);
    end;    
end;

procedure afiseazaToateProduseleSiMagazinele();
var i, j : byte;
begin
    for i := 1 to m do
    begin
        writeln('Magazin ', i);
        for j := 1 to magazine[i].nrProduse do
            writeln('  ', magazine[i].produse[j].nume, ' - ', magazine[i].produse[j].pret:2:2);
    end;
end;

procedure citesteProduseleUtilizatorului();
var i : byte;
begin
    for i := 1 to p do
    begin
        write('Denumirea produsului ', i, ' : ');
        readln(produseleUtilizatorului[i].nume);
        write('Cantitatea : ');
        readln(produseleUtilizatorului[i].cantitate);
    end;
end;

procedure cautaSiComparaProdus();
var i, j, k, magazin : byte;
    min , suma: real;
begin
    suma := 0;
    for i := 1 to p do
    begin
        min := 10000;
        magazin := 0;
        for j := 1 to m do
            for k := 1 to magazine[j].nrProduse do
            begin
                if produseleUtilizatorului[i].nume = magazine[j].produse[k].nume
                    then if min > magazine[j].produse[k].pret 
                            then
                            begin
                                min := magazine[j].produse[k].pret;
                                magazin := j;
                            end;
            end;
        if magazin <> 0 
            then 
            begin
                writeln('Produsul ', produseleUtilizatorului[i].nume, ' are pretul minim in magazinul nr ', magazin);
                suma := suma + produseleUtilizatorului[i].cantitate * min;
            end;
    end;
    writeln('Suma totala ce trebuie cheltuita este ', suma:2:2);
end;

begin
ClrScr;

writeln('Introduceti numarul de magazine');
write('m = '); readln(m);
citesteProduseleMagazinelor();
afiseazaToateProduseleSiMagazinele();
write('Numarul de produse ce necesita procurate : '); readln(p);
citesteProduseleUtilizatorului();
cautaSiComparaProdus();

readkey;
end.