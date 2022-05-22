create or replace function func_add_card_milhagem() returns trigger as $add_card_milhagem$
    begin
        insert into milhas(cliente, quantidade)
		values (new.codigo, 0);
		
		return new;
    end;
$add_card_milhagem$
language plpgsql;


create trigger add_card_milhagem
    after insert on cliente
    for each row
    execute function func_add_card_milhagem();