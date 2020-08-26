create database PetShop;
use PetShop;
create table Pets (
	idPets int primary key auto_increment,
    tipo varchar(40),
    nomePets varchar(40),
    raça varchar(40),
    dataNascimento date
    ) auto_increment=101; 

create table Clientes (
	idCliente int primary key auto_increment,
    primeiroNome varchar(40),
    segundoNome varchar (40),
    tefefoneFixo int,
    telefoneCel int,
    estado varchar(40),
    cidade varchar(40),
    bairro varchar(40),
    rua varchar (40),
    nº int
	);
    
select * from Pets;
desc pets;
    
select * from clientes;
desc clientes;

insert into Pets values
	(null, 'gato', 'rachado', 'vira-lata', '2018-05-01'),
    (null, 'cachorro', 'bob', 'vira-lata', '2015-01-01'),
    (null, 'gato', 'black', 'munchkin ', '2001-06-01'),
    (null, 'cachorro', 'urso', 'boxer', '2010-05-23'),
    (null, 'sapo', 'frog', 'sapo-verde', '2010-01-01');
    
insert into Clientes values
	(null, 'Carlos', 'Silva', 1111-1111, 91111-1111, 'SP', 'Santo André', 'Pq. das Nações', 'R. Timor', 412),
    (null, 'Anderso', 'Sartório', 2222-2222, 92222-2222, 'SP', 'Santo André', 'Pq. Oratório', 'Alemanha', 302),
    (null, 'Marcelo', 'Bonora', 3333-3333, 93333-3333, 'SP', 'Santo André', 'Vila Suiça', 'Australia', 72),
    (null, 'Gabriel', 'Silva', 4444-4444, 94444-4444, 'SP', 'São Mateus', 'Capão Redondo', 'Mexico', 98);
    
alter table Pets add fkPets int;
alter table Pets add foreign key (fkPets) references Clientes(idCliente);

update Pets set fkPets = 1 where  idPets = 101;
update Pets set fkPets = 2 where  idPets = 102;
update Pets set fkPets = 3 where  idPets in (103, 104);
update Pets set fkPets = 4 where  idPets = 105;

select * from Pets;
select * from clientes;

alter table clientes modify column primeiroNome varchar(99);

select * from pets where tipo = 'gato';

select nomePets, dataNascimento from pets;

select * from Pets order by nomePets;

select * from Clientes order by  bairro desc;

select * from Pets where nomePets like 'b%';

select * from Clientes where segundoNome like 'Silva';

update Clientes set tefefoneFixo = 55555555 where idCliente = 4;
select * from Clientes where idCliente = 4;

select * from Pets, Clientes where fkPets = idCliente;

select * from Pets, Clientes where fkPets = idCliente and primeiroNome like 'Marcelo';

delete from Pets where idPets = 104;
select * from Pets;

drop table Pets;
drop table Clientes;