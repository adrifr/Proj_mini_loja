-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/10/2024 às 03:39
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja07`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_produto`, `valor`, `ip`, `data`) VALUES
(271, 13, 126.00, '::1', '2024-10-27 13:57:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `whatsapp` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'S',
  `endereco` varchar(150) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `valor`, `ip`, `cpf`, `email`, `whatsapp`, `status`, `endereco`, `cep`, `estado`, `cidade`, `data`) VALUES
(4, 'ronaldo', 794.00, '::1', '254.406.888-46', 'djdfh@gmakdj.com', '15988137244', 'S', 'sjfhfhg', '45751568', 'sdlkfkdjf', 'sdkfjkdjfd', '2024-10-19 21:26:38');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'N',
  `ip` varchar(250) NOT NULL,
  `numero_pedido` varchar(100) NOT NULL,
  `boleto` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `capa` varchar(255) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `capa`, `nome`, `valor`, `data`) VALUES
(9, 'images/2024/10/2024-10-20-1729461053.jpg', 'Tigela', 83.00, '2024-10-20 18:50:53'),
(10, 'images/2024/10/2024-10-20-1729461098.jpg', 'cesto', 130.00, '2024-10-20 18:51:38'),
(11, 'images/2024/10/2024-10-20-1729461188.jpg', 'cesto', 53.00, '2024-10-20 18:53:08'),
(12, 'images/2024/10/2024-10-20-1729461238.jpg', 'potes', 35.00, '2024-10-20 18:53:58'),
(13, 'images/2024/10/2024-10-20-1729461302.jpg', 'Porta Caneca', 126.00, '2024-10-20 18:55:02'),
(14, 'images/2024/10/2024-10-20-1729461386.jpg', 'Enfeite de Mesa', 25.00, '2024-10-20 18:56:26');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
