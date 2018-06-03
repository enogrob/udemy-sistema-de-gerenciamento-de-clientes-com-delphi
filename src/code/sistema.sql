-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/10/2017 às 22:42
-- Versão do servidor: 10.1.26-MariaDB
-- Versão do PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nome` varchar(70) NOT NULL,
  `cli_endereco` varchar(100) NOT NULL,
  `cli_bairro` varchar(60) NOT NULL,
  `cli_cidade` varchar(60) NOT NULL,
  `cli_uf` varchar(30) NOT NULL,
  `cli_cep` varchar(20) NOT NULL,
  `cli_rg` varchar(15) NOT NULL,
  `cli_cpf` varchar(15) NOT NULL,
  `cli_tel` varchar(20) NOT NULL,
  `cli_cel` varchar(20) NOT NULL,
  `cli_email` varchar(100) NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_situacao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_nome`, `cli_endereco`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_rg`, `cli_cpf`, `cli_tel`, `cli_cel`, `cli_email`, `cli_data_nasc`, `cli_data_cad`, `cli_situacao`) VALUES
(11, 'Fábio Freitas', 'Rua A', '2222222', 'Belo Horizonte', 'MG', '22222222', '2222222222', '22222222222', '2222222222', '22222222222', '22222222', '2020-02-22', '2017-10-17', 'Ativo'),
(14, 'Hugo Freitas', 'Rua A numero 10', 'Cabana', 'Belo Horizonte', 'MG', '22222222', '2222222222', '22222222222', '2222222222', '22222222222', 'hugovasconcelosf@hotmail.com', '1988-03-27', '2017-10-18', 'Ativo'),
(15, 'Paula Souza', 'Rua C', 'Candelária', 'Belo Horizonte', 'MG', '22122222', '5522222222', '21222222222', '2222222222', '22222222222', '222paula@hotmail.com', '1111-11-11', '2017-10-18', 'Ativo');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
