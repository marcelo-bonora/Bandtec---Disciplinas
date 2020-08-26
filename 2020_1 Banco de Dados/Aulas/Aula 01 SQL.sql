 -- Criando o banco de dados aluno
create database aluno;
-- selecione o banco de dado aluno
use aluno;
-- Cria a tabela do aluno
create table Aluno (
ra int primary key, -- ra é a chave primária da Aluno
nome varchar(50),
bairro varchar(40)
);

-- Exibir os dados da tabela Aluno
select * from Aluno;

-- Exibir a descrição da tabela Aluno
desc Aluno;
describe Aluno; -- describe e desc são o mesmo comando

-- inserir dados de um aluno
insert into Aluno value
(2201063, 'Luidgi Campos', 'Cerâmica');

-- Inserir dados de demais alunos
insert into Aluno values
(2201000, 'Marcelo Vitor','Parques da Nações');

insert into Aluno values
(2201004, 'Anderson Sartório', 'Parques da Nações');

-- Exibir apenas o ra e nome dos alunos
select ra, nome from Aluno;

-- Exibir apenas o ra dos alunos
select ra from Aluno;

-- Exibir na ordem que vc deseja
select nome, ra from Aluno;







-- Exibir os dados do aluno cujo RA = 2201000
select * from Aluno where ra = 2201000;

-- Exibir os dados dos alunos cujo o ra >= 2201000 o
select * from aluno where ra >= 2201000;
select * from aluno where ra <=2201004;

-- Exibir os dados dos alunos dujo bairro = 'Parques da Nações'
select * from aluno where bairro = 'Parques da Nações';

-- Exibir os dados dos alunos cujo bairro seja diferente de 'Parques da Nações'
select * from aluno where bairro <>'Parques da Nações';
-- Ou tbm...
select * from aluno where bairro !='Parques da Nações';

-- Exibir os dados dos alunos curjo RA esteja entre 2201000 e 2201063
select * from aluno where ra between 2201000 and 2201063;
-- ou tbm...
select * from aluno where ra >= 2201000 and ra <= 2201063;

-- Exibir os dados dos alunos cujo nome comece com a letra 'M'
select * from  aluno where nome like 'M%';

-- Exibir os dados dos alunos cujo o bairro comece com 'P'
select * from aluno where bairro like 'P%';

-- Exibir os dados dos alunos cujo nome termine com 'r'
select * from aluno where nome like '%r';

-- Exibir os dados dos alunos cujo nome contenha a letra 'a'
select * from aluno where nome like '%a%';

-- Exibir os bairro dos alunos cujio o bairro termine com 's'
select * from aluno where bairro like '%s';

-- Exibir os dados dos alunos cujo o sobrenome seja 'vitor'
select * from aluno where nome like '%vitor%';

-- Exibir os dados dos alunos cujo nome tenha a letra 'a' como 2a letra
select * from aluno where nome like '_a%';

-- Exibir os dados dos alunos cujo bairro tenha a letra 'õ' como a 3a letra de trás pra frente
select * from aluno where bairro like '%õ__';

-- Exibir os dados dos alunos ordenados pelo nome
select * from aluno order by nome;

-- Exibir os dados dos alunos ordenados pelo bairro
select * from aluno order by bairro;

-- Exibir os dados dos alunos oredenados pelo nome do 'Z' para o 'A'
select * from aluno order by nome desc;

-- Alterar o bairro do aluno de ra = 2201000 para 'Vila suiça'
update aluno set bairro = 'Vila suiça' where ra = 2201000;

-- Alterar o bairro para Paraiso e o nome para Anderon de Sá do aluno de ra = 2201004 
update aluno set bairro = 'Paraiso', nome = 'Anderson de Sá' where ra = 2201004;

-- Excluir o aluno de ra = 2201063
delete from aluno where ra = 2201063;

-- Excluir a tabela do aluno





