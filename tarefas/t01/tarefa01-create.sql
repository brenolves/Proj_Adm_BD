create table departamento (
    codigo serial primary key,
    descricao varchar(255),
    codGerente int
);

create table funcionario (
    codigo serial primary key,
    nome varchar(50) not null,
    sexo char(1) not null,
    dtNasc date not null,
    salario money,
    codDepto int,
    foreign key (codDepto) references departamento(codigo)
);

alter table departamento add foreign key (codGerente) references funcionario(codigo);

create table projeto (
    codigo serial primary key,
    nome varchar(150) not null,
    descricao varchar(255) not null,
    codDepto int not null,
    codResponsavel int not null,
    dataInicio date not null,
    dataFim date not null,
    foreign key (codDepto) references departamento(codigo),
    foreign key (codResponsavel) references funcionario(codigo)
);

create table atividade (
    codigo serial primary key,
    nome varchar(150) not null,
    descricao varchar(255) not null,
    codResponsavel int not null,
    dataInicio date not null,
    dataFim date not null,
    foreigh key (codResponsavel) references funcionario(codigo)
);

create table atividade_projeto (
    codProjeto int primary key,
    codAtividade int primary key,
    foreign key codProjeto references projeto(codigo),
    foreign key codAtividade references atividade(codigo),
);