CREATE VIEW IF NOT EXISTS empregados_depto
AS 
   select e.matricula, e.nome, d.nomedep
   FROM empregado e
   INNer join departamento d
   where e.depto = d.codDep



CREATE VIEW depto_gerentes
AS 
   select e.matricula, e.nome, d.nomedep
   FROM empregado e
   INNer join departamento d
   where e.matricula = d.gerente
   group by e.matricula


CREATE VIEW num_empregados_depto
AS 
   select d.nomedep, count(e.matricula) as empregados
   FROM empregado e
   INNer join departamento d
   where e.depto = d.codDep
   group by d.codDep