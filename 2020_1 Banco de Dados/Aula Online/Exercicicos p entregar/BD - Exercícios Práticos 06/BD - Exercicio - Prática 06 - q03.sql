create database Gastos;
use Gastos;

create table Pessoa (
	idPessoa int primary key auto_increment,
    primeiroNome varchar(50),
    segundoNome varchar(50),
    dataNascimento date,
    profissão varchar(50)
    );

create table Gasto (
	idGasto int primary key auto_increment,
    dataGasto date,
    valor varchar(50),
    descrição varchar(50)
    );

insert into Pessoa values
	(null, 'Marcelo', 'Vitor', '2001-06-01', 'desempregado'),
    (null, 'Vinicius', 'Rodrigues', '1997-08-24', 'desempregado'),
    (null, 'Bianca', 'Rodrigues', '1996-04-04', 'RH'),
    (null, 'Edilania', 'Oliveira', '1974-02-01', 'tapeçeira'),
    (null, 'Marcelo', 'Bonora', '1970-01-31', 'tapeçeiro');

insert into Gasto values 
	(null, '2020-01-26', '200', 'Gasto Médico'),
    (null, '2020-02-15', '50', 'Ração pros Patos'),
    (null, '2020-03-20', '300', 'Concerto no carro'),
    (null, '2020-04-07', '500', 'Celular novo'),
    (null, '2020-05-06', '100', 'Plano de Internet');
    
alter table Gasto add fkGasto int;
alter table Gasto add foreign key (fkGasto) references Pessoa (idPessoa);

update Gasto set fkGasto = 1 where idGasto = 1;
update Gasto set fkGasto = 4 where idGasto = 2;
update Gasto set fkGasto = 5 where idGasto = 3;
update Gasto set fkGasto = 2 where idGasto = 4;
update Gasto set fkGasto = 3 where idGasto = 5;


select * from Pessoa;
select * from Gasto;
desc Gasto;

select * from Pessoa where profissão = 'desempregado';

select * from Gasto where valor = '200';

select * from Pessoa, Gasto where fkGasto = idPessoa;

select * from Pessoa, Gasto where fkGasto = idPessoa and idPessoa = 1;

update Pessoa set profissão = 'Cientista da Programação' where idPessoa = 1;
select* from Pessoa;

delete from Gasto where idGasto = 1; 
select * from Gasto;
    