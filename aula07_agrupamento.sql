-- Atividade utilizando a tabela de dados florestais no Brasil.

select * from florestas_ibge


-- Questão 1 - Contar quantos municípios estão presentes na tabela de florestas.
select
count (distinct(municipio_estado)) as qtd_municipios
from florestas_ibge

-- Questão 2 - Qual o total de area_ha na tabela florestas?

select
sum (area) as total_area_ha
from florestas_ibge

-- Questão 3 - Qual o total de area_ha na tabela florestas por espécie?
select
especie, sum (area) as total_area_ha
from florestas_ibge
group by especie

-- Questão 4 - Qual o total de area_ha na tabela florestas por ano?
select
ano, sum (area) as total_area_ha
from florestas_ibge
group by ano

-- Questão 5 - Contar a quantidade de municípios tabela florestas por ano.
select
ano, count(distinct(municipio_estado)) as qtd_municipios
from florestas_ibge
group by ano

-- Questão 6 - Qual a media de area_ha na tabela florestas por UF, comparando com a area_ha de cada registro?
select
a.estado_sigla, municipio_estado, ano, area, media_uf
from florestas_ibge a
left join
(select estado_sigla, round(avg(area)) as media_uf
from florestas_ibge group by estado_sigla) as b
on a.estado_sigla = b.estado_sigla;


-- Questão 7 - Qual o rank de area_ha na tabela florestas por região?
select regiao, sum (area) as area_por_regiao,
rank() over (order by sum(area) desc) 
from florestas_ibge
group by regiao