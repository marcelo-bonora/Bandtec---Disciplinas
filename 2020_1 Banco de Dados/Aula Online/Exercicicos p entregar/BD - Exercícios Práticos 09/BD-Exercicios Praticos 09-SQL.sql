create database PraticaFuncionario;
use PraticaFuncionario;

create table setor(
	idSetor int primary key auto_increment,
    nomeSetor varchar(45),
    nAndar int
    ) auto_increment = 100;
    
create table funcionario(
	idFuncionario int primary key,
    nomeFuncionario varchar(45),
    celFone varchar(45),
    salario decimal(8,2),
    check (salario >0),
    fkSetor int,
    foreign key (fkSetor) references setor (idSetor)
    );
    
	create table acompanhante(
		fkFuncionario int,
        foreign key (fkFuncionario) references funcionario (idFuncionario),
		idAcompanhante int,
        primary key (fkFuncionario, idAcompanhante),
        nomeAcompanhante varchar(45),
        relação varchar(45),
        dataNasc date
        );
  
insert into setor values
	(null, "suporte", "2"),
    (null, "desenvolvimento", "3");
    
insert into funcionario values
	(1, "Marcelo", "(11)98667-9909", 3000.00, 100),
    (2, "Guilherme", "(11)91745-0990", 2000.00, 100),
    (3, "Anderson", "(11)92347-1348", 2900.00, 101);
    
insert into acompanhante values
	(1, 1, "Vick", "namorada",  "2002-05-23"),
    (1, 2, "Edilania", "mãe", "1975-02-01"),
    (2, 1, "Leticia", "namorada", "2001-04-06");
    
select * from setor, funcionario where idSetor = fkSetor;

select * from setor, funcionario where idSetor = fkSetor and nomeSetor = "suporte";

select * from acompanhante, funcionario where idFuncionario = fkFuncionario;

select * from acompanhante, funcionario where idFuncionario = fkFuncionario and nomeFuncionario = "Marcelo";

select * from setor, funcionario, acompanhante where idSetor = fkSetor and idFuncionario = fkFuncionario;

select sum(salario) from funcionario;
select sum(salario) as total_salario from funcionario;
select sum(salario) as 'total dos salários' from funcionario;

select avg(salario) from funcionario;
select avg(salario) as 'media dos salarios' from funcionario;

select sum(salario) as 'total dos salários', avg(salario) as 'media dos salarios' from funcionario where salario > 2000;

select max(salario) as 'maior salario', min(salario) as 'menor salario' from funcionario;

select count(salario) as 'quantidade de salarios cadastrados' from funcionario;

select count(salario) as 'quantidade de salarios cadastrados' from funcionario where salario < 3000;
		
    