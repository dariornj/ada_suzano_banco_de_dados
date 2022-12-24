-- Atividade utilizando a tabela de dados reflorestamento no Brasil.

select * from florestas


-- Questão 1 - Construir uma consulta que apresente o nome dos municípios que tiverem área reflorestada maior que 200.000 ha
select municipio
from florestas
where area > 200000


-- Questão 2 - Construir uma consulta que apresente o nome dos municípios e a sigla dos estados 
-- que tiverem área reflorestada maior que 150.000 ha
select municipio, estado_sigla
from florestas
where area > 150000


-- Questão 4 - Construir uma consulta que apresente nomes dos municípios e as espécies que tiverem área 
-- reflorestada maior que 30.000 ha no estado da Bahia.
select municipio, especie
from florestas
where area > 30000 and lower(estado) = 'bahia'


-- Questão 5 - Construir uma view e uma view materializada com as informações da
-- tabela original, depois comparar os tempos de execução das consultas


create view vw_florestas as (
	select * from florestas
)

select * from vw_florestas
-- 2ms (1ms fetch)

create view vwm_florestas as (
	select * from florestas
)

select * from vwm_florestas
-- 3 ms (1ms fetch)

-- Diferença de 1 ms na consulta (verificado com o summary -> ctrl + shit + E)


