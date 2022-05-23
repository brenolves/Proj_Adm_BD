create or replace function func_add_milhas() returns trigger as $add_milhas$
    begin
	
        update milhas 
		set quantidade = quantidade + 
			(select distinct distancia from voo, cliente_voo 
			where new.voo = voo.codigo
			) / 10
		where  cliente = new.cliente;

		return new;
		
    end;
	
$add_milhas$
language plpgsql;

create trigger add_milhas
after insert on cliente_voo
    for each row
    execute function func_add_milhas();