create view gerenteResp(codigo) as 
    select f.codigo 
    from funcionario f
    where f.codigo in 
        (select codResponsavel 
        from projeto);

select f.nome
from funcionario f join gerenteResp gr 
on f.codigo = gr.codigo 
    and f.codigo in 
        (select codGerente 
        from departamento)
    or f.codigo = gr.codigo 
        and f.salario > 
            (select f.salario 
            from funcionario f, departamento d
            where f.codigo = f.codDepto
            group by f.salario);