Program P1;

var z,x,y:byte;

begin
// pentru ca inca nu au fost invatate instructiunile repetitive
writeln('Introduceti numerele :');
write('z = '); readln(z);
write('x = '); readln(x);
write('y = '); readln(y);
if z mod 2 = 0 then writeln(z, ' par') else writeln(z, ' impar');
if x mod 2 = 0 then writeln(x, ' par') else writeln(x, ' impar');
if y mod 2 = 0 then writeln(y, ' par') else writeln(y, ' impar');
readln;
end.