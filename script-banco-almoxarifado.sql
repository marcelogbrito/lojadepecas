-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.3.31-MariaDB-0ubuntu0.20.04.1 - Ubuntu 20.04
-- OS do Servidor:               debian-linux-gnu
-- HeidiSQL Versão:              11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para lojadepecas
CREATE DATABASE IF NOT EXISTS `lojadepecas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lojadepecas`;

-- Copiando estrutura para tabela lojadepecas.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `cnpj` bigint(20) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela lojadepecas.cliente: ~3 rows (aproximadamente)
DELETE FROM `cliente`;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`cnpj`, `endereco`, `nome`, `telefone`) VALUES
	(78080, 'uuioui', 'huhyhi', '57077'),
	(78088, 'póffdvoppfgo', 'dsoisdid', 'doopidpi'),
	(890890, 'euoeueeouieu', 'dsuiosud', '122332');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela lojadepecas.corredor
CREATE TABLE IF NOT EXISTS `corredor` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela lojadepecas.corredor: ~2 rows (aproximadamente)
DELETE FROM `corredor`;
/*!40000 ALTER TABLE `corredor` DISABLE KEYS */;
INSERT INTO `corredor` (`id`, `descricao`) VALUES
	(1, 'corredor 1'),
	(2, 'corredor 2');
/*!40000 ALTER TABLE `corredor` ENABLE KEYS */;

-- Copiando estrutura para tabela lojadepecas.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela lojadepecas.hibernate_sequence: ~1 rows (aproximadamente)
DELETE FROM `hibernate_sequence`;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(14);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Copiando estrutura para tabela lojadepecas.peca
CREATE TABLE IF NOT EXISTS `peca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_hora_entrada` timestamp NOT NULL DEFAULT current_timestamp(),
  `data_hora_receptaculo` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_hora_saida` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `situacao` varchar(255) DEFAULT NULL,
  `receptaculo_id` int(11) DEFAULT NULL,
  `tipo_peca_upc` int(11) DEFAULT NULL,
  `cliente_comprador_cnpj` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe9ymoyojwtd8tyjvvjb4qnd37` (`receptaculo_id`),
  KEY `FK2rl7nbf7k0ar07arggrlv0464` (`tipo_peca_upc`),
  KEY `FKlb6t1qj1cv47e2a3559ft59ek` (`cliente_comprador_cnpj`),
  CONSTRAINT `FK2rl7nbf7k0ar07arggrlv0464` FOREIGN KEY (`tipo_peca_upc`) REFERENCES `tipo_peca` (`upc`),
  CONSTRAINT `FKe9ymoyojwtd8tyjvvjb4qnd37` FOREIGN KEY (`receptaculo_id`) REFERENCES `receptaculo` (`id`),
  CONSTRAINT `FKlb6t1qj1cv47e2a3559ft59ek` FOREIGN KEY (`cliente_comprador_cnpj`) REFERENCES `cliente` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela lojadepecas.peca: ~84 rows (aproximadamente)
DELETE FROM `peca`;
/*!40000 ALTER TABLE `peca` DISABLE KEYS */;
INSERT INTO `peca` (`id`, `data_hora_entrada`, `data_hora_receptaculo`, `data_hora_saida`, `situacao`, `receptaculo_id`, `tipo_peca_upc`, `cliente_comprador_cnpj`) VALUES
	(1, '2021-08-19 16:23:16', '2021-08-19 16:23:16', '2021-08-19 16:23:16', 'ENTRADA', NULL, 123, NULL),
	(2, '2021-08-19 16:23:16', '2021-08-19 16:23:16', '2021-08-19 16:23:16', 'ENTRADA', NULL, 123, NULL),
	(3, '2021-08-19 16:23:16', '2021-08-19 16:23:16', '2021-08-19 16:23:16', 'ENTRADA', NULL, 123, NULL),
	(4, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(5, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(6, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(7, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(8, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(9, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(10, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(11, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(12, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(13, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(14, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(15, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(16, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(17, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(18, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(19, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(20, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(21, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(22, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(23, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(24, '2021-08-19 16:24:43', '2021-08-19 16:24:43', '2021-08-19 16:24:43', 'ENTRADA', NULL, 124, NULL),
	(25, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(26, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(27, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(28, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(29, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(30, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(31, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(32, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(33, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(34, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(35, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(36, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(37, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(38, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(39, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(40, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(41, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(42, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(43, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(44, '2021-08-19 18:15:56', '2021-08-19 18:15:56', '2021-08-19 18:15:56', 'ENTRADA', NULL, 123, NULL),
	(45, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(46, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(47, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(48, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(49, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(50, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(51, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(52, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(53, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(54, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(55, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(56, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(57, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(58, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(59, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(60, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(61, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(62, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(63, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(64, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(65, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(66, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(67, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(68, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(69, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(70, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(71, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(72, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(73, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(74, '2021-08-19 20:36:42', '2021-08-19 20:36:42', '2021-08-19 20:36:42', 'ENTRADA', NULL, 124, NULL),
	(75, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(76, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(77, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(78, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(79, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(80, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(81, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(82, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(83, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL),
	(84, '2021-08-19 21:02:37', '2021-08-19 21:02:37', '2021-08-19 21:02:37', 'ENTRADA', NULL, 808, NULL);
/*!40000 ALTER TABLE `peca` ENABLE KEYS */;

-- Copiando estrutura para tabela lojadepecas.receptaculo
CREATE TABLE IF NOT EXISTS `receptaculo` (
  `id` int(11) NOT NULL,
  `corredor_receptaculo` varchar(255) DEFAULT NULL,
  `corredor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn9tte9ynke0hh5ckhlrxrf0td` (`corredor_id`),
  CONSTRAINT `FKn9tte9ynke0hh5ckhlrxrf0td` FOREIGN KEY (`corredor_id`) REFERENCES `corredor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela lojadepecas.receptaculo: ~9 rows (aproximadamente)
DELETE FROM `receptaculo`;
/*!40000 ALTER TABLE `receptaculo` DISABLE KEYS */;
INSERT INTO `receptaculo` (`id`, `corredor_receptaculo`, `corredor_id`) VALUES
	(5, NULL, 1),
	(6, NULL, 2),
	(7, NULL, 2),
	(8, 'com.modelodb.lojadepecas.model.Corredor@1c2cc3c4-null', 1),
	(9, 'com.modelodb.lojadepecas.model.Corredor@41445020-null', 2),
	(10, '1-null', 1),
	(11, '1-11', 1),
	(12, '2-12', 2),
	(13, '1-13', 1);
/*!40000 ALTER TABLE `receptaculo` ENABLE KEYS */;

-- Copiando estrutura para tabela lojadepecas.tipo_peca
CREATE TABLE IF NOT EXISTS `tipo_peca` (
  `upc` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`upc`),
  UNIQUE KEY `UK_77s7ks2rvbn0h6lfua5hhk6n0` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela lojadepecas.tipo_peca: ~5 rows (aproximadamente)
DELETE FROM `tipo_peca`;
/*!40000 ALTER TABLE `tipo_peca` DISABLE KEYS */;
INSERT INTO `tipo_peca` (`upc`, `descricao`, `numero`) VALUES
	(123, 'tipo peça 1', NULL),
	(124, 'tipo peça 2', NULL),
	(126, 'corredor 2', NULL),
	(808, 'iouu', NULL),
	(11270, 'peca tipo 5', NULL);
/*!40000 ALTER TABLE `tipo_peca` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
