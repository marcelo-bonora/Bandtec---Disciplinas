create database	Continuada1;
use Continuada1;
create table Aplicativo (
idApp int primary key,
titulo varchar(40),
genero varchar(30),
empresa varchar(20)
);
insert into Aplicativo values
(100, 'LoL', 'jogo', 'riot games'),
(110, 'TFT', 'jogo', 'riot games'),
(120, 'YouTube', 'midia', 'YouTube'),
(130, 'Play Store', 'loja', 'Google'),
(140, 'Facebook', 'midia', 'Facebook'),
(150, 'word', 'educatico', 'Microsoft'),
(160, 'Messenger', 'bate-papo', 'Facebook');

select * from Aplicativo;

select titulo, empresa from Aplicativo;

select * from Aplicativo where empresa = 'riot games';

select * from Aplicativo where genero = 'midia';

select * from Aplicativo order by genero;

select * from Aplicativo order by titulo desc;

select * from Aplicativo where titulo like '%e';

select * from Aplicativo where genero like 'j%';

select * from Aplicativo where empresa like '_a%';

select * from Aplicativo where titulo like '%o_';

update Aplicativo set empresa = 'Google' where idApp = 140;
select * from Aplicativo;

delete from Aplicativo where idApp = 110;
select * from Aplicativo;

drop table Aplicativo;