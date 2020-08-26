create database Prova_AC3_1;
use Prova_AC3_1;

create table laboratorio(
	idLaboratorio int primary key auto_increment,
	nomeLaboratorio varchar(50),
    email varchar(50)
    ) auto_increment = 100;
    
create table remedio(
	idRemedio int primary key auto_increment,
    nomeRemedio varchar(50),
    preço decimal(6,2),
    check (preço > 0)
    ) auto_increment = 1000;
    
alter table remedio add fkLaboratorio int;
alter table  remedio add foreign key (fkLaboratorio) references laboratorio (idLaboratorio);

create table lote (
	fkRemedio int,
    foreign key (fkRemedio) references remedio (idRemedio),
    idLote int,
    primary key (fkRemedio, idLote),
    quantidade int,
    dataFabri date
    );
    
insert into laboratorio values
	(null,"Lab-Cancer", "lab_cancer@gamil.com"),
    (null, "Lab-Covid-19", "lab_covid-19@gmail.com");
    
insert into remedio values
	(null, "Diprona", 100.00, 100),
    (null, "Pastilhas", 30.00, 101),
    (null, "Bepantol", 300.00, 100),
    (null, "Soro19", 250.00, 101);
    
select * from remedio;

insert into lote values
	(1000, 1, 100, "2020-05-26"),
    (1003, 1, 10000, "2020-04-30"),
	(1003, 2, 250, "2020-05-01"),
    (1001, 1, 30, "2019-09-23"),
    (1002, 1, 5000, "2020-01-30");

select * from remedio;
select * from lote;
select * from laboratorio;

select * from remedio, laboratorio where idLaboratorio = fkLaboratorio;

select * from remedio, laboratorio where idLaboratorio = fkLaboratorio and nomeLaboratorio = "Lab-Cancer";

select * from remedio, lote where idRemedio = fkRemedio;

select * from remedio, lote where idRemedio = fkRemedio and nomeRemedio = "Soro19";

select * from remedio, laboratorio, lote where idLaboratorio = fkLaboratorio and  idRemedio = fkRemedio;

select sum(quantidade) as "Qunatidade total de remedio", avg(quantidade) as "Média" from lote;

select max(quantidade) as "Maior lote", min(quantidade) as "Menor lote" from lote;

select count(preço) as "Qtd de remedios" from remedio;

select count(preço) as "Qtd de remedios" from remedio where preço < 200;

    