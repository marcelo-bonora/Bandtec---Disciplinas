create database facBandtec;
use facBandtec;
-- Criar a tabela curso
create table curso (
	idCurso int primary key auto_increment,
	nomeCurso varchar(10),
	cordenador varchar(40)
	)auto_increment = 100;
-- Criar a tabela aluno , com uma coluna que será a chave entrangeira
-- que referencia a tablea curso
create table Aluno(
	ra int primary key auto_increment,
    nomeAluno varchar(40),
    bairro varchar(30),
    fkCurso int,
    foreign key(fkCurso) references curso(idCurso)
    )auto_increment = 50000;
select * from Aluno;
-- Inserção dos registros da tabela curso
insert into curso values 
	(null, 'CCO', 'Marise'),
	(null, 'ADS', 'Gerson'),
	(null, 'REDES', 'Alex');
select * from curso;
select * from Aluno;
-- Inserção dos registros da tabela Aluno
insert into Aluno values 
	(null, 'Maria', 'Saúde', 102),
	(null, 'José', 'Mooca', 101),
	(null, 'Mickey', 'Disney', 100),
	(null, 'Pateta', 'Orlando', 100),
	(null, 'Pedro', 'Tatuapé', 102);
-- Exibir os dados dos Alunos e dos cursos correspondentes 
-- ESSE É O JEITO ERRADO!!!!!!!
select * from Aluno, curso;
-- ESSE É O JEITO CERTO!!!!!!!
select * from Aluno, curso where fkCurso = idCurso;
-- Exibir os dados dos Alunos e dos cursos correspondentes 
-- Mas somente do 'CCO'
select * from Aluno, curso where fkCurso = idCurso and nomeCurso = 'CCO';
-- Exibir os dados dos Alunos e dos cursos correspondentes 
-- Mas somente do curso cuko  nome termina em 'S'
select * from Aluno, curso where fkCurso = idCurso and nomeCurso like '%S';
-- idem ao comando anterior, mas sem aparecer 2 vezes o valor do fkCurso 
select Aluno. *, nomeCurso, cordenador from Aluno, curso where fkCurso = idCurso and nomeCurso like '%S';
-- Altera o nome da coluna sem alterar na estrutura da coluna, apenas no select
select Aluno. *, nomeCurso as 'Nome do curso', cordenador as cordenadorCurso from Aluno, curso where fkCurso = idCurso and nomeCurso like '%S';




