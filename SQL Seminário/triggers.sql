CREATE TRIGGER IF NOT EXISTS inserir_projeto 
   AFTER INSERT ON empregado
BEGIN
 	insert into projeto(nome, localizacao, depart, lider) values ('Projeto X', 'Caicó - RN', new.depto, new.matricula);
END;

CREATE TRIGGER IF NOT EXISTS inserir_alocacao 
   AFTER INSERT ON projeto
BEGIN
 	insert into alocacao(matric, codProj, horas) values (new.lider, new.codproj, abs(random() % 10));
END;