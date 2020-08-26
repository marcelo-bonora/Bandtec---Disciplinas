create database EscolaIdioma;
use EscolaIdioma;

	create table Aluno (
		ra int primary key  auto_increment,
		nomeAluno varchar(45),
		bairro varchar(45)
		) auto_increment = 1000;
    
create table Curso (
	idCurso int primary key auto_increment,
    nomeCurso varchar(45),
    coordenador varchar(45)
    );
    
-- Criar a tabela AlunoCurso associativa entre Aluno e Curso

create table AlunoCurso(
	fkRa int,
    foreign key (fkRa) references Aluno (ra),
    fkCurso int,
    foreign key (fkCurso) references Curso (idCurso),
    primary key (fkRa, fkCurso), -- Chave primaria composta pelas duas fks acima
    dataInicio date,
    nivel char(2),
    media decimal(3,1),
    check (media >= 0  and media <= 10)
    );
    
insert into Aluno values
	(null, 'Maria', 'Saúde'),
    (null, 'João', 'Consolação');
    
select * from Aluno;

insert into Curso values
	(null, 'Espanhol', 'Juan'),
    (null,'Inglês', 'Beth');
select * from Curso;

insert into AlunoCurso values
	(1000, 1, '2015-02-01', 'A1', 8.0),
    (1000, 2, '2017-02-01', 'I3', 9.0),
    (1001, 1, '2020-02-01', 'B1', 9.0),
    (1001, 2, '2019-02-01', 'I2', 7.0);
    
select * from AlunoCurso;

select * from Aluno, Curso, AlunoCurso where fkRA = ra and fkCurso = idCurso;

select * from Aluno, Curso, AlunoCurso where fkRA = ra and fkCurso = idCurso and nomeCurso = 'Espanhol';

select * from Aluno, Curso, AlunoCurso where fkRA = ra and fkCurso = idCurso and nomeAluno = 'Maria';

select sum(media) as 'soma das medias', avg(media) as 'media das medias' from AlunoCurso;

select max(media)  as 'Maior média', min(media) as 'Menor media' from AlunoCurso;

-- Agrupa por curso as medias
select max(media)  as 'Maior média', min(media) as 'Menor media' from AlunoCurso group by fkCurso;

-- Agrupa por curso as medias por idCurso
select fkCurso, max(media)  as 'Maior média', min(media) as 'Menor media' from AlunoCurso group by fkCurso;

-- Agrupa por curso as medias por nomeCurso
select nomeCurso, max(media)  as 'Maior média', min(media) as 'Menor media' from AlunoCurso, Curso where fkCurso = idCurso  group by fkCurso;

-- Agrupa por curso as medias agrupado por aluno
select nomeAluno, max(media)  as 'Maior média', min(media) as 'Menor media' from AlunoCurso, Aluno where fkRa = ra  group by fkRa;

-- Selecionar apenas as medias  dos aluno
select media from AlunoCurso;

-- Selecionar apenas as medias distintas (n se repetem) dos aluno
select distinct media from AlunoCurso;

-- Exibri a qtd de medias dos alunos
select count(media) as 'Qtd de media' from AlunoCurso;

-- Exibri a qtd de medias distintas dos alunos
select count(distinct media) as 'Qtd de media' from AlunoCurso;


    
    
    
    