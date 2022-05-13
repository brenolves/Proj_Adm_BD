select f.nome, f.salario, f.codDepto
from funcionario f, departamento d
where f.codDepto = d.codigo and f.codigo not in
    (select codGerente
    from departamento)
order by d.codigo;