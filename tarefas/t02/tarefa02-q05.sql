create or replace function func_add_voo() returns trigger as $add_voo$
    begin
        update piloto
		set num_voos = num_voos + 1
		where codigo = new.piloto;
		
		return new;
    end;
	
$add_voo$
language plpgsql;

create trigger add_voo
    after insert on voo
    for each row
    execute function func_add_voo();