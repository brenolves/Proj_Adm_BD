create table cliente (
	codigo serial primary key,
	nome varchar(50),
	endereco varchar(50)
);

create table piloto (
	codigo serial primary key,
	nome varchar(50),
	num_voos int
);

create table voo (
	codigo serial primary key,
	tipo varchar(50),
	piloto int,
	num_passageiros int,
	distancia float,
	foreign key (piloto) references piloto(codigo)
);

create table milhas (
	cliente int primary key,
	quantidade int,
	foreign key (cliente) references cliente(codigo)
);

create table cliente_voo (
	cliente int,
	voo int,
	classe varchar(15),
	primary key(cliente, voo),
	foreign key (cliente) references cliente(codigo),
	foreign key (voo) references voo(codigo)
);