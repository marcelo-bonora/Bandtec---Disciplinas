-- Cria banco de dados Filme
create database Filme;

-- Seleciona banco de dados Filme
use Filme;

-- Cria tabela Filme
create table Filme (
   idFilme int primary key,
   titulo varchar(50),
   genero varchar(20),
   diretor varchar(40)
);

-- Insere dados de um filme
insert into Filme values (1,'Avatar','ficção','James Cameron');

-- Exibe os dados da tabela
select * from Filme;

-- Insere dados de mais filmes, porém apenas os dados das colunas idFilme e titulo
insert into Filme (idFilme,titulo) values
           (2, 'Os incríveis'),
           (3, 'Procurando Nemo'),
           (4, 'Schrek');

-- Insere dados de mais filmes, porém apenas os dados das colunas titulo e idFilme, nessa ordem
insert into Filme (titulo, idFilme) values
           ('Cidade de Deus', 5),
           ('Tropa de Elite', 6),
           ('Tropa de Elite 2', 7),
           ('Schrek 2', 8);
           
-- Atualiza o genero de 4 linhas           
update Filme set genero='animação' where idFilme in (2,3,4,8);

-- Atualiza o genero e o diretor de 2 linhas
update Filme set genero='ação', diretor='José Padilha'
             where idFilme in (6,7);
             
-- Atualiza o diretor de 2 linhas, porém usando OR             
update Filme set diretor= 'Andrew Adamson'
             where idFilme = 4  or  idFilme = 8; 
             
-- Atualiza o genero e o diretor do filme de idFilme 5             
update Filme set genero= 'drama', diretor='Fernando Meirelles'
             where idFilme = 5;
             
-- Atualiza o diretor de mais 2 filmes
update Filme set diretor = 'Brad Bird' where idFilme = 2;
update Filme set diretor = 'Andrew Stanton' where idFilme = 3;

-- Exibe os dados dos filmes ordenados pelo genero, e entre os filmes
-- do mesmo genero, ordenados pelo titulo
select * from Filme order by genero, titulo;

-- Exibe os dados dos filmes ordenados pelo genero em ordem crescente, 
-- e entre os filmes do mesmo genero, ordenados pelo titulo em ordem decrescente
select * from Filme order by genero, titulo desc;

-- Exibe os dados dos filmes ordenados pelo genero em ordem decrescente, 
-- e entre os filmes do mesmo genero, ordenados pelo titulo em ordem decrescente
select * from Filme order by genero desc, titulo desc;

-- Exibir a descrição da tabela
desc Filme;

-- Altera o tamanho da coluna genero para máximo 30
-- A palavra column é opcional
-- Um dos 2 comandos a seguir:
alter table Filme modify genero varchar(30);
alter table Filme modify column genero varchar(30);

-- Exibir a descrição da tabela
desc Filme;

-- Acrescentar a coluna chamada ano na tabela Filme
-- Um dos 2 comandos a seguir
alter table Filme add ano int;
alter table Filme add column ano int;

select * from Filme;

-- Exclui a coluna ano
-- Um dos 2 comandos a seguir
alter table Filme drop ano;
alter table Filme drop column ano;

-- Altera o nome da coluna
-- Versões posteriores ao MySQL 8.0:
alter table Filme rename column titulo to nomeFilme;
-- Versões anteriores ao MySQL 8.0:
alter table Filme change titulo nomeFilme varchar(50);

-- Criar uma tabela chamada Pessoa
-- Coluna idPessoa será auto_increment, ou seja, 
-- o MySQL colocará automaticamente o valor dessa coluna
create table Pessoa (
  idPessoa int primary key auto_increment,
  nome varchar(50),
  dataNasc date     -- tipo para data
);

-- se quiser alterar o valor inicial do auto_increment
alter table Pessoa auto_increment = 100;  

-- Insere 2 pessoas
-- Se não especificar quais colunas está inserindo, devemos
-- especificar null para a coluna que é auto_increment
-- A forma de inserir a data é ano-mês-dia, entre aspas simples
insert into Pessoa values (null, 'Maria','1990-05-10'),
						  (null, 'José', '2002-06-15');

-- Exibe os dados da tabela Pessoa
select * from Pessoa;

-- Insere mais 2 pessoas - dessa vez especificando as colunas 
insert into Pessoa (nome,dataNasc) values 
       ('Pedro','2003-10-12'), ('Vicente','2001-02-27');

-- Se repetirmos a execução dos comandos de insert into, os dados vão 
-- ficar replicados, com idPessoa diferente
delete from Pessoa where idPessoa >=5;                          

insert into Pessoa (nome, dataNasc) values ('Mickey','1950-10-05');  

-- Mesmo que o idPessoa seja auto_incremente, podemos passar um valor
-- para o idPessoa. Nesse caso, ficará com o valor que especificamos
insert into Pessoa values (15, 'Minnie', '1955-05-02');

insert into Pessoa values (null,'Donald', '1957-06-03');
insert into Pessoa values (5, 'Pluto', '1960-10-09'); 
insert into Pessoa values (null,'Pateta', '1956-10-09');