program Primo;
Uses crt;
Var
   option,num,n:integer;
{--------------------ES PRIMO----------------------}
function esprimo(numero : integer) : boolean;
var
   i : integer;
begin
     esprimo:= true;
     for i:=2 to ((numero div 2)) do
     begin
          if((numero mod i) = 0) then
               esprimo := false;
     end
end;
{-------------------cuales y cuantos primos hay hasta N numero----------------}
procedure nprimos(numero : integer);
var
   i,cont : integer;
begin
     cont:=0;
     write('Los numeros primos son: |');
     for i:=1 to (numero) do
         if esprimo(i) then
            begin
                 write(i,'|');
                 cont:= cont + 1;
            end;
     writeln();
     writeln('Cantidad de primos: ',cont);
end;
{------------------- N primeros numeros primos----------------}
procedure nprimerosprimos(cantidad : integer);
var
   i,cont,acum : integer;
begin
   cont:=0;
   write('Los primeros ',cantidad, ' numeros primos son: |');
   acum:=1;
   while cont < cantidad do
         begin
              if (esprimo(acum)) then
                 begin
                      cont:= cont + 1;
                      write(acum,'|');
                 end;
               acum:= acum + 1;
         end
end;

{------------------------MAIN-------------}



begin
   option:=1;
   while option <> 0 do

   begin
   clrscr();
   writeln('1. ¿Es primo?');
   writeln('2. ¿Cuales son?');
   writeln('3. ¿N primeros primos?');
   writeln('0. Salir');
   write('Ingrese option: ');
   read(option);
   if option=1 then
     begin
       clrscr();
       writeln('Ingrese numero para saber si es primo');
       readln(num);
       if (esprimo(num)) then
          writeln('El numero ingesado SI es primo')
       else
          writeln('EL numero ingresado NO es primo');
      end
    else if option=2 then
         begin
           clrscr();
           writeln('ingrese numero para saber los primos entre 0 y su numero');
           readln(n);
           nprimos(n);
         end
    else if option=3 then
         begin
           clrscr();
           writeln('ingrese numero para saber los N primeros numeros primos');
           readln(n);
           nprimerosprimos(n);
         end
    else if option=0 then
         begin
              writeln('good bye');
        end;
    readkey;
    end
end.
