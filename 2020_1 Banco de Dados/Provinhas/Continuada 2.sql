create database Hospital;
use Hospital;

create table hospital (
	idHospital int primary key auto_increment,
    nomeHospital varchar(40),
    leitos int,
    rua varchar(40),
    bairro varchar(40)
    )auto_increment = 1;
    
create table enfermeiro (
	idEnfermeiro int primary key auto_increment,
    nomeEnfermeiro varchar(40),
    telefoneFixo int,
    telefoneCel int,
    dataContratação date
    ) auto_increment = 200;
    

alter table enfermeiro add fkOrientador int;
alter table enfermeiro add foreign key (fkOrientador) references enfermeiro (idEnfermeiro);

alter table enfermeiro add fkHospital int;
alter table enfermeiro add foreign key (fkHospital) references hospital (idHospital);

select * from hospital;
select * from enfermeiro; 
desc enfermeiro;

insert into hospital values
	(null, 'Bangu', 30, 'R. Avaré' ,'Vila Sao Pedro'),
    (null, 'Hospital Bartira', 40, 'Av. Alfredo Maluf','Vila Alto de Santo Andre'),
    (null, 'Hospital da Mulher', 80, 'R. América do Sul', 'Parque Novo Oratório');
    
insert into enfermeiro values
	(null, 'Guilherme',1153872849, 953872849, '2019-06-01', null, 1),
    (null, 'Anderson',null, 999442704, '2019-12-20', null, 2),
    (null, 'Gabriel',1144783435, null, '2019-05-01', null, 3);
    
insert into enfermeiro values
	(null, 'Thiago',1144998877,990807060, '2020-06-01', 200, 1),
    (null, 'Pedro',1144764365,null, '2020-12-20', 201, 2);
    
select * from hospital;
select * from enfermeiro; 

select * from hospital, enfermeiro where idHospital = fkHospital;

select * from hospital, enfermeiro where idHospital = fkHospital and nomeHospital = 'Bangu';

select * from  enfermeiro as f, enfermeiro as s where f.fkOrientador = s.idEnfermeiro;

select * from  enfermeiro as f, enfermeiro as s where f.fkOrientador = s.idEnfermeiro and s.nomeEnfermeiro = 'Guilherme'; 

select * from hospital,  enfermeiro as f, enfermeiro as s where f.fkOrientador = s.idEnfermeiro and f.fkHospital = idHospital;

select * from hospital,  enfermeiro as f, enfermeiro as s where f.fkOrientador = s.idEnfermeiro and f.fkHospital = idHospital and f.nomeEnfermeiro = 'Thiago';