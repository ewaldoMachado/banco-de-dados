-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Tempo de geração: 12/01/2024 às 17:46
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. Siga as instruções:
--
-- Banco de dados: `escola`

-- crie uma base de dados;
CREATE DATABASE `escola` 

-- --------------------------------------------------------
-- crie tabelas nessa base de dados;
USE `escola` 
--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `matricula` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` int(11) NOT NULL,
  `disciplina_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id_disciplina` int(11) NOT NULL,
  `nome_disciplina` varchar(50) NOT NULL,
  `nome_professor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--

-- Em cada tabela, adicione atributos;

-- Inserindo dados para a tabela `aluno`
--

INSERT INTO `aluno` (`matricula`, `id`, `email`, `nome`, `endereco`, `telefone`, `disciplina_id`) VALUES
(1234, 1, 'jcarlos@gmail.com', 'João Carlos', 'Rua 13 de maio', 1178254489, 2),
(2345, 2, 'jvitor@gmail.com', 'José Vitor', 'Rua da saudade', 1178256589, 1),
(3456, 3, 'pandr@gmail.com', 'Paulo André', 'Rua do sol', 1178254495, 3),
(4567, 4, 'cleiton@gmail.com', 'Cleiton Santos', 'Rua 2', 2147483647, 2),
(5678, 5, 'gabi@gmail.com', 'Gabi Amaranto', 'Rua 2', 2132222222, 1),
(6789, 6, 'carol@gmail.com', 'Carol Silva', 'Rua das OLiveiras', 2134991234, NULL),
(7890, 7, 'ruan@gmail.com', 'Ruan Felix', 'Rua da Ladeira', 1195175364, 2),
(8901, 8, 'rian@gmail.com', 'Rian Francisco', 'Rua São Pedro', 1147581236, NULL),
(9012, 9, 'mia@gmail.com', 'Mia Maia', 'Rua Cat', 2147483647, 2),
(9123, 10, 'mader@gmail.com', 'Malu Mader', 'Rua Projaque', 2122334455, 1);

-- Inserindo dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id_disciplina`, `nome_disciplina`, `nome_professor`) VALUES
(1, 'Banco de dados', 'Maria Alves'),
(2, 'Python', 'Pietro Souza'),
(3, 'POO', 'Bia Tavares');

-- --------------------------------------------------------

--


--


--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_aluno_disciplinas` (`disciplina_id`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_aluno_disciplinas` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id_disciplina`);
COMMIT;


SELECT `nome`, `nome_disciplina` FROM `aluno` INNER JOIN
`disciplinas` ON `disciplinas.id_disciplina` = `aluno.id`




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
