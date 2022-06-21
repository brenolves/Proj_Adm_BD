create function calcIdade(funcID int)
returns int
language plpgsql
as
$$
declare
   age integer;
begin
   select date_part('year',age(dataNasc)) 
   into age
   from funcionario
   where codigo = funcID;
   
   return age;
end;
$$;