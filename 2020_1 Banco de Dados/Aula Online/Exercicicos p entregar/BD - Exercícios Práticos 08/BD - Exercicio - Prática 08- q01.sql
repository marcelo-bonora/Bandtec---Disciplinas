create database PraticarJogador;
use PraticarJogador;

create table Jogador (
	idJogador int primary key auto_increment,
    nomeJogador varchar(40),
    posição varchar(40),
    salário decimal (7,2),
    fkConselheiro int,
    foreign key (fkConselheiro) references Jogador (idJogador)
    ) auto_increment = 100;

select * from Jogador;

create table timeF (
	idTime int primary key auto_increment,
    nomeTime varchar(40),
    nomeTécnico varchar(40),
    dataFormação date
    ) auto_increment = 10;

select * from timeF;

create table Seguidor (
	fkJogador int,
    foreign key (fkJogador) references Jogador (idJogador),
    idSeguidor  int, 
    primary key (fkJogador, idSeguidor),
    nomeSeguidor varchar(40),
    nickName varchar(40),
    sexo char(1),
    check (sexo = 'm' or sexo = 'f' or sexo ='n')
    );
    
select * from Seguidor;

insert into Jogador values
    (null, 'Pelé', 'meia', 50000, null),
    (null, 'Mamoru Endo', 'goleiro', 00000, null);
    
insert into Jogador value
	(null, 'Lionel Messi', 'atacante', 20000, 105);

insert into Jogador values
	(null, 'Neymar', 'atacante', 30000, 111),
    (null, 'Cristiano Ronaldo', 'volante', 40000, 111);
    

insert into timeF values
	(null, 'Santos','Jesualdo Ferreira', '1912-04-14'),
    (null, ' Raimon ', ' Seigō Hibiki', '2008-05-15'),
    (null, 'Barcelona', 'Quique Setién', '1899-11-29'),
    (null, 'Juventus', 'Maurizio Sarri', '1897-11-01');
    
insert into Seguidor values 
	(106, 1, 'Marcelo', 'Chronostasis', 'm'),
    (106, 2, 'Anderson', 'Morsa', 'm'),
    (114, 1, 'Gabriel Santos', 'Tatsumakiel', 'm'),
    (105, 1, 'Guilherme', 'Cacnea', 'n');
    
alter table Jogador add fkTime int;
alter table Jogador add foreign key(fkTime) references timeF (idTime);

update Jogador set fkTime = 10 where idJogador in (105, 114);
update Jogador set fkTime = 11 where idJogador = 106 ;
update Jogador set fkTime = 12 where idJogador = 111 ;
update Jogador set fkTime = 13 where idJogador = 115 ;

select * from Jogador;
select * from timeF;
select * from Seguidor;

select nomeTécnico, nomeTime from timeF where nomeTime like 's%';

select * from Jogador order by nomeJogador desc;

select * from Jogador where posição ='goleiro';

select * from timeF where nomeTécnico like '%r_';

select * from timeF order by nomeTécnico;

select * from timeF order by dataFormação desc;

update Jogador set posição = 'zagueiro' where idJogador = 114;
select * from Jogador;

select * from Jogador, timeF where fkTime = idTime;

select * from Jogador, timeF where fkTime = idTime and nomeTime = 'Santos';

select * from Jogador as f, Jogador as s where f.fkConselheiro = s.idJogador;

select * from Jogador as f, Jogador as s, timeF where f.fkConselheiro = s.idJogador and f.fkTime = idTime;

select * from Jogador as f, Jogador as s, timeF where f.fkConselheiro = s.idJogador and f.fkTime = idTime and f.nomeJogador = 'Neymar';

select * from Jogador, Seguidor where idJogador = fkJogador;

select * from Jogador, Seguidor where idJogador = fkJogador  and nomeJogador = 'Mamoru Endo';

delete from Jogador where idJogador = 115;
select * from Jogador;

drop table Seguidor;
drop table Jogador;
drop Table timeF;


	

    