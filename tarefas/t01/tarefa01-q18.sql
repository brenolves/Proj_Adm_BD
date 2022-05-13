select f.nome, d.descricao 
from funcionario f 
left join departamento d 
on f.codDepto = d.codigo 
where f.salario = 
    (select max(salario) 
    from funcionario 
    where codDepto = f.codDepto)
order by f.salario;
