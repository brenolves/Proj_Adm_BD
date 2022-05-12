select f.nome, f.salario, d.descricao
from funcionario f
left join departamento d
on f.codDepto = d.codigo