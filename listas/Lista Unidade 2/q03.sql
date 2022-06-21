# Criar procedure retornando essa query

select f.nome, calcIdade(f.codigo)
from funcionario f
where calcIdade(f.codigo) > (
	select distinct avg(calcIdade(f.codigo))
	from funcionario f, departamento d
	where f.depto = 1
	group by d.codigo
)