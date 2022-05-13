create view deptoFunc(codigo, nome, depto) as 
    select f.codigo, f.nome, d.descricao 
    from departamento d, funcionario f 
    where d.codigo = f.codDepto 
    group by d.descricao,f.codigo;

select p.nome, d.descricao, f.nome, df.depto 
from departamento d, funcionario f, projeto p, deptoFunc df 
where p.codDepto = d.codigo 
    and p.codResponsavel = f.codigo 
        and f.codigo = df.codigo;
