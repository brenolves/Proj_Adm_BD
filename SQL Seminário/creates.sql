CREATE TABLE empregado (
  matricula integer primary key NOT NULL,  
  nome text NOT NULL,
  endereco text DEFAULT NULL,
  sexo text DEFAULT NULL,
  salario numeric DEFAULT NULL,
  depto integer DEFAULT NULL,
  foreign key (depto) references departamento(codDep)
);

CREATE TABLE departamento (
  codDep integer primary key,
  nomeDep text NOT NULL,
  gerente integer NOT NULL
);

CREATE TABLE projeto (
  codproj integer primary key,
  nome text DEFAULT NULL,
  localizacao text DEFAULT NULL,
  depart integer DEFAULT NULL,
  lider integer DEFAULT NULL,
  foreign key (depart) references departamento(codDep),
  foreign key (lider) references empregado(matricula)
);

CREATE TABLE alocacao (
  codAloc integer primary key,
  matric integer NOT NULL,
  codProj integer NOT NULL,
  horas numeric DEFAULT NULL,
  foreign key (matric) references empregado(matricula),
  foreign key (codProj) references projeto(codproj)
);

CREATE TABLE dependente (
  codDepend integer PRIMARY key,
  matricula integer NOT NULL,
  nome text DEFAULT NULL,
  sexo text DEFAULT NULL
);