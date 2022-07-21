insert into departamento 
(nomeDep, gerente)
values ('RH', 9493);

insert into departamento 
(nomeDep, gerente)
values ('Vendas', 9491);

insert into departamento 
(nomeDep, gerente)
values ('Compras', 9494);

insert into departamento 
(nomeDep, gerente)
values ('Administrativo', 9492);

insert into departamento 
(nomeDep, gerente)
values ('Finanças', 9491);

insert into departamento 
(nomeDep, gerente)
values ('Tecnológico', 9495);

insert into empregado
(matricula, nome, depto)
values (9491, 'Ana', 2);

insert into empregado
(matricula, nome, depto)
values (9492, 'Taciano', 4);

insert into empregado
(matricula, nome, depto)
values (9493, 'Xuxa', 1);

insert into empregado
(matricula, nome, depto)
values (9494, 'Sasha', 3);

insert into empregado
(matricula, nome, depto)
values (9495, 'José', 6);

insert into empregado
(matricula, nome, depto)
values (9496, 'Marcos', 3);

insert into empregado
(matricula, nome, depto)
values (9497, 'Maria', 4);

insert into empregado
(matricula, nome, depto)
values (9498, 'Marcos', 2);

insert into empregado
(matricula, nome, depto)
values (9499, 'Miriam', 1);

insert into empregado
(matricula, nome, depto)
values (9500, 'Hilário', 3);

insert into empregado
(matricula, nome, depto)
values (9501, 'Eduardo', 4);

INSERT INTO `projeto`
(`nome`,
`localizacao`,
`depart`)
VALUES
('Projeto X',
'Caicó',
1
);

INSERT INTO `projeto`
(`nome`,
`localizacao`,
`depart`)
VALUES
('Projeto H',
'Caicó',
1
);

INSERT INTO `projeto`
(`nome`,
`localizacao`,
`depart`)
VALUES
('Projeto U',
'Caicó',
2
);

INSERT INTO `dependente`
(`matricula`,
`nome`,
`sexo`)
VALUES
(9492,
'José Filho',
'M');

INSERT INTO `dependente`
(`matricula`,
`nome`,
`sexo`)
VALUES
(9493,
'Umberto',
'M');

INSERT INTO `dependente`
(`matricula`,
`nome`,
`sexo`)
VALUES
(9495,
'Doisberto',
'M');

INSERT INTO `alocacao`
(`matric`,
`codProj`,
`horas`)
VALUES
(9495,
 1,
 4.00
);