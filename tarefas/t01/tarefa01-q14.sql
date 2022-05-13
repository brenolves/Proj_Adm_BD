create view ativFunc(codigo, num) as 
    select f.codigo, count(a.nome) 
    from funcionario f, atividade a 
    where a.codResponsavel = f.codigo 
    group by f.codigo;

select f.nome, af.num 
from funcionario f, ativFunc af 
where f.codigo = af.codigo;