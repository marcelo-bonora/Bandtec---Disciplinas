create database AlunoProjeto;
use AlunoProjeto;

create table aluno (
	ra int primary key auto_increment,
    nomeAluno varchar(40),
    telefoneFixo int,
    telefoneCel int,
    fkRepresentante int, foreign key (fkRepresentante) references aluno (ra)
    ) auto_increment = 100;

create table projeto (
	idProjeto int primary key auto_increment,
    nomeProjeto varchar(40),
    descrição varchar(100)
    );
    
create table acompanhates (
	idAcompanhante int primary key auto_increment,
    relação varchar(20),
    nomeAcompanhante varchar(40)
	) auto_increment = 1000;
    

insert into aluno values
	(null, 'aluno 1', 11111111, 911111111, null),
    (null, 'aluno 2', 22222222, 922222222, null),
    (null, 'aluno 3', 11111111, 922222222, null);
insert into aluno values
	(null, 'aluno 4', 44444444, 944444444, 100),
    (null, 'aluno 5', 55555555, 955555555, 101),
    (null, 'aluno 4', 66666666, 966666666, 102);

insert into projeto values
	(null, 'projeto 1', 'descrição 1'),
    (null, 'projeto 2', 'descrição 2'),
    (null, 'projeto 3', 'descrição 3');

insert into acompanhates values
	(null, 'pai', 'acompanhante 1'), 
    (null, 'mae', 'acompanhante 2'),
    (null, 'irmão', 'acompanhante 3'),
    (null, 'primo', 'acompanhante 4');
    
alter table aluno add column fkProjeto int; 
alter table aluno add column fkAcompanhates int; 
alter table aluno add foreign key (fkProjeto) references projeto (idProjeto);
alter table aluno add foreign key (fkAcompanhates) references acompanhates (idAcompanhante);

update aluno set fkProjeto = 1  where ra = 100;
update aluno set fkProjeto = 2  where ra = 101;
update aluno set fkProjeto = 3  where ra = 102;
update aluno set fkProjeto = 1  where ra = 103;
update aluno set fkProjeto = 2  where ra = 104;
update aluno set fkProjeto = 3  where ra = 105;

update aluno set fkAcompanhates = 1000  where ra = 100;
update aluno set fkAcompanhates = 1001  where ra = 101;
update aluno set fkAcompanhates = 1002  where ra = 102;
update aluno set fkAcompanhates = 1003  where ra = 103;
    
    


select * from projeto;
select * from acompanhates;
select * from aluno;

select * from aluno, projeto where fkProjeto = idProjeto;
select * from aluno, acompanhates where fkAcompanhates = idAcompanhante;
select * from aluno as f, aluno as s where f.fkRepresentante = s.ra;
select * from aluno, projeto where fkProjeto = idProjeto and nomeProjeto = 'projeto 1';

select * from aluno, projeto, acompanhates where 
fkProjeto = idProjeto and fkAcompanhates = idAcompanhante;



    
	
    