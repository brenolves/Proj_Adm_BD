# Ao criar um cliente, um trigger cria também uma tupla na tabela de milhas.

insert into cliente(nome, endereco)
values('João', 'Patos-PB');

create trigger add_card_milhagem
    after update on cliente
    for each row
    execute function func_add_card_milhagem(); # Função declarada na questão 04.


# Ao tentar criar outro cartão de milhagem para o cliente, ocorrerá erro, pois como cliente é a primary key 
# da tabela milhas, há a constraint de valor único (unique).