-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Jan-2026 às 12:04
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `parque de estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

CREATE TABLE `carro` (
  `matricula` varchar(8) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`matricula`, `marca`, `modelo`, `cor`) VALUES
('AA11AA', 'Toyota', 'Yaris', 'Branco'),
('BB22BB', 'BMW', '320', 'Preto'),
('CC33CC', 'Audi', 'A3', 'Cinza'),
('DD44DD', 'Mercedes', 'A200', 'Azul'),
('EE55EE', 'Renault', 'Clio', 'Vermelho'),
('FF66FF', 'Peugeot', '208', 'Branco'),
('GG77GG', 'Ford', 'Focus', 'Preto'),
('HH88HH', 'Opel', 'Corsa', 'Cinza'),
('II99II', 'Tesla', 'Model 3', 'Branco'),
('JJ00JJ', 'Nissan', 'Leaf', 'Verde');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocupa`
--

CREATE TABLE `ocupa` (
  `matricula` varchar(8) NOT NULL,
  `id_vaga` int(11) NOT NULL,
  `datahora` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ocupa`
--

INSERT INTO `ocupa` (`matricula`, `id_vaga`, `datahora`) VALUES
('AA11AA', 1, '2024-02-01'),
('BB22BB', 2, '2024-02-02'),
('CC33CC', 3, '2024-02-03'),
('DD44DD', 4, '2024-02-04'),
('EE55EE', 5, '2024-02-05'),
('FF66FF', 6, '2024-02-06'),
('GG77GG', 7, '2024-02-07'),
('HH88HH', 8, '2024-02-08'),
('II99II', 9, '2024-02-09'),
('JJ00JJ', 10, '2024-02-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pertence`
--

CREATE TABLE `pertence` (
  `matricula` varchar(8) NOT NULL,
  `id_user` int(11) NOT NULL,
  `data_c` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pertence`
--

INSERT INTO `pertence` (`matricula`, `id_user`, `data_c`) VALUES
('AA11AA', 1, '2024-01-01'),
('BB22BB', 2, '2024-01-02'),
('CC33CC', 3, '2024-01-03'),
('DD44DD', 4, '2024-01-04'),
('EE55EE', 5, '2024-01-05'),
('FF66FF', 6, '2024-01-06'),
('GG77GG', 7, '2024-01-07'),
('HH88HH', 8, '2024-01-08'),
('II99II', 9, '2024-01-09'),
('JJ00JJ', 10, '2024-01-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

CREATE TABLE `utilizador` (
  `id_user` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `contacto` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `utilizador`
--

INSERT INTO `utilizador` (`id_user`, `nome`, `contacto`, `pwd`, `login`, `email`) VALUES
(1, 'Ana Silva', '910000001', '123', 'ana', 'ana@mail.com'),
(2, 'Bruno Costa', '910000002', '123', 'bruno', 'bruno@mail.com'),
(3, 'Carla Mendes', '910000003', '123', 'carla', 'carla@mail.com'),
(4, 'Daniel Rocha', '910000004', '123', 'daniel', 'daniel@mail.com'),
(5, 'Eva Santos', '910000005', '123', 'eva', 'eva@mail.com'),
(6, 'Filipe Lima', '910000006', '123', 'filipe', 'filipe@mail.com'),
(7, 'Gisela Pires', '910000007', '123', 'gisela', 'gisela@mail.com'),
(8, 'Hugo Nunes', '910000008', '123', 'hugo', 'hugo@mail.com'),
(9, 'Ines Tavares', '910000009', '123', 'ines', 'ines@mail.com'),
(10, 'Joao Ferreira', '910000010', '123', 'joao', 'joao@mail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga`
--

CREATE TABLE `vaga` (
  `id_vaga` int(11) NOT NULL,
  `localizacao` varchar(50) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `tipo_vaga` enum('normal','deficiente','eletrico') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vaga`
--

INSERT INTO `vaga` (`id_vaga`, `localizacao`, `estado`, `tipo_vaga`) VALUES
(1, 'A1', 1, 'normal'),
(2, 'A2', 0, 'normal'),
(3, 'B1', 1, 'deficiente'),
(4, 'B2', 0, 'normal'),
(5, 'C1', 1, 'eletrico'),
(6, 'C2', 0, 'normal'),
(7, 'D1', 1, 'normal'),
(8, 'D2', 0, 'deficiente'),
(9, 'E1', 1, 'eletrico'),
(10, 'E2', 0, 'normal');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices para tabela `ocupa`
--
ALTER TABLE `ocupa`
  ADD PRIMARY KEY (`matricula`,`id_vaga`),
  ADD KEY `id_vaga` (`id_vaga`);

--
-- Índices para tabela `pertence`
--
ALTER TABLE `pertence`
  ADD PRIMARY KEY (`matricula`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Índices para tabela `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`id_user`);

--
-- Índices para tabela `vaga`
--
ALTER TABLE `vaga`
  ADD PRIMARY KEY (`id_vaga`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `vaga`
--
ALTER TABLE `vaga`
  MODIFY `id_vaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `ocupa`
--
ALTER TABLE `ocupa`
  ADD CONSTRAINT `ocupa_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `carro` (`matricula`),
  ADD CONSTRAINT `ocupa_ibfk_2` FOREIGN KEY (`id_vaga`) REFERENCES `vaga` (`id_vaga`);

--
-- Limitadores para a tabela `pertence`
--
ALTER TABLE `pertence`
  ADD CONSTRAINT `pertence_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `carro` (`matricula`),
  ADD CONSTRAINT `pertence_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `utilizador` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
