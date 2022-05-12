insert into departamento(descricao, codGerente) values ('Departamento de Tecnologia', 1);
insert into departamento(descricao, codGerente) values ('Departamento de Matemática', 2);
insert into departamento(descricao, codGerente) values ('Departamento de Geografia', 3);
insert into departamento(descricao, codGerente) values ('Departamento de Medicina', 4);
insert into departamento(descricao, codGerente) values ('Departamento de Psicologia', 5);


insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('João', 'M', '1988-05-07', 3500.00, 1);
insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Joaquim', 'M', '1998-02-27', 3250.00, 1);

insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Paula', 'F', '1987-07-15', 3250.00, 2);
insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Fernando', 'M', '1991-01-15', 1250.00, 2);

insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Patricia', 'F', '1994-03-17', 3400.00, 3);
insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Julia', 'F', '1999-04-26', 1400.00, 3);

insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Maria Clara', 'F', '1999-08-24', 3200.00, 4);
insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Marcos', 'M', '1980-02-28', 4200.00, 4);

insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Cintia', 'F', '1990-03-16', 2200.00, 5);
insert into funcionario(nome, sexo, dtNasc, salario, codDepto) values ('Livia', 'F', '1989-09-11', 3450.00, 5);


insert into projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
values ('Websites', 'Criação de websites', 1, 2, '2022-05-12', '2022-08-12');

insert into projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
values ('Estágio', 'Estágio de prof. substituto', 2, 3, '2022-05-12', '2022-08-12');

insert into projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
values ('Pesquisa', 'Estudo de pedras', 3, 5, '2022-05-12', '2022-08-12');

insert into projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
values ('Estágio', 'Estágio no hospital geral', 4, 7, '2022-05-12', '2022-08-12');

insert into projeto(nome, descricao, codDepto, codResponsavel, dataInicio, dataFim)
values ('Estágio', 'Estágio na clinica geral', 5, 9, '2022-05-12', '2022-08-12');


insert into atividade(nome, descricao, codResponsavel, dataInicio, dataFim)
values ('Websites - Ativ.01', 'Atividade 01 do projeto de Websites', 2, '2022-05-12', '2022-06-12');

insert into atividade(nome, descricao, codResponsavel, dataInicio, dataFim)
values ('Estágio - Ativ.01', 'Atividade 01 do projeto de Estágio de Matemática', 3, '2022-05-12', '2022-06-12');

insert into atividade(nome, descricao, codResponsavel, dataInicio, dataFim)
values ('Pesquisa - Ativ.01', 'Atividade 01 do projeto de Pesquisa', 5, '2022-05-12', '2022-06-12');

insert into atividade(nome, descricao, codResponsavel, dataInicio, dataFim)
values ('Estágio - Ativ.01', 'Atividade 01 do projeto de Estágio de Medicina', 7, '2022-05-12', '2022-06-12');

insert into atividade(nome, descricao, codResponsavel, dataInicio, dataFim)
values ('Estágio - Ativ.01', 'Atividade 01 do projeto de Estágio de Psicologia', 9, '2022-05-12', '2022-06-12');


insert into atividade_projeto(codProjeto, codAtividade) values (1, 1);
insert into atividade_projeto(codProjeto, codAtividade) values (2, 2);
insert into atividade_projeto(codProjeto, codAtividade) values (3, 3);
insert into atividade_projeto(codProjeto, codAtividade) values (4, 4);
insert into atividade_projeto(codProjeto, codAtividade) values (5, 5);