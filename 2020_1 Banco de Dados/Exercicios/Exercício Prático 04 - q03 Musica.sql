create database Musica;
use Musica;
create table musica (
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);
insert into Musica values
(010, 'Natural', 'Imagine Dragons', 'Rock'),
(020, 'Roots', 'Imagine Dragons', 'Rock'),
(030, 'Thunder', 'Imagine Dragons', 'Rock'),
(040, 'Legend', 'The Score', 'Rock Alternativo'),
(050, 'Unstoppable', 'The Score', 'Rock Alternativo'),
(060, 'Menina Largata', 'Supercombo', 'Indie Rock'),
(070, 'Amianto', 'Supercombo', 'Indie Rock');

select * from Musica; -- a)	-- Para exibir a tabela coloque o nome que foi dado ao database 

select titulo, artista from musica; -- b)

select * from musica where genero = 'Rock'; -- c)

select * from musica where artista = 'supercombo'; -- d)
 
select * from musica order by titulo desc; -- e) Oder descrescente;
select * from musica order by titulo; -- Ordem crescente ;

select * from musica order by artista desc; -- f)

select * from musica where titulo like 'a%'; -- g) Ele n diferencia se a letra for minuscula ou maiuscula;

select * from musica where artista like '%o'; -- h)

select * from musica where genero like '_o%'; -- i)

select * from musica where titulo like '%t_'; -- j)

update musica set genero = 'Indie Rock' where idMusica = 070; -- k)
select * from Musica;

update musica set genero = 'Rock' where idMusica = 070;
select * from Musica;

alter table musica modify column titulo varchar(50); -- l) alterar o tipo de caracter de uma coluna
													 -- describe Musica; mostrar todas estrutura da tabela

delete from musica where idMusica = 030; -- m) deletaar uma linha da tabela
select *from musica;

drop database Musica; -- n) deletar o banco de dados

-- ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--
select * from Musica;
create table Album (
	idAlbum int primary key auto_increment,
    nomeAlbum varchar(40),
    gravadora varchar(40)
    );
select * from Album;
insert into Album values
	(null, 'Album1','Gravadora1'),
    (null, 'Album2','Gravadora2'),
    (null, 'Album3','Gravadora3');
alter table Musica add fkAlbum int;
alter table Musica add foreign key (fkAlbum) references Album (idAlbum);
update Musica set fkAlbum = 1 where idMusica in (10, 20);
update Musica set fkAlbum = 2 where idMusica in (40, 50);
update Musica set fkAlbum = 3 where idMusica in (60, 70);
select * from Musica, Album where idAlbum = fkAlbum;
select * from Musica, Album where idAlbum = fkAlbum and gravadora = 'Gravadora3';

    
