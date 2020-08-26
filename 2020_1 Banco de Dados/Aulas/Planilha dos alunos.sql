create database Planilha;
use planilha;
create table alunos (
ra int primary key,
nome varchar(50),
telefone varchar(50),
email varchar(50),
instituição varchar(50),
empresa varchar(50),
hobby varchar(50)
);

create table instituição (
idInstituição int primary key,
nome varchar(50),
cidade varchar(50)
);

create table empresa (
idEmpresa int primary key,
nome varchar(50),
representante varchar(50)
);

insert into alunos values
(2201018,'Guilherme de Sá','(11)954018429', 'guilherme_sa@hotmail.com', 'i1',1, 'ouvir musica'),
(2201000,'Marcelo Vitor','(11)986679909', 'marcelo_bonora@hotmail.com', 'i1',2, 'jogos'),
(2201004, 'Anserson Sartório', '(11)970917654', 'Anderson_sartorio@hotmail.com','i1',2,'filmes'),
(2201019, 'Gabriel Santos', '(11)973412084', 'gabriel_santos@hotmail.com','i1',3, 'desenhar'),
(2201024, 'Giulia Lima','(11)904631858', 'giulia_lima@hotmail.com', 'i2',3, 'ler');

insert into instituição values
('1','Inah de Mello','Santo André'),
('2','ETEC Jorge Stret', 'São Caetano');

select * from alunos;

select * from instituição;

insert into empresa values
(1,'Accenture', 'Thiago'),
(2,'Safra', 'Pedro'),
(3,'C6Bank', 'Laura'),
(4,'PayGo', 'Guilherme');

select * from empresa;


