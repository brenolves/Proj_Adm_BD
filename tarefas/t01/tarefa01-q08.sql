create view getProjectNum(cod, num) as 
    select d.codigo, count(p.nome) 
    from departamento d, projeto p 
    where p.codDepto = d.codigo 
    group by d.codigo
;

select d.descricao, f.nome, p.num  
from departamento d, funcionario f, getProjectNum p 
where d.codGerente = f.codigo 
    and p.cod = d.codigo;