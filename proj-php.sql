-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08-Jun-2021 às 01:10
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `proj-php`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
CREATE TABLE IF NOT EXISTS `fornecedor` (
  `codfornecedor` int NOT NULL,
  `Cidade_codcidade` int NOT NULL,
  `fornecedor` varchar(30) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `num` int NOT NULL,
  `bairro` varchar(40) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `contato` varchar(15) NOT NULL,
  `cnpj` char(18) NOT NULL,
  `insc` varchar(40) NOT NULL,
  `tel` char(14) NOT NULL,
  PRIMARY KEY (`codfornecedor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `codproduto` int NOT NULL,
  `Categoria_codcategoria` int NOT NULL,
  `Fornecedor_codfornecedor` int NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `peso` double NOT NULL,
  `controlado` tinyint(1) NOT NULL,
  `qtdadmin` int NOT NULL,
  PRIMARY KEY (`codproduto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
