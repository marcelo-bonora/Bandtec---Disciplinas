create database serviços_iot;
use serviços_iot;

create table empresa (
	idEmpresa int primary key auto_increment,
    representante varchar(50),
    telefone varchar(50),
    estado varchar(50),
    cidade varchar(50),
    bairro varchar(50),
    rua varchar (50),
    nº int
    );
    
create table serviço (
	idServiço int primary key auto_increment,
    qtdSensores int
    ) auto_increment = 1000;

select * from empresa;
desc empresa;
select * from serviço;
desc serviço;

insert into empresa values 
	(null, 'repesentante 1 ', '1111-1111', 'SP', 'Santo André', 'Pq. das Nações', 'Timor', 412),
    (null, 'representante 2', '2222-2222', 'SP', 'São Matesu', 'Pq. são Rafael', 'Gatos', 72),
    (null, 'representante 3', '3333-3333', 'SP',  'Vila Suiça', 'Pq. Vila Verd', 'Rosas', 300); 
    
insert into serviço values
	(null, 20),
    (null, 45),
    (null, 70);
    
alter table empresa add fkEmpresa int;
alter table empresa add foreign key (fkEmpresa) references serviço (idServiço);

update empresa set fkEmpresa = 1002 where idEmpresa = 1;
update empresa set fkEmpresa = 1001 where idEmpresa = 3;
update empresa set fkEmpresa = 1000 where idEmpresa = 2;

alter table empresa modify column representante varchar (99);
desc empresa;

select * from empresa where rua = 'Timor';

select telefone, cidade from empresa;

select * from empresa order by bairro;

select * from empresa order by rua desc;

select * from empresa where cidade like 'S%';

update empresa set telefone ='9999-9999' where idEmpresa = 1;
select * from empresa;

select * from empresa, serviço where fkEmpresa = idServiço;
select * from empresa, serviço where fkEmpresa = idServiço and representante like 'representante 2';

delete from empresa where idEmpresa = 3;
select * from empresa;

drop table empresa;
drop table serviço;



