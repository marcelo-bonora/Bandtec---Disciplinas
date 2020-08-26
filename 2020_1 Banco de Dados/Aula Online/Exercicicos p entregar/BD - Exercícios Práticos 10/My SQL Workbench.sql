create database Projetos;
use Projetos;

create table Grupo (
	idGrupo int primary key auto_increment,
    nomeGrupo varchar(45),
    descrição varchar(45)
    );

create table Aluno (
	ra int primary key,
    nomeAluno varchar(45),
    email varchar(45),
    fkGrupo int,
    foreign key (fkGrupo) references Grupo (idGrupo)
    );
    
create table Prof (
	idProf int primary key auto_increment,
    nomeProf varchar(45),
    disciplina varchar(45)
    ) auto_increment = 10000;

create table GrupoProf (
	fkProf int,
    foreign key (fkProf) references prof (idProf),
    fkGrupo int,
    foreign key (fkGrupo) references Grupo (idGrupo),
    dataHorario datetime,
    nota decimal(3,1)
    );
    
insert into Grupo values 
	(null, 'Tranfornel', 'Controle temp. em tranformadores elétr.'),
    (null, 'Control Dump', 'Controle de umidade em maquinas textil');
    
insert into Aluno values 
	(02201000, 'Marcelo V.', 'marcelo.bonora@bandtec.com.br', 2),
    (02201001, 'Bruna', 'bruna@bandtec.com.br', 2),
    (02201002, 'Guilherme', 'guilherme@bandtec.com,br', 2),
    (02201003, 'Luan', 'luan@bandtec.com.br', 1),
    (02201004, 'Catarina', 'catarina@bandtec.com.br', 1),
    (02201005, 'Juse', 'juse@bandtec.com.br', 1);

insert into Prof values 
	(null, 'Yoshi', 'Algoritmo'),
    (null, 'Frizza', 'Tecnologia da Informação'),
    (null, 'Brandão', 'Pesquisa e Inovação');
    
insert into GrupoProf values 
	(10000, 1, '2020-05-11 12:00:00', 9.0),
    (10001, 1, '2020-05-11 12:00:00', 10.0),
    (10002, 1, '2020-05-11 12:00:00', 9.0),
    (10000, 2, '2020-05-11 12:50:00', 8.0),
    (10001, 2, '2020-05-11 12:50:00', 7.0),
    (10002, 2, '2020-05-11 12:50:00', 6.5);

select * from Grupo;
select * from Aluno;
select * from Prof;
select * from GrupoProf;

select * from Grupo, Aluno where fkGrupo = idGrupo;

select * from Grupo, Aluno where fkGrupo = idGrupo and nomeGrupo = "Control Dump";

select avg(nota) as 'Media geral das notas' from GrupoProf;

select max(nota) as 'Nota maxima geral', min(nota) as 'Nota minima geral' from GrupoProf;

select sum(nota) as 'Soma das notas no geral' from GrupoProf;

select * from Prof, Grupo, GrupoProf where idProf = fkProf and idGrupo = fkGrupo;
    
select * from Prof, Grupo, GrupoProf where idProf = fkProf and idGrupo = fkGrupo and idGrupo = 1;

select * from Prof, Grupo, GrupoProf where idProf = fkProf and idGrupo = fkGrupo and idProf = 10002;

select * from Grupo as g, Aluno as a, Prof, GrupoProf as gp where g.idGrupo = a.fkGrupo and  g.idGrupo = gp.fkGrupo and idProf = fkProf;

select count(distinct nota) as 'Qtd de notas distintas' from GrupoProf;

select nomeProf, avg(nota) as 'Média das notas', sum(nota) as 'Soma das notas' from GrupoProf, Prof where idProf = fkProf group by nomeProf;

select nomeGrupo, avg(nota) as 'Média das notas', sum(nota) as 'Soma das notas' from GrupoProf, Grupo where idGrupo = fkGrupo group by nomeGrupo;

select nomeProf, max(nota) as 'Maior nota', min(nota) as 'Menor nota' from GrupoProf, Prof where idProf = fkProf group by nomeProf;

select nomeGrupo, max(nota) as 'Maior nota', min(nota) as 'Menor nota' from GrupoProf, Grupo where idGrupo = fkGrupo group by nomeGrupo;


  
