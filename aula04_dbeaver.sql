

-- Q1 - Criar duas bases de dados no Postgres com os nomes de LETSCODE e LETSCODE_DEL 
create database letscode;
create database letscode_del;

-- Q2 - Alterar o nome da base de dados no Postgres de LETSCODE para TURMA889
alter database letscode rename to turma889

-- Q3 - Deletar a base de dados no Postgres com o nome de LETSCODE_DEL.
drop database if exists letscode_del

-- Q4 - Criar uma tabela na base de dados TURMA889 com o nome de ALUNOS e colunas conforme imagem:
create table turma889.public.alunos (
id integer,
matricula integer, 
nome varchar,
estado varchar,
formacao varchar
)

-- Q5 - Alterar o nome da coluna ESTADO para UF na tabela ALUNOS, na base de dados TURMA889.
alter table alunos rename column estado to uf

-- Q6 - Incluir as colunas EMAIL e TELEFONE na tabela ALUNOS, na base de dados TURMA889
alter table alunos add column email varchar
alter table alunos add column telefone varchar

-- Q7 - Alterar o tipo de dados da coluna EMAIL para VARCHAR com limite a 100 caracteres.
alter table alunos alter column email type varchar(100)

-- Q8 - Remover a coluna ID na tabela ALUNOS, na base de dados TURMA889
alter table alunos drop column id

-- Q9 - Remover a tabela ALUNOS, na base de dados TURMA889.
drop table alunos

-- Q10 - Qual a melhor coluna para ser a chave primária na tabela ALUNOS, 
-- a coluna ID ou a coluna MATRÍCULA? Justifique e defina a coluna escolhida como chave primária da tabela.
------ RESP: ID. Busca mais simples por ter menos caracteres.		

-- Q11 - Ao criar uma nova base de dados no Postgres, o SGBD cria uma tabela padrão com nome PUBLIC. V ou F?
------ RESP:  Falsa. Na verdade cria o schema

-- Q12 - A hierarquia no banco de dados Postgres é dada pela ordem base de dados > schema > tabela. V ou F?
------ RESP:  Verdadeiro.

-- Q13 - Para alterar colunas em tabelas, é preciso excluir a tabela e criar novamente com as alterações necessárias. V ou F?
------ RESP:  Falso, basta utilizar o alter table e realizar as mudanças

-- Q14 - Qual comando SQL é usado para criar uma nova tabela?
------ RESP:  create table <nome da tabela>

-- Q15 - Qual comando SQL é sado para deletar uma base de dados?
------ RESP:  drop database <nome da db>  

-- Q16 - O comando SQL ALTER TABLE é utilizado tanto para adicionar uma nova coluna, quanto para deletar uma coluna. V ou F?
------ RESP:  Verdadeiro, através de add column e drop column, respectivamente

