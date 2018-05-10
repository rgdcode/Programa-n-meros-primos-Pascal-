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


{------------------------MAIN-------------}



begin
   option:=1;
   while option <> 0 do

   begin
   clrscr();
   writeln('1. ¿Es primo?');
   writeln('2. ¿Cuales son?');
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
    else if option=0 then
         begin
              writeln('good bye');
        end;
    readkey;
    end
end.
