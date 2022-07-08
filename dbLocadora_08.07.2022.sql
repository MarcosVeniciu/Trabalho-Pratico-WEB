-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 08/07/2022 às 15:01
-- Versão do servidor: 10.4.24-MariaDB
-- Versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbLocadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbCategorias`
--

CREATE TABLE `tbCategorias` (
  `idCategoria` int(11) NOT NULL,
  `nomeCategoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tbCategorias`
--

INSERT INTO `tbCategorias` (`idCategoria`, `nomeCategoria`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Ficção Cientifica'),
(4, 'Terror'),
(5, 'Suspense');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbFilmes`
--

CREATE TABLE `tbFilmes` (
  `idFilme` int(11) NOT NULL,
  `tituloFilme` varchar(120) NOT NULL,
  `duracaoFilme` varchar(10) DEFAULT NULL,
  `valorLocacao` decimal(10,3) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `quantidadeDisponivel` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tbFilmes`
--

INSERT INTO `tbFilmes` (`idFilme`, `tituloFilme`, `duracaoFilme`, `valorLocacao`, `idCategoria`, `quantidadeDisponivel`) VALUES
(1, 'Capitão América: O primeiro Vingador (2011)', '2h04m', '15.000', 3, NULL),
(2, 'Capitã Marvel (2019)', '2h04m', '15.000', 3, NULL),
(3, 'O Incrível Hulk (2008)', '1h52m', '15.000', 3, NULL),
(4, 'Homem de Ferro (2008)', '2h06m', '15.000', 3, NULL),
(5, 'Homem de Ferro 2 (2010)', '2h05m', '15.000', 3, NULL),
(6, 'Thor (2011)', '1h54m', '15.000', 3, NULL),
(7, 'Os Vingadores (2012)', '2h23m', '12.000', 3, NULL),
(8, 'Homem de Ferro 3 (2013)', '2h10m', '12.000', 3, NULL),
(9, 'Thor: O Mundo Sombrio (2013)', '1h52m', '12.000', 3, NULL),
(10, 'Capitão América: O Soldado Invernal (2014)', '2h16m', '12.000', 3, NULL),
(11, 'Guardiões da Galáxia (2014)', '2h02m', '12.000', 3, NULL),
(12, 'Guardiões da Galáxia Vol. 2 (2017)', '2h17m', '12.000', 3, NULL),
(13, 'Vingadores: Era de Ultron (2015)', '2h21m', '15.000', 3, NULL),
(14, 'Homem-Formiga (2015)', '1h58m', '12.000', 3, NULL),
(15, 'Capitão América: Guerra Civil (2016)', '2h28m', '21.000', 3, NULL),
(16, 'Pantera Negra (2018)', '2h15m', '21.000', 3, NULL),
(17, 'Homem-Aranha: De Volta ao Lar (2017)', '2h13m', '21.000', 3, NULL),
(18, 'Viúva Negra (2021)', '2h13m', '21.000', 3, NULL),
(19, 'Doutor Estranho (2016)', '1h55m', '21.000', 3, NULL),
(20, 'Thor: Ragnarok (2017)', '2h10m', '21.000', 3, NULL),
(21, 'Homem-Formiga e a Vespa (2018)', '1h58m', '21.000', 3, NULL),
(22, 'Vingadores: Guerra Infinita (2018)', '2h29m', '21.000', 3, NULL),
(23, 'Vingadores: Ultimato (2019)', '3h02m', '21.000', 3, NULL),
(24, 'Shang-Chi e a Lenda dos Dez Aneis (2021)', '2h12m', '21.000', 3, NULL),
(25, 'Eternos (2021)', '2h37m', '21.000', 3, NULL),
(26, 'Homem-Aranha: Longe de Casa (2019)', '2h10m', '21.000', 3, NULL),
(27, 'Homem-Aranha: Sem Volta para Casa (2021)', '2h28m', '21.000', 3, NULL),
(28, 'Doutor Estranho no Multiverso da Loucura (2022)', '2h06m', '15.000', 3, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbLocacao`
--

CREATE TABLE `tbLocacao` (
  `idLocacao` int(11) NOT NULL,
  `tituloFilme` varchar(120) NOT NULL,
  `valorLocacao` decimal(6,2) NOT NULL,
  `dataLocacao` datetime NOT NULL,
  `idFilme_pk` int(11) NOT NULL,
  `idUsuario_pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tbLocacao`
--

INSERT INTO `tbLocacao` (`idLocacao`, `tituloFilme`, `valorLocacao`, `dataLocacao`, `idFilme_pk`, `idUsuario_pk`) VALUES
(1, 'Capitão América: O Primeiro Vingador', '22.50', '2020-02-22 00:00:00', 1, 1),
(2, 'Capitã Marvel (2019)', '25.50', '2022-03-24 00:00:00', 2, 2),
(3, 'O Incrível Hulk (2008)', '27.75', '2022-05-06 00:00:00', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbUsuario`
--

CREATE TABLE `tbUsuario` (
  `idUsuario` int(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `senha` varchar(120) NOT NULL,
  `dataRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tbUsuario`
--

INSERT INTO `tbUsuario` (`idUsuario`, `email`, `senha`, `dataRegistro`) VALUES
(1, 'Gabriel@gmail.com', '3857', '2022-07-08 00:00:00'),
(2, 'Marcos@gmail.com', '3016', '2022-05-02 00:00:00'),
(3, 'Altamiro@gmail.com', '3477', '2022-02-09 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbCategorias`
--
ALTER TABLE `tbCategorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Índices de tabela `tbFilmes`
--
ALTER TABLE `tbFilmes`
  ADD PRIMARY KEY (`idFilme`);

--
-- Índices de tabela `tbLocacao`
--
ALTER TABLE `tbLocacao`
  ADD PRIMARY KEY (`idLocacao`),
  ADD UNIQUE KEY `tituloFilme` (`tituloFilme`),
  ADD KEY `idFilme_pk` (`idFilme_pk`),
  ADD KEY `idUsuario_pk` (`idUsuario_pk`);

--
-- Índices de tabela `tbUsuario`
--
ALTER TABLE `tbUsuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbCategorias`
--
ALTER TABLE `tbCategorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbFilmes`
--
ALTER TABLE `tbFilmes`
  MODIFY `idFilme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `tbLocacao`
--
ALTER TABLE `tbLocacao`
  MODIFY `idLocacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbUsuario`
--
ALTER TABLE `tbUsuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbLocacao`
--
ALTER TABLE `tbLocacao`
  ADD CONSTRAINT `tbLocacao_ibfk_1` FOREIGN KEY (`idFilme_pk`) REFERENCES `tbFilmes` (`idFilme`),
  ADD CONSTRAINT `tbLocacao_ibfk_2` FOREIGN KEY (`idUsuario_pk`) REFERENCES `tbUsuario` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
