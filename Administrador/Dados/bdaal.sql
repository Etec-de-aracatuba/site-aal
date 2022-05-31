-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Maio-2022 às 23:19
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdaal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `academicos`
--

CREATE TABLE `academicos` (
  `IDacad` int(11) NOT NULL,
  `NomeAcademico` varchar(150) NOT NULL,
  `CadeiraAcademico` varchar(10) NOT NULL,
  `PosicaoAcademico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `IDeventos` int(11) NOT NULL,
  `NomeEvento` varchar(150) NOT NULL,
  `LocalEvento` varchar(250) NOT NULL,
  `DataEvento` date NOT NULL,
  `HoraEvento` varchar(10) NOT NULL,
  `DescEvento` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra`
--

CREATE TABLE `obra` (
  `IDobra` int(11) NOT NULL,
  `TituloObra` varchar(250) NOT NULL,
  `AutoresObra` text NOT NULL,
  `ComentarioObra` varchar(100) NOT NULL,
  `ImagemObra` varchar(200) NOT NULL,
  `IsbnObra` varchar(30) NOT NULL,
  `AnoObra` varchar(40) NOT NULL,
  `PaginasObra` varchar(5) NOT NULL,
  `ArqDowloadObra` varchar(200) NOT NULL,
  `LinkObra` varchar(200) NOT NULL,
  `GeneroObra` varchar(20) NOT NULL,
  `TextoObra` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacoes`
--

CREATE TABLE `publicacoes` (
  `IDpublicacao` int(11) NOT NULL,
  `TituloPub` varchar(250) NOT NULL,
  `AutoresPub` text NOT NULL,
  `GeneroPub` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `senha` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `telefone`, `senha`) VALUES
(1, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(2, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(3, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(4, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(5, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(6, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(7, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(8, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(9, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(10, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(11, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(12, 'Lucas', 'lucas@email.conm', '123123123', '123123'),
(13, 'Lucas', 'lucas@email.conm', '123123123', '123123123'),
(14, 'Lucas', 'gilvanjr306@gmail.com', '', '123123'),
(15, 'gilvan', 'gilvanjr306@gmail.com', '18965335666', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `academicos`
--
ALTER TABLE `academicos`
  ADD PRIMARY KEY (`IDacad`);

--
-- Índices para tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`IDeventos`);

--
-- Índices para tabela `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`IDobra`);

--
-- Índices para tabela `publicacoes`
--
ALTER TABLE `publicacoes`
  ADD PRIMARY KEY (`IDpublicacao`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `academicos`
--
ALTER TABLE `academicos`
  MODIFY `IDacad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `IDeventos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `obra`
--
ALTER TABLE `obra`
  MODIFY `IDobra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `publicacoes`
--
ALTER TABLE `publicacoes`
  MODIFY `IDpublicacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
