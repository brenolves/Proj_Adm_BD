select nome 
from funcionario 
where dtNasc 
not in
    (select min(dtNasc) 
    from funcionario);