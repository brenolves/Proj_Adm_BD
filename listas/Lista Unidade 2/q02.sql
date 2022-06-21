select d.sigla, avg(calcIdade(f.codigo))
from funcionario f, departamento d
where f.depto = d.codigo
group by d.codigo