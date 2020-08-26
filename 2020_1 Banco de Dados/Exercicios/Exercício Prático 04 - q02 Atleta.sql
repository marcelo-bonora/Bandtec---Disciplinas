create database atleta;

use atleta;

create table atleta (
    id_atleta int primary key,
    nome varchar(40),
    modalidade varchar(40),
    qtdMedadalha int 
    );
insert into atleta values
	(1, 'luidgi', 'tenis', 0),
    (2, 'Claudio', 'Futebol', 2),
    (3,'Vicente','Levantamento de peso',7),
    (4,'Lucas','Xadrez',6),
    (5,'Duó','Ginástica Artística',11),
    (6,'Bonoro','Levantamento de peso',17);
select * from atleta;
select nome, qtdMedadalha from Atleta;
select * from atleta where modalidade ='tenis';
select * from atleta order by modalidade;
select * from atleta order by qtdMedadalha desc;
select * from atleta where nome like '%o%';
select * from atleta where nome like 'B%';
select * from atleta where nome like '%O';
select * from atleta where nome like '%r_';
update Atleta set qtdMedadalha = 4 where id_atleta = 1;
select * from atleta;

update Atleta set modalidade='Basket' where id_atleta=3; 
delete from Atleta where id_atleta = 3;
drop table Atleta;

-- ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--
select * from atleta;
create table Pais (
	idPais int primary key,
    nome varchar(50),
    capital varchar(50)
    );
select * from Pais;
insert into Pais values
	(11, 'Brasil', 'Brasilia'),
    (12, 'Suiça', 'Berna'),
    (14, 'Inglaterra', 'Londres'),
    (15, 'China', 'Pequim'),
    (16, 'Australia', 'Camberra');
select * from Pais;
alter table Atleta add fkPais int;
alter table Atleta add foreign key (fkPais) references Pais (idPais);
update Atleta set fkPais = 11 where id_atleta = 1;
update Atleta set fkPais = 12 where id_atleta = 2;
update Atleta set fkPais = 13 where id_atleta = 3;
update Atleta set fkPais = 14 where id_atleta = 4;
update Atleta set fkPais = 15 where id_atleta = 5;
update Atleta set fkPais = 16 where id_atleta = 6;
select * from Atleta, Pais where idPais = fkPais;
select * from Atleta, Pais where idPais = fkPais and Pais.nome = 'Brasil';

	