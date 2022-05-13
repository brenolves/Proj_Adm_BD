select p.nome, p.dataInicio, p.dataFim, a.descricao, a.dataInicio, a.dataFim 
from projeto p, atividade a, atividade_projeto ap 
where p.codigo = ap.codProjeto 
    and a.codigo = ap.codAtividade;
