-- Questão 1 - Criar uma base de dados no Postgres com o nome de CINEMA e uma tabela de nome FILMES.
create database cinema

create table cinema.public.filmes(
	id 			integer,
	nome		varchar,
	categoria	varchar,
	duracao		integer,
	lancamento	date
)

-- Questão 2 - Inserir apenas um registro na tabela FILMES, informando todos os atributos indicando a coluna ID = 6. 
insert into filmes values (6, 'I Origins', 'Drama', 116 , '2014-01-18')

-- Questão 3 - Inserir na tabela FILMES, todos os registros do exemplo abaixo.
insert into filmes values
	(1, 'Como eu Era Antes de Você', 'drama', 110 , '2016-06-16'),
	(2, 'Para Sempre', 'romance', 104 , '2012-06-07'),
	(3, 'Arremessando Alto', 'drama', 117 , '2022-06-03'),
	(4, 'King Richard: Criando Campeãs', 'drama', 144 , '2021-12-02'),
	(5, 'No Ritmo do Coração', 'drama', 111 , '2021-09-23')
	

-- Questão 4 - Deletar na tabela FILMES, apenas a linha com o ID = 6. 
delete from filmes where id = 6

-- Questão 5 - Adicionar uma coluna com nome de VERIFICAR do tipo booleano 
-- e atualizar os registros com categoria = drama como True na coluna VERIFICAR.

alter table filmes add verificar bool

update filmes set verificar = True where lower(categoria) = 'drama'

update filmes set verificar = False where lower(categoria) <> 'drama'

-- Questão 6 - Construa um SELECT que retorne os dados conforme imagem abaixo.
select id, nome, categoria from filmes where duracao <= 110

-- Questão 7 - Construa um SELECT que retorne os dados conforme imagem abaixo.
select nome from filmes where lancamento < '2022-06-03'

-- Questão 8 - Construa um SELECT que retorne os dados conforme imagem abaixo.
select id, nome, categoria, duracao, lancamento from filmes where categoria = 'romance'
