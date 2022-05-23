create or replace function func_del_cliente() returns trigger as $del_cliente$
    begin
	
        delete from cliente
		where codigo in 
			(select cliente
			 from cliente_voo
			 where voo = old.codigo);

		return old;
		
    end;
	
$del_cliente$
language plpgsql;

create or replace function func_del_piloto() returns trigger as $del_piloto$
    begin
	
        delete from piloto
		where codigo = old.piloto;

		return old;
		
    end;
	
$del_piloto$
language plpgsql;

create trigger del_cliente 
before delete on voo
    for each row
    execute function func_del_cliente();


create trigger del_piloto 
before delete on voo
    for each row
    execute function func_del_piloto();