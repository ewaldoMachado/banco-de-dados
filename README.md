# CRIAÇÃO DE BANCO DE DADOS  – JUNÇÕES DE TABELAS

- Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. Siga as instruções:

- crie uma base de dados; 
CREATE DATABASE escola;
USE escola;

- Crie tabelas nessa base de dados;
CREATE TABLE aluno ();
CREATE TABLE disciplinas ();

- Em cada tabela, adicione atributos;
ALTER TABLE aluno ADD 
id int (10) UNSIGNED PRIMARY KEY NOT NULL,
nome_aluno varchar (50) NOT NULL, 
matricula int(10) UNSIGNED NOT NULL,
endereco varchar(50) NOT NULL,
telefone int(11) NOT NULL,
disciplina_id int(11) DEFAULT NULL,
CONSTRAINT fk_aluno_disciplinas FOREIGN KEY (disciplina_id) REFERENCES disciplinas (id_disciplina);

ALTER TABLE disciplinas ADD 
id_disciplina int(11) NOT NULL,
nome_disciplina varchar(50) NOT NULL,
nome_professor varchar(50) NOT NULL

- Insira dados em cada tabela;
NSERT INTO aluno (id, nome_aluno, matricula, email, endereco, telefone, disciplina_id) VALUES
(1, 'João Carlos', 1234,'jcarlos@gmail.com', 'Rua 13 de maio', 1178254489, 2),
(2, 'José Vitor', 2345,'jvitor@gmail.com', 'Rua da saudade', 1178256589, 1),
(3, 'Paulo André', 3456,'pandr@gmail.com', 'Rua do sol', 1178254495, 3),
(4, 'Cleiton Santos', 4567,'cleiton@gmail.com',  'Rua 2', 2147483647, 2),
(5, 'Gabi Amaranto', 5678,'gabi@gmail.com', 'Rua 2', 2132222222, 1),
(6, 'Carol Silva', 6789,'carol@gmail.com', 'Rua das OLiveiras', 2134991234, NULL),
(7, 'Ruan Felix', 7890,'ruan@gmail.com', 'Rua da Ladeira', 1195175364, 2),
(8, 'Rian Francisco', 8901,'rian@gmail.com', 'Rua São Pedro', 1147581236, NULL),
(9, 'Mia Maia', 9012,'mia@gmail.com', 'Rua Cat', 2147483647, 2),
(10, 'Malu Mader', 9123, 'mader@gmail.com', 'Rua Projaque', 2122334455, 1);

INSERT INTO disciplinas (id_disciplina, nome_disciplina, nome_professor) VALUES
(1, 'Banco de dados', 'Maria Alves'),
(2, 'Python', 'Pietro Souza'),
(3, 'POO', 'Bia Tavares')


- Utilize os comandos Joins para realizar consultas nas tabelas. 

- INNER JOIN
SELECT nome_aluno AS ALUNO, nome_disciplina AS DISCIPLINA FROM aluno
INNER JOIN disciplinas
ON disciplinas.id_disciplina = aluno.disciplina_id

 

- LEFT JOIN
SELECT nome_aluno AS ALUNO, nome_disciplina AS DISCIPLINA FROM aluno
LEFT JOIN disciplinas
ON disciplinas.id_disciplina = aluno. disciplina_id

- RIGHT JOIN
SELECT nome_aluno AS ALUNO, nome_disciplina AS DISCIPLINA FROM aluno
RIGHT JOIN disciplinas
ON disciplinas.id_disciplina = aluno. disciplina_id
 
- LEFT JOIN UNION RIGHT JOIN
SELECT nome_aluno AS ALUNO, nome_disciplina AS DISCIPLINA FROM aluno
LEFT JOIN disciplinas
ON disciplinas.id_disciplina = aluno. disciplina_id
UNION
SELECT nome_aluno AS ALUNO, nome_disciplina AS DISCIPLINA FROM aluno
RIGHT JOIN disciplinas
ON disciplinas.id_disciplina = aluno. disciplina_id


SELECT * FROM aluno LEFT JOIN disciplinas
ON disciplinas.id_disciplina = aluno. disciplina_id
UNION
SELECT * FROM aluno
RIGHT JOIN disciplinas
ON disciplinas.id_disciplina = aluno. disciplina_id