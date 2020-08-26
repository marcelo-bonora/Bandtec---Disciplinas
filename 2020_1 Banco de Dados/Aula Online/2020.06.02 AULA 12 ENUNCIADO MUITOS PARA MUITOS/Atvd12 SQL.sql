create database Faculdade;
use Faculdade;

create table Aluno (
	ra int primary key  auto_increment,
	nomeAluno varchar(45),
    bairro varchar(45)
    ) auto_increment = 1000;
    
create table Disc (
	idDisc int primary key auto_increment,
    nomeDisc varchar(45)
    );
    
create table AlunoDisc (
	fkRa int,
    foreign key (fkRa) references Aluno (ra),
    fkDisc int,
    foreign key (fkDisc) references Disc (idDisc),
    perLetivo int,
    primary key (fkRa, fkDisc, perLetivo),
    media decimal(3,1),
    check (media >= 0  and media <= 10),
    qtdFalta int
    );
    
insert into Aluno values
	(null, 'Maria', 'Saúde'),
    (null, 'João', 'Consolação');
select * from Aluno;

insert into Disc values
	(null, 'Algoritmos'),
    (null, 'Banco de Dados');
select * from Disc;

insert into AlunoDisc values
	(1000, 1, 20201, 9.5, 1),
    (1000, 2, 20201, 4.0, 15),
    (1000, 1, 20202, 10.0, 0),
    (1000, 2, 20202, 8.0, 1),
    (1001, 1, 20201, 7.0, 3),
    (1001, 2, 20201, 8.0, 2);
select * from AlunoDisc;


select * from Aluno, Disc, AlunoDisc where fkra = ra and fkDisc = idDisc;

select * from Aluno, Disc, AlunoDisc where fkra = ra and fkDisc = idDisc and nomeDisc = 'Banco de Dados';

select * from Aluno, Disc, AlunoDisc where fkra = ra and fkDisc = idDisc and nomeAluno = 'Maria';

select sum(media) as 'soma das medias', sum(qtdFalta) as 'Soma das qtd.Faltas' from AlunoDisc;

select avg(media) as 'media das medias', avg(qtdFalta) as 'media das qtd.Faltas' from AlunoDisc;

select max(media) as 'Maior media', min(media) as 'Menor media' from AlunoDisc;

select max(qtdfalta) as 'Maior qtdFalta', min(qtdFalta) as 'Menor qtdFalta' from AlunoDisc;

select nomeDisc, max(media) as 'Maior media', min(media) as 'Menor media' from AlunoDisc, Disc where fkDisc = idDisc group by fkDisc;

select nomeAluno, max(media) as 'Maior media', min(media) as 'Menor media' from AlunoDisc, Aluno where fkRa = ra group by fkRa;

select media from AlunoDisc;

select distinct media from AlunoDisc;

select count(media) as 'Qtd de medias' from AlunoDisc;

select count(distinct media) as 'Qtd de medias' from AlunoDisc;










    

	