create database AC3_Analista;
use AC3_Analista;
create table Empresa (
	idEmpresa int primary key auto_increment,
    nomeEmpresa varchar(45),
    dataFund date
    ) auto_increment = 10;
    
create table App (
	idApp int primary key auto_increment,
    nomeApp varchar(45),
    genero varchar(45)
    ) auto_increment = 100;
    
create table Analista (
	idAnalista int primary key auto_increment,
    nomeAnalista varchar(45),
    email varchar(45)
    ) auto_increment = 1000;
	
    
alter table App add fkEmpresa int;
alter table App add foreign key (fkEmpresa) references Empresa (idEmpresa);

create table AppAnalista (
	fkApp int,
    foreign key (fkApp) references App (idApp),
    fkAnalista int,
    foreign key (fkAnalista) references Analista (idAnalista),
    ganho int
    );
    
insert into Empresa values
	(null, 'Google', '1998-09-04'),
    (null, 'Facebook', '2004-02-04'),
    (null, 'YouTube', '2005-02-14');
    
insert into App values
	(null, 'Gmail', 'Email', 10),
    (null, 'Google Drive', 'Backup', 10),
    (null, 'Facebook', 'Rede Social', 11),
    (null, 'YouTube Music', 'Musica', 12);
    
insert into Analista values
	(null, 'Marcelo', 'marcelo.bonora@bandtec.com.br'),
    (null, 'Guilherme', 'guilherme@bandtec.com.br'),
    (null, 'Anderson', 'Anderson@bandtec.com.br');
    
insert into AppAnalista values
	(100, 1000, 1500),
    (101, 1000, 1600),
    (102, 1001, 2000),
    (103, 1002, 1900);
    
insert into AppAnalista values
	(100, 1001, 1500),
    (103, 1002, 1900); 
    
select * from Empresa;
select * from App;
select * from Analista;
select * from AppAnalista;

select * from Empresa, App where idEmpresa = fkEmpresa;

select * from Empresa, App where idEmpresa = fkEmpresa and IdEmpresa = 10;

select avg(ganho) as 'Média de ganho', sum(ganho) as 'Soma de ganho' from AppAnalista;
    
select min(ganho) as 'Menor  ganho', max(ganho) as 'Maior  ganho' from AppAnalista;    

select * from App, Analista, AppAnalista where idApp = fkApp and idAnalista = fkAnalista;

select * from App, Analista, AppAnalista where idApp = fkApp and idAnalista = fkAnalista and idApp = 103;

select * from App, Empresa, Analista, AppAnalista where idApp = fkApp and idAnalista = fkAnalista;

select NomeApp, avg(ganho) as 'Média dos ganhos', sum(ganho) as 'Soma dos ganhos' from AppAnalista, App where idApp = fkApp group by NomeApp;

select NomeAnalista, avg(ganho) as 'Média dos ganhos', sum(ganho) as 'Soma dos ganhos' from AppAnalista, Analista where idAnalista = fkAnalista group by NomeAnalista;

select NomeApp, min(ganho) as 'Menor  ganho', max(ganho) as 'Maior  ganho' from AppAnalista, App where idApp = fkApp group by NomeApp;

select NomeAnalista,  min(ganho) as 'Menor  ganho', max(ganho) as 'Maior  ganho' from AppAnalista, Analista where idAnalista = fkAnalista group by NomeAnalista;

