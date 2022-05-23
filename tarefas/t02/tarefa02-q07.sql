create or replace function func_add_passageiro() returns trigger as $add_passageiro$
    begin
	
        update voo 
		set num_passageiros = num_passageiros + 1
		where  codigo = new.voo;

		return new;
		
    end;
	
$add_passageiro$
language plpgsql;


create trigger add_passageiro
after insert on cliente_voo
    for each row
    execute function func_add_passageiro();