-- Cria o banco de dados aluno
create database aluno;

-- Seleciona o banco de dados aluno
use aluno;

-- Cria a tabela Aluno
create table Aluno (
  ra int primary key,  -- ra é a chave primária da tabela Aluno
  nome varchar(50),
  bairro varchar(40)
);

-- Exibir os dados da tabela Aluno
select * from Aluno;

-- Exibir a descrição da tabela Aluno
desc Aluno;
describe Aluno;  -- describe e desc são o mesmo comando

-- Inserir os dados de um aluno
insert into Aluno values
   (2201063, 'Luidgi Campos', 'Cerâmica');

-- Inserir dados de mais alunos
insert into Aluno values
   (2201014, 'Felipe Azevedo', 'Brooklin'),
   (2201037, 'Gabriel Rocha', 'Jd São Carlos'),
   (2201051, 'Thiago Yuiti', 'Oswaldo Cruz'),
   (2201043, 'Jennifer Silva', 'Jd Tereza');
   

-- Exibir apenas o ra e nome dos alunos
select ra, nome from Aluno;

-- Exibir apenas o ra dos alunos   
select ra from Aluno;

-- Exibir o nome e o ra dos alunos  
select nome, ra from Aluno;

-- Exibir o bairro, o nome e o RA dos alunos
select bairro, nome, ra from Aluno; 

-- Exibir os dados do aluno cujo RA = 2201043
select * from Aluno where ra = 2201043;

-- Exibir os dados dos alunos cujo RA >= 2201043
select * from Aluno where ra >= 2201043;

-- Exibir os dados dos alunos cujo bairro = 'Oswaldo Cruz'
select * from Aluno where bairro = 'Oswaldo Cruz';

-- Exibir os dados dos alunos cujo bairro seja diferente de 'Oswaldo Cruz'
select * from Aluno where bairro <> 'Oswaldo Cruz';
select * from Aluno where bairro != 'Oswaldo Cruz';

-- Exibir os dados dos alunos cujo RA esteja entre 2201043 e 2201063
select * from Aluno where ra between 2201043 and 2201063;
select * from Aluno where ra >= 2201043 and ra <= 2201063;

-- Exibir os dados dos alunos cujo nome comece com a letra 'G'
select * from Aluno where nome like 'G%';

-- Exibir os dados dos alunos cujo bairro comece com 'Jd'
select * from Aluno where bairro like 'Jd%';

-- Exibir os dados dos alunos cujo nome termine com 'a'
select * from Aluno where nome like '%a';

-- Exibir os dados dos alunos cujo nome contenha a letra 'a'
select * from Aluno where nome like '%a%';

-- Exibir os dados dos alunos cujo bairro termine com a letra 's'
select * from Aluno where bairro like '%s';

-- Exibir os dados dos alunos cujo sobrenome seja 'Silva'
select * from Aluno where nome like '%Silva';

-- Exibir os dados dos alunos cujo nome tenha a letra 'e' como 2a letra
select * from Aluno where nome like '_e%';

-- Exibir os dados dos alunos cujo bairro tenha a letra 'l' como 3a letra de trás pra frente
select * from Aluno where bairro like '%l__';

-- Exibir os dados dos alunos ordenados pelo nome
select * from Aluno order by nome;

-- Exibir os dados dos alunos ordenados pelo bairro
select * from Aluno order by bairro asc;

-- Exibir os dados dos alunos ordenados pelo nome do 'Z' para o 'A'
select * from Aluno order by nome desc;

-- Alterar o bairro do aluno de ra = 2201043 para 'Cerqueira César'
update Aluno set bairro = 'Cerqueira César' where ra = 2201043;

-- Alterar o bairro para Paraiso e o nome para Felipe Dias Azevedo
-- do aluno de ra = 2201014
update Aluno set bairro = 'Paraíso', nome= 'Felipe Dias Azevedo'
             where ra = 2201014;

-- Excluir o aluno de RA = 2201051
delete from Aluno where ra = 2201051;

-- Excluir a tabela Aluno
drop table Aluno;

-- Excluir o banco de dados aluno
drop database aluno;

-- ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, --
-- Isso é novo!
create table curso (
	idCurso int primary key auto_increment,
	nomeCurso varchar(10),
	cordenador varchar(40)
	)auto_increment = 100;
insert into curso values 
	(null, 'CCO', 'Marise'),
	(null, 'ADS', 'Gerson'),
	(null, 'REDES', 'Alex');
    
select * from aluno;
select * from curso;

-- Acrescentar na tabela 'aluno' a coluna fkCurso
alter table aluno add fkCurso int;
-- Configurar a coluna fkCurso pra ser chave estrangeira que se refenrencia a tabela curso
alter table aluno add foreign key (fkCurso) references Curso(idCurso);
-- Configurando valores para a coluna fkCurso dos registros já existentes
update aluno set fkCurso = 100 where ra>= 2201051;
update aluno set fkCurso = 101 where ra in (2201014, 2201043);
update aluno set fkCurso = 101 where ra = 2201037;
-- Inserindo mais de um aluno após a configuração da chave estrangeira 
insert into aluno values
	(2201006, 'Arthur Assis', 'Jd Vitoria Regia', 100);
-- Modificando a tabela seja 'auto_increment'
alter table aluno modify ra int auto_increment;
-- Inserindo mais um aluno
insert into  aluno  values 
	(null,'Mickey', 'Disney', 100);
-- Exibir dados dos alunos e cursos correspondentes 
select * from aluno, curso where idCurso = fkCurso;
-- Exibir os dados dos Alunos e dos cursos correspondentes 
-- Mas somente do 'CCO'
select * from Aluno, curso where fkCurso = idCurso and nomeCurso = 'CCO';

