create database Revista;
use Revista;
create table revista (
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
);
select * from revista;
insert into revista (idRevista, nome)  values 
	(null, 'Veja'),
	(null, 'Recreio'),
	(null, 'negocio'),
	(null, 'carros');
update revista set categoria = 'diversos' where idRevista = 1;
update revista set categoria = 'infantil' where idRevista = 2;
update revista set categoria = 'automoveis' where idRevista = 4;
select * from revista;
insert into revista values
	(null, 'cozinha', 'culinaria'),
    (null, 'futebol', 'esporte'),
    (null, 'ciencia', 'educação');
select * from revista;
desc revista;
alter table revista modify categoria varchar(40);
desc revista;
alter table revista add periocidade varchar(15);
select * from revista;
alter table revista drop periocidade;
select * from revista;
create table Editora (
idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFund date
)auto_increment = 1000;
select * from Editora;
alter table revista add fkEditora int;
alter table revista add foreign key (fkEditora) references Editora (idEditora);
insert into Editora values 
	(null, 'nome1', '1990.12.01'),
    (null, 'nome2', '2001.06.23'),
    (null, 'nome3', '2010.03.07');
select * from editora;
select * from revista;
update revista set fkEditora = 1000 where idRevista in (1, 11, 2);
update revista set fkEditora = 1001 where idRevista in (3, 10, 4);
update revista set fkEditora = 1002 where idRevista = 9;
select * from revista, Editora where idEditora = fkEditora;
select * from revista, Editora where idEditora = fkEditora and nomeEditora = 'nome2';

