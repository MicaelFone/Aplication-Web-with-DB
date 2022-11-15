-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Nov-2022 às 15:51
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `streaming`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `producao`
--

CREATE TABLE `producao` (
  `Id_producao` int(11) NOT NULL,
  `Nome_producao` varchar(100) NOT NULL,
  `Descricao_sobre_a_producao` text DEFAULT NULL,
  `Id_tipo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `producao`
--

INSERT INTO `producao` (`Id_producao`, `Nome_producao`, `Descricao_sobre_a_producao`, `Id_tipo`) VALUES
(15, 'Sherlock Holmes 2', 'Filme de aventura e mistério', 1),
(16, 'Friends', 'Série sobre 4 amigos', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `producaotipo`
--

CREATE TABLE `producaotipo` (
  `Id_tipo` int(11) NOT NULL,
  `Nome_tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `producaotipo`
--

INSERT INTO `producaotipo` (`Id_tipo`, `Nome_tipo`) VALUES
(1, 'Filme'),
(2, 'Série'),
(3, 'Documentario');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `producao`
--
ALTER TABLE `producao`
  ADD PRIMARY KEY (`Id_producao`),
  ADD KEY `FK_ID_tipo` (`Id_tipo`);

--
-- Índices para tabela `producaotipo`
--
ALTER TABLE `producaotipo`
  ADD PRIMARY KEY (`Id_tipo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `producao`
--
ALTER TABLE `producao`
  MODIFY `Id_producao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `producaotipo`
--
ALTER TABLE `producaotipo`
  MODIFY `Id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `producao`
--
ALTER TABLE `producao`
  ADD CONSTRAINT `FK_ID_tipo` FOREIGN KEY (`Id_tipo`) REFERENCES `producaotipo` (`Id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
