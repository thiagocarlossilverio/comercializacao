-- --------------------------------------------------------
-- Servidor:                     scho_comercial.mysql.dbaas.com.br
-- Versão do servidor:           5.6.38-83.0-log - Percona Server (GPL), Release 83.0, Revision dc97471bd40
-- OS do Servidor:               debian-linux-gnu
-- HeidiSQL Versão:              9.4.0.5144
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para scho_comercial
CREATE DATABASE IF NOT EXISTS `scho_comercial` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `scho_comercial`;

-- Copiando estrutura para tabela scho_comercial.acessos
CREATE TABLE IF NOT EXISTS `acessos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` int(20) NOT NULL,
  `data_acesso` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario` (`usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela scho_comercial.acessos: 49 rows
/*!40000 ALTER TABLE `acessos` DISABLE KEYS */;
INSERT INTO `acessos` (`id`, `ip`, `usuario`, `data_acesso`) VALUES
	(1, '186.226.246.45', 12, '2018-02-13 17:00:57'),
	(2, '186.226.246.45', 12, '2018-02-13 17:23:33'),
	(3, '186.226.246.143', 12, '2018-02-13 19:26:59'),
	(4, '186.226.246.45', 12, '2018-02-14 07:42:42'),
	(5, '186.226.246.45', 12, '2018-02-14 09:48:18'),
	(6, '186.226.246.45', 12, '2018-02-14 10:04:06'),
	(7, '186.226.246.45', 12, '2018-02-14 15:01:36'),
	(8, '186.226.246.143', 12, '2018-02-14 17:56:11'),
	(9, '186.226.246.45', 12, '2018-02-15 08:24:28'),
	(10, '186.226.246.45', 12, '2018-02-15 08:24:39'),
	(11, '186.226.246.45', 12, '2018-02-16 07:49:08'),
	(12, '168.194.162.220', 12, '2018-02-17 18:52:51'),
	(13, '168.194.162.220', 12, '2018-02-17 18:55:30'),
	(14, '186.226.246.45', 12, '2018-02-19 17:21:24'),
	(15, '186.226.246.45', 12, '2018-02-20 09:40:58'),
	(16, '186.226.246.45', 12, '2018-02-27 08:41:17'),
	(17, '186.226.246.45', 12, '2018-02-27 08:45:45'),
	(18, '186.226.246.45', 12, '2018-02-28 09:25:46'),
	(19, '186.226.246.45', 12, '2018-02-28 09:33:21'),
	(20, '186.226.246.45', 12, '2018-02-28 10:09:43'),
	(21, '186.226.246.45', 18, '2018-03-01 07:36:37'),
	(22, '186.226.246.45', 18, '2018-03-01 09:43:14'),
	(23, '186.226.246.45', 18, '2018-03-01 14:22:45'),
	(24, '177.92.1.30', 18, '2018-03-09 22:10:01'),
	(25, '186.226.246.45', 18, '2018-03-13 07:42:59'),
	(26, '186.226.246.45', 18, '2018-03-13 14:05:39'),
	(27, '186.226.246.45', 18, '2018-03-13 15:10:38'),
	(28, '186.226.246.45', 18, '2018-03-13 16:44:33'),
	(29, '186.226.246.45', 18, '2018-03-16 08:00:47'),
	(30, '186.226.246.45', 18, '2018-03-19 16:22:43'),
	(31, '186.226.246.45', 18, '2018-03-19 16:50:50'),
	(32, '186.226.246.45', 18, '2018-03-21 10:00:00'),
	(33, '186.226.246.45', 18, '2018-03-21 13:53:36'),
	(34, '186.226.246.45', 19, '2018-03-21 14:36:30'),
	(35, '186.226.246.45', 19, '2018-03-27 10:58:29'),
	(36, '186.226.246.45', 18, '2018-04-17 08:48:40'),
	(37, '186.226.246.45', 18, '2018-04-17 09:58:20'),
	(38, '186.226.246.45', 18, '2018-04-17 15:54:00'),
	(39, '186.226.246.45', 18, '2018-04-19 14:51:58'),
	(40, '186.226.246.45', 18, '2018-04-24 08:04:03'),
	(41, '186.226.246.45', 18, '2018-04-25 07:49:38'),
	(42, '186.226.246.45', 18, '2018-04-26 08:11:43'),
	(43, '186.226.246.45', 18, '2018-04-30 07:59:59'),
	(44, '186.226.246.45', 18, '2018-04-30 08:21:15'),
	(45, '186.226.246.45', 18, '2018-05-11 08:10:06'),
	(46, '186.226.246.45', 18, '2018-07-16 14:28:18'),
	(47, '186.226.246.45', 18, '2018-09-12 09:48:58'),
	(48, '186.226.246.45', 17, '2018-10-10 08:13:37'),
	(49, '186.226.246.45', 18, '2018-10-10 14:15:32');
/*!40000 ALTER TABLE `acessos` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_pessoa` int(11) NOT NULL,
  `nome1` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `nome2` varchar(70) COLLATE latin1_general_ci NOT NULL,
  `doc1` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `doc2` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `telefone` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `senha` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `capacidade` int(11) NOT NULL,
  `frequencia` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `proprio` int(11) NOT NULL DEFAULT '1',
  `data_cadastro` datetime NOT NULL,
  `chave` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `ativo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela scho_comercial.clientes: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `tipo_pessoa`, `nome1`, `nome2`, `doc1`, `doc2`, `telefone`, `email`, `senha`, `capacidade`, `frequencia`, `proprio`, `data_cadastro`, `chave`, `ativo`) VALUES
	(17, 1, 'Paulo Eduardo', 'Giehl', '657.470.039-68', '1858438', '(42) 3237-2068', 'paulo@schoeler.com.br', 'f4934daadf88b4a40ee8825bf5dc4c758a10e209', 1000, 'Diário', 1, '2018-02-22 10:27:57', '', 1),
	(18, 1, 'Thiago Carlos', 'Silvério', '073.854.139-78', '10.037.606-7', '(43) 9842-5713', 'thiago@schoeler.com.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1000, 'Dia', 1, '2018-02-28 15:59:34', NULL, 1),
	(19, 1, 'Diego', 'Schoeler', '038.901.599-74', '3546053', '(42) 3237-2068', 'diego@schoeler.com.br', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1000, 'Dia', 2, '2018-03-21 13:58:12', NULL, 1),
	(26, 1, 'Carlos', 'Silvério', '792.465.120-90', '11111111111111111111', '(42) 9842-5713', 'thiagocarlos@outlook.com.br', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 300, 'Dia', 1, '2018-04-10 17:30:40', NULL, 1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.cliente_enderecos
CREATE TABLE IF NOT EXISTS `cliente_enderecos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) NOT NULL,
  `numero` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rua` varchar(90) COLLATE latin1_general_ci NOT NULL,
  `bairro` varchar(70) COLLATE latin1_general_ci NOT NULL,
  `cep` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `cidade` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `estado` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `data_cadastro` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela scho_comercial.cliente_enderecos: 14 rows
/*!40000 ALTER TABLE `cliente_enderecos` DISABLE KEYS */;
INSERT INTO `cliente_enderecos` (`id`, `cliente`, `numero`, `rua`, `bairro`, `cep`, `cidade`, `estado`, `data_cadastro`) VALUES
	(1, 12, '230', ' Rua Amalio Domingues Guerreiro', 'Centro', '84290-000', 'Sapopema', 'PR', '2018-02-08 16:50:31'),
	(4, 12, '38', 'Rua Amantino Teixeira de Carvalho', 'Centro', '86010-240', 'Londrina', 'PR', '2018-02-09 11:14:32'),
	(6, 12, '32', 'Avenida Duque de Caxias', 'Jardim Londrilar', '86010-190', 'Londrina', 'PR', '2018-02-09 11:32:10'),
	(7, 12, '230', ' Rua Santana', 'Centro', '84290-000', 'Sapopema', 'PR', '2018-02-12 08:01:03'),
	(8, 17, '124', 'Rua Cipriano Marques de Souza', 'Centro', '84165-120', 'Castro', 'PR', '2018-02-22 10:27:57'),
	(9, 18, '30', 'Rua Alfredo Moreira', 'Centro', '84240-000', 'Piraí do Sul', 'PR', '2018-02-28 15:59:34'),
	(10, 18, '30', 'Praça Anísio Ribas Bueno', 'Centro', '86010-065', 'Londrina', 'PR', '2018-02-28 16:00:13'),
	(11, 19, '91', 'Rua General Osório', 'Centro', '84165-180', 'Castro', 'PR', '2018-03-21 13:58:12'),
	(13, 21, '230', ' Rua Amalio domingues Guerreiro', 'Centro', '84290-000', 'Sapopema', 'PR', '2018-04-10 17:18:48'),
	(14, 22, '230', ' Rua Santana', 'Centro', '84290-000', 'Sapopema', 'PR', '2018-04-10 17:23:09'),
	(15, 23, '', ' ', 'Centro', '84240-000', 'Piraí do Sul', 'PR', '2018-04-10 17:24:25'),
	(16, 24, '230', ' Santana', 'Cnetrnt', '84240-000', 'Piraí do Sul', 'PR', '2018-04-10 17:26:59'),
	(17, 25, '230', ' Santana', 'Centro', '84240-000', 'Piraí do Sul', 'PR', '2018-04-10 17:29:09'),
	(18, 26, '230', ' Santana', 'Centro', '84240-000', 'Piraí do Sul', 'PR', '2018-04-10 17:30:40');
/*!40000 ALTER TABLE `cliente_enderecos` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.condicao_pagamento
CREATE TABLE IF NOT EXISTS `condicao_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `ativo` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela scho_comercial.condicao_pagamento: 6 rows
/*!40000 ALTER TABLE `condicao_pagamento` DISABLE KEYS */;
INSERT INTO `condicao_pagamento` (`id`, `nome`, `ativo`) VALUES
	(1, 'Antecipado', 1),
	(2, '03 dias', 1),
	(3, '07 dias', 1),
	(6, '10 dias', 1),
	(7, '14 dias', 1),
	(8, '21 dias', 1);
/*!40000 ALTER TABLE `condicao_pagamento` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.configuracoes
CREATE TABLE IF NOT EXISTS `configuracoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(150) DEFAULT NULL,
  `titulo` varchar(90) DEFAULT NULL,
  `cor_layout` varchar(20) NOT NULL,
  `cor_menu` varchar(20) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela scho_comercial.configuracoes: 3 rows
/*!40000 ALTER TABLE `configuracoes` DISABLE KEYS */;
INSERT INTO `configuracoes` (`id`, `logo`, `titulo`, `cor_layout`, `cor_menu`, `user`) VALUES
	(1, '', 'meu tema', '005da8', '9e9488', 3),
	(2, '', 'meu tema', '005da8', '9e9488', 8),
	(3, NULL, NULL, '005da8', '9e9488', 12);
/*!40000 ALTER TABLE `configuracoes` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.conf_whatts
CREATE TABLE IF NOT EXISTS `conf_whatts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddi` int(11) DEFAULT NULL,
  `dd` varchar(50) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela scho_comercial.conf_whatts: 1 rows
/*!40000 ALTER TABLE `conf_whatts` DISABLE KEYS */;
INSERT INTO `conf_whatts` (`id`, `ddi`, `dd`, `numero`, `nome`, `password`) VALUES
	(1, 55, '43', '84015095', 'Sistema', '1prtJWQXJl5BI8mYm+WmW0PiOSM=');
/*!40000 ALTER TABLE `conf_whatts` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.contatos
CREATE TABLE IF NOT EXISTS `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) NOT NULL,
  `vendedor` int(11) NOT NULL,
  `assunto` varchar(90) NOT NULL,
  `mensagem` text,
  `resposta` text,
  `data_contato` datetime NOT NULL,
  `data_resposta` datetime DEFAULT NULL,
  `ip` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`),
  KEY `vendedor` (`vendedor`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.contatos: 8 rows
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` (`id`, `cliente`, `vendedor`, `assunto`, `mensagem`, `resposta`, `data_contato`, `data_resposta`, `ip`) VALUES
	(1, 12, 3, 'teste', 'fgg', 'teste de resposta', '2018-01-30 10:14:42', '2018-01-30 10:50:04', '10.1.1.18'),
	(2, 12, 8, 'ss', 'de', NULL, '2018-01-30 10:53:41', NULL, '10.1.1.18'),
	(3, 12, 9, 'compra de paletes', 'bom dia, vocês tem????', 'Bom dia,\r\n\r\nTemos sim, R$ 100 a unidade para retirar.', '2018-02-13 10:39:47', '2018-02-13 10:40:23', '186.226.246.45'),
	(4, 12, 9, 'Teste de Mensagem', 'Fala maluco!', NULL, '2018-02-13 11:36:53', NULL, '186.226.246.45'),
	(5, 12, 9, 'Teste de Mensagem 2', 'Fala Maluco', NULL, '2018-02-13 11:43:30', NULL, '186.226.246.45'),
	(6, 12, 9, 'Teste de Mensagem', 'dfgt', NULL, '2018-02-13 11:44:47', NULL, '186.226.246.45'),
	(7, 12, 9, 'teste', 'sdrgtyhc', NULL, '2018-02-13 11:46:24', NULL, '186.226.246.45'),
	(8, 17, 8, 'abate', 'Por favor preciso de suinos urgente', 'pede pela plataforma', '2018-02-22 10:28:42', '2018-02-22 10:42:13', '186.226.246.45');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.dados_faturamento
CREATE TABLE IF NOT EXISTS `dados_faturamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) COLLATE latin1_general_ci DEFAULT NULL,
  `doc1` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `doc2` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ativo` int(10) unsigned zerofill DEFAULT '0000000001',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela scho_comercial.dados_faturamento: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `dados_faturamento` DISABLE KEYS */;
INSERT INTO `dados_faturamento` (`id`, `nome`, `doc1`, `doc2`, `ativo`) VALUES
	(1, 'Auri Schoeler', '296.149.969-00', NULL, 0000000001),
	(2, 'Diego Schoeler', '038.901.599-74', NULL, 0000000001),
	(3, 'Pirai do Sul', '82.875.998/0003-02', '', 0000000001),
	(4, 'Jaguariaiva', '82.875.998/0004', '', 0000000001);
/*!40000 ALTER TABLE `dados_faturamento` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.erros
CREATE TABLE IF NOT EXISTS `erros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trace` text COLLATE utf8_unicode_ci,
  `parametros` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8_unicode_ci,
  `ip` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parametros_acesso` text COLLATE utf8_unicode_ci,
  `data_execucao` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela scho_comercial.erros: 83 rows
/*!40000 ALTER TABLE `erros` DISABLE KEYS */;
INSERT INTO `erros` (`id`, `trace`, `parametros`, `mensagem`, `ip`, `parametros_acesso`, `data_execucao`) VALUES
	(1, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.88.18', '{"regionName":"California","city":"Mountain View","zip":"94043","lon":-122.05740356445,"timezone":"America\\/Los_Angeles","status":"success","country":"United States","region":"CA","isp":"Google","org":"Google","query":"66.249.88.18","countryCode":"US","lat":37.419200897217,"as":"AS15169 Google LLC"}', '2018-02-22 04:53:55'),
	(2, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.88.15', '{"region":"CA","regionName":"California","zip":"94043","lat":37.419200897217,"isp":"Google","as":"AS15169 Google LLC","country":"United States","city":"Mountain View","countryCode":"US","org":"Google","lon":-122.05740356445,"timezone":"America\\/Los_Angeles","status":"success","query":"66.249.88.15"}', '2018-02-22 04:53:55'),
	(3, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"country":"Brazil","region":"PR","city":"Pirai do Sul","countryCode":"BR","lat":-24.488500595093,"org":"6P Telecom Ltda","regionName":"Parana","zip":"84240","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","as":"AS263011 6P Telecom Ltda","status":"success","query":"186.226.246.45","isp":"6P Telecom Ltda"}', '2018-02-22 07:41:26'),
	(4, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.149', '{"lat":40.849899291992,"status":"success","zip":"10460","regionName":"New York","city":"The Bronx","timezone":"America\\/New_York","as":"AS15169 Google LLC","query":"66.249.83.149","country":"United States","lon":-73.876899719238,"isp":"Google","org":"Google","countryCode":"US","region":"NY"}', '2018-02-22 13:21:24'),
	(5, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"regionName":"Parana","city":"Pirai do Sul","zip":"84240","as":"AS263011 6P Telecom Ltda","status":"success","query":"186.226.246.45","countryCode":"BR","lat":-24.488500595093,"lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","country":"Brazil","region":"PR","org":"6P Telecom Ltda"}', '2018-02-22 13:55:09'),
	(6, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"org":"6P Telecom Ltda","countryCode":"BR","regionName":"Parana","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","status":"success","city":"Pirai do Sul","zip":"84240","isp":"6P Telecom Ltda","query":"186.226.246.45","lat":-24.488500595093,"country":"Brazil","region":"PR","as":"AS263011 6P Telecom Ltda"}', '2018-02-22 13:59:52'),
	(7, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"lon":-49.915298461914,"isp":"6P Telecom Ltda","query":"186.226.246.45","regionName":"Parana","lat":-24.488500595093,"countryCode":"BR","as":"AS263011 6P Telecom Ltda","city":"Pirai do Sul","zip":"84240","org":"6P Telecom Ltda","timezone":"America\\/Sao_Paulo","status":"success","country":"Brazil","region":"PR"}', '2018-02-22 14:05:59'),
	(8, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"city":"Pirai do Sul","lon":-49.915298461914,"country":"Brazil","countryCode":"BR","regionName":"Parana","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","status":"success","zip":"84240","isp":"6P Telecom Ltda","query":"186.226.246.45","region":"PR","lat":-24.488500595093,"timezone":"America\\/Sao_Paulo"}', '2018-02-22 14:10:27'),
	(9, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.149', '{"as":"AS15169 Google LLC","status":"success","query":"66.249.83.149","countryCode":"US","zip":"10460","timezone":"America\\/New_York","city":"The Bronx","lat":40.849899291992,"org":"Google","country":"United States","region":"NY","regionName":"New York","lon":-73.876899719238,"isp":"Google"}', '2018-02-22 17:31:05'),
	(10, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"lat":-24.488500595093,"timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","query":"186.226.246.45","country":"Brazil","countryCode":"BR","regionName":"Parana","city":"Pirai do Sul","as":"AS263011 6P Telecom Ltda","status":"success","region":"PR","zip":"84240","lon":-49.915298461914,"isp":"6P Telecom Ltda"}', '2018-02-23 05:44:34'),
	(11, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"status":"success","country":"Brazil","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","countryCode":"BR","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","lat":-24.488500595093,"region":"PR","regionName":"Parana","city":"Pirai do Sul","query":"186.226.246.45","zip":"84240"}', '2018-02-23 05:49:12'),
	(12, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"city":"Pirai do Sul","lat":-24.488500595093,"status":"success","query":"186.226.246.45","country":"Brazil","countryCode":"BR","regionName":"Parana","zip":"84240","lon":-49.915298461914,"org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","timezone":"America\\/Sao_Paulo","region":"PR","isp":"6P Telecom Ltda"}', '2018-02-23 08:40:03'),
	(13, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.217', '{"isp":"Google","org":"Google","zip":"94043","timezone":"America\\/Los_Angeles","as":"AS15169 Google LLC","status":"success","countryCode":"US","region":"CA","lat":37.419200897217,"query":"66.249.83.217","country":"United States","regionName":"California","city":"Mountain View","lon":-122.05740356445}', '2018-02-26 04:42:04'),
	(14, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.213', '{"regionName":"California","city":"Mountain View","status":"success","country":"United States","region":"CA","lon":-122.05740356445,"org":"Google","countryCode":"US","zip":"94043","query":"66.249.83.213","lat":37.419200897217,"timezone":"America\\/Los_Angeles","isp":"Google","as":"AS15169 Google LLC"}', '2018-02-27 05:08:45'),
	(15, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"region":"PR","timezone":"America\\/Sao_Paulo","status":"success","query":"186.226.246.45","countryCode":"BR","regionName":"Parana","zip":"84240","lat":-24.488500595093,"city":"Pirai do Sul","lon":-49.915298461914,"org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","country":"Brazil","isp":"6P Telecom Ltda"}', '2018-02-27 05:11:16'),
	(16, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"city":"Pirai do Sul","status":"success","countryCode":"BR","org":"6P Telecom Ltda","region":"PR","regionName":"Parana","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","query":"186.226.246.45","country":"Brazil","zip":"84240","lat":-24.488500595093,"isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda"}', '2018-02-27 05:11:55'),
	(17, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"regionName":"Parana","as":"AS263011 6P Telecom Ltda","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","status":"success","zip":"84240","lat":-24.488500595093,"org":"6P Telecom Ltda","countryCode":"BR","region":"PR","city":"Pirai do Sul","isp":"6P Telecom Ltda","query":"186.226.246.45","country":"Brazil"}', '2018-02-27 08:07:17'),
	(18, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"countryCode":"BR","regionName":"Parana","zip":"84240","org":"6P Telecom Ltda","status":"success","query":"186.226.246.45","region":"PR","lat":-24.488500595093,"as":"AS263011 6P Telecom Ltda","country":"Brazil","city":"Pirai do Sul","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda"}', '2018-02-27 08:40:30'),
	(19, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"status":"success","query":"186.226.246.45","regionName":"Parana","timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","country":"Brazil","region":"PR","city":"Pirai do Sul","lat":-24.488500595093,"lon":-49.915298461914,"as":"AS263011 6P Telecom Ltda","countryCode":"BR","zip":"84240","isp":"6P Telecom Ltda"}', '2018-02-27 08:40:50'),
	(20, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'UPDATE `dados_f...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(1269): Zend_Db_Adapter_Pdo_Abstract->query(\'UPDATE `dados_f...\', Array)\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2265): Zend_Db_Adapter_Abstract->update(\'dados_faturamen...\', Array, \'id = 6\')\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/DadosFaturamento.php(29): Zend_Db_Table_Abstract->update(Array, \'id = 6\')\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/controllers/FaturamentoController.php(37): Admin_Model_DadosFaturamento->insert(Array)\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): Admin_FaturamentoController->editarAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'editarAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"module":"admin","controller":"faturamento","action":"editar","id":"6","nome":"frgchjjjjercwhyuv","doc1":"111.111.111-111","ativo":"1","Salvar":"Salvar"}', 'SQLSTATE[42S22]: Column not found: 1054 Unknown column \'Salvar\' in \'field list\', query was: UPDATE `dados_faturamento` SET `id` = ?, `nome` = ?, `doc1` = ?, `ativo` = ?, `Salvar` = ? WHERE (id = 6)', '186.226.246.45', '{"zip":"84240","lat":-24.488500595093,"status":"success","country":"Brazil","region":"PR","lon":-49.915298461914,"org":"6P Telecom Ltda","countryCode":"BR","regionName":"Parana","city":"Pirai do Sul","as":"AS263011 6P Telecom Ltda","query":"186.226.246.45","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda"}', '2018-02-27 08:55:17'),
	(21, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"status":"success","country":"Brazil","lat":-24.488500595093,"lon":-49.915298461914,"query":"186.226.246.45","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","region":"PR","countryCode":"BR","regionName":"Parana","city":"Pirai do Sul","zip":"84240","timezone":"America\\/Sao_Paulo","as":"AS263011 6P Telecom Ltda"}', '2018-02-27 12:12:32'),
	(22, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"status":"success","city":"Pirai do Sul","lat":-24.488500595093,"regionName":"Parana","lon":-49.915298461914,"org":"6P Telecom Ltda","query":"186.226.246.45","zip":"84240","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","country":"Brazil","countryCode":"BR","region":"PR"}', '2018-02-27 12:12:32'),
	(23, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"regionName":"Parana","lat":-24.488500595093,"org":"6P Telecom Ltda","region":"PR","city":"Pirai do Sul","zip":"84240","lon":-49.915298461914,"countryCode":"BR","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","country":"Brazil","query":"186.226.246.45","status":"success"}', '2018-02-27 12:12:33'),
	(24, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"city":"Pirai do Sul","lat":-24.488500595093,"lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","country":"Brazil","countryCode":"BR","region":"PR","status":"success","query":"186.226.246.45","zip":"84240","regionName":"Parana"}', '2018-02-27 12:12:34'),
	(25, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"city":"Pirai do Sul","as":"AS263011 6P Telecom Ltda","country":"Brazil","countryCode":"BR","zip":"84240","lat":-24.488500595093,"lon":-49.915298461914,"isp":"6P Telecom Ltda","org":"6P Telecom Ltda","query":"186.226.246.45","status":"success","region":"PR","regionName":"Parana","timezone":"America\\/Sao_Paulo"}', '2018-02-27 12:12:34'),
	(26, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"query":"186.226.246.45","lat":-24.488500595093,"lon":-49.915298461914,"as":"AS263011 6P Telecom Ltda","status":"success","countryCode":"BR","region":"PR","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","country":"Brazil","regionName":"Parana","city":"Pirai do Sul","zip":"84240"}', '2018-02-27 12:47:39'),
	(27, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"countryCode":"BR","region":"PR","city":"Pirai do Sul","zip":"84240","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","status":"success","query":"186.226.246.45","country":"Brazil","regionName":"Parana","lat":-24.488500595093,"isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda"}', '2018-02-27 13:02:57'),
	(28, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"city":"Pirai do Sul","lon":-49.915298461914,"isp":"6P Telecom Ltda","country":"Brazil","query":"186.226.246.45","countryCode":"BR","lat":-24.488500595093,"as":"AS263011 6P Telecom Ltda","status":"success","regionName":"Parana","zip":"84240","region":"PR","org":"6P Telecom Ltda","timezone":"America\\/Sao_Paulo"}', '2018-02-27 13:53:39'),
	(29, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"query":"186.226.246.45","region":"PR","regionName":"Parana","as":"AS263011 6P Telecom Ltda","countryCode":"BR","zip":"84240","lat":-24.488500595093,"org":"6P Telecom Ltda","city":"Pirai do Sul","timezone":"America\\/Sao_Paulo","status":"success","country":"Brazil","lon":-49.915298461914,"isp":"6P Telecom Ltda"}', '2018-02-28 04:57:17'),
	(30, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"country":"Brazil","timezone":"America\\/Sao_Paulo","countryCode":"BR","city":"Pirai do Sul","zip":"84240","lat":-24.488500595093,"org":"6P Telecom Ltda","query":"186.226.246.45","regionName":"Parana","isp":"6P Telecom Ltda","status":"success","region":"PR","lon":-49.915298461914,"as":"AS263011 6P Telecom Ltda"}', '2018-02-28 12:54:09'),
	(31, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.215', '{"zip":"94043","lat":37.419200897217,"isp":"Google","status":"success","query":"66.249.83.215","countryCode":"US","regionName":"California","timezone":"America\\/Los_Angeles","region":"CA","org":"Google","as":"AS15169 Google LLC","country":"United States","city":"Mountain View","lon":-122.05740356445}', '2018-02-28 13:26:42'),
	(32, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"lat":-24.488500595093,"timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","region":"PR","country":"Brazil","isp":"6P Telecom Ltda","status":"success","regionName":"Parana","city":"Pirai do Sul","zip":"84240","query":"186.226.246.45","lon":-49.915298461914,"countryCode":"BR"}', '2018-03-01 04:36:40'),
	(33, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'DESCRIBE `confi...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Mysql.php(341): Zend_Db_Adapter_Pdo_Abstract->query(\'DESCRIBE `confi...\')\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1671): Zend_Db_Adapter_Pdo_Mysql->describeTable(\'configuracoes\', NULL)\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1715): Zend_Db_Table_Abstract->_setupMetadata()\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1795): Zend_Db_Table_Abstract->_getCols()\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1965): Zend_Db_Table_Abstract->_setupPrimaryKey()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Select.php(199): Zend_Db_Table_Abstract->info()\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Select.php(155): Zend_Db_Table_Select->setTable(Object(Admin_Model_ConfSistema))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2037): Zend_Db_Table_Select->__construct(Object(Admin_Model_ConfSistema))\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/ConfSistema.php(16): Zend_Db_Table_Abstract->select()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/controllers/GeralController.php(19): Admin_Model_ConfSistema->GetDados(\'8\')\n#13 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): Admin_GeralController->topoAction()\n#14 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'topoAction\')\n#15 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/View/Helper/Action.php(269): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#16 [internal function]: Zend_View_Helper_Action->action(\'topo\', \'geral\', \'admin\')\n#17 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/View/Abstract.php(699): call_user_func_array(Array, Array)\n#18 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/layouts/admin.phtml(46): Zend_View_Abstract->__call(\'action\', Array)\n#19 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/layouts/admin.phtml(46): Zend_View->action(\'topo\', \'geral\', \'admin\')\n#20 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/View.php(215): include(\'/home/storage/5...\')\n#21 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/View/Abstract.php(1775): Zend_View->_run(\'/home/storage/5...\')\n#22 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Layout.php(1591): Zend_View_Abstract->render(\'admin.phtml\')\n#23 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Layout/Controller/Plugin/Layout.php(285): Zend_Layout->render()\n#24 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Plugin/Broker.php(665): Zend_Layout_Controller_Plugin_Layout->postDispatch(Object(Zend_Controller_Request_Http))\n#25 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1929): Zend_Controller_Plugin_Broker->postDispatch(Object(Zend_Controller_Request_Http))\n#26 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#27 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#28 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#29 {main}', '{"module":"admin","controller":"index","action":"index","layoutFullContent":"<html xmlns=\\"http:\\/\\/www.w3c.org\\/1999\\/xhtml\\">\\r    <head>\\r        <meta http-equiv=\\"Content-Type\\" content=\\"text\\/html; charset=UTF-8\\" \\/>\\r        <meta name=\\"vie', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'scho_comercial.configuracoes\' doesn\'t exist, query was: DESCRIBE `configuracoes`', '186.226.246.45', '{"query":"186.226.246.45","regionName":"Parana","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","status":"success","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","region":"PR","zip":"84240","lat":-24.488500595093,"isp":"6P Telecom Ltda","country":"Brazil","countryCode":"BR","city":"Pirai do Sul"}', '2018-03-01 07:24:33'),
	(34, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","country":"Brazil","countryCode":"BR","region":"PR","zip":"84240","lat":-24.488500595093,"city":"Pirai do Sul","lon":-49.915298461914,"status":"success","query":"186.226.246.45","regionName":"Parana","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda"}', '2018-03-01 13:27:09'),
	(35, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.217', '{"query":"66.249.83.217","zip":"94043","countryCode":"US","lat":37.419200897217,"timezone":"America\\/Los_Angeles","isp":"Google","org":"Google","city":"Mountain View","lon":-122.05740356445,"as":"AS15169 Google LLC","status":"success","country":"United States","region":"CA","regionName":"California"}', '2018-03-02 04:31:05'),
	(36, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.217', '{"regionName":"California","lon":-122.05740356445,"org":"Google","country":"United States","region":"CA","as":"AS15169 Google LLC","zip":"94043","lat":37.419200897217,"timezone":"America\\/Los_Angeles","isp":"Google","status":"success","countryCode":"US","city":"Mountain View","query":"66.249.83.217"}', '2018-03-05 04:39:06'),
	(37, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.90', '{"query":"66.249.83.90","country":"United States","lon":-122.05740356445,"city":"Mountain View","zip":"94043","lat":37.419200897217,"timezone":"America\\/Los_Angeles","as":"AS15169 Google LLC","countryCode":"US","region":"CA","regionName":"California","org":"Google","status":"success","isp":"Google"}', '2018-03-06 05:35:46'),
	(38, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.90', '{"regionName":"California","zip":"94043","timezone":"America\\/Los_Angeles","isp":"Google","as":"AS15169 Google LLC","countryCode":"US","city":"Mountain View","lat":37.419200897217,"status":"success","query":"66.249.83.90","country":"United States","region":"CA","org":"Google","lon":-122.05740356445}', '2018-03-07 13:02:47'),
	(39, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.88', '{"countryCode":"US","city":"Mountain View","regionName":"California","timezone":"America\\/Los_Angeles","query":"66.249.83.88","country":"United States","region":"CA","zip":"94043","lon":-122.05740356445,"org":"Google","as":"AS15169 Google LLC","status":"success","lat":37.419200897217,"isp":"Google"}', '2018-03-09 10:36:28'),
	(40, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '66.249.83.89', '{"org":"Google","zip":"94043","query":"66.249.83.89","country":"United States","lat":37.419200897217,"lon":-122.05740356445,"status":"success","regionName":"California","region":"CA","city":"Mountain View","timezone":"America\\/Los_Angeles","isp":"Google","as":"AS15169 Google LLC","countryCode":"US"}', '2018-03-12 09:10:26'),
	(41, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"status":"success","regionName":"Parana","lon":-49.915298461914,"zip":"84240","lat":-24.488500595093,"country":"Brazil","countryCode":"BR","region":"PR","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","query":"186.226.246.45","city":"Pirai do Sul","timezone":"America\\/Sao_Paulo"}', '2018-03-13 05:55:49'),
	(42, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'DESCRIBE `negoc...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Mysql.php(341): Zend_Db_Adapter_Pdo_Abstract->query(\'DESCRIBE `negoc...\')\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1671): Zend_Db_Adapter_Pdo_Mysql->describeTable(\'negociacoes\', NULL)\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1715): Zend_Db_Table_Abstract->_setupMetadata()\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1795): Zend_Db_Table_Abstract->_getCols()\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1965): Zend_Db_Table_Abstract->_setupPrimaryKey()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Select.php(199): Zend_Db_Table_Abstract->info()\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Select.php(155): Zend_Db_Table_Select->setTable(Object(Admin_Model_Negociacoes))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2037): Zend_Db_Table_Select->__construct(Object(Admin_Model_Negociacoes))\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Negociacoes.php(91): Zend_Db_Table_Abstract->select()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/controllers/ClientesController.php(15): Admin_Model_Negociacoes->GetCliente(13)\n#13 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): Admin_ClientesController->excluirAction()\n#14 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'excluirAction\')\n#15 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#16 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#17 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#18 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#19 {main}', '{"module":"admin","controller":"clientes","action":"excluir","id":"13"}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'scho_comercial.negociacoes\' doesn\'t exist, query was: DESCRIBE `negociacoes`', '186.226.246.45', '{"status":"success","query":"186.226.246.45","region":"PR","lat":-24.488500595093,"country":"Brazil","countryCode":"BR","regionName":"Parana","city":"Pirai do Sul","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","zip":"84240","lon":-49.915298461914}', '2018-03-13 05:56:42'),
	(43, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'DESCRIBE `negoc...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Mysql.php(341): Zend_Db_Adapter_Pdo_Abstract->query(\'DESCRIBE `negoc...\')\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1671): Zend_Db_Adapter_Pdo_Mysql->describeTable(\'negociacoes\', NULL)\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1715): Zend_Db_Table_Abstract->_setupMetadata()\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1795): Zend_Db_Table_Abstract->_getCols()\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(1965): Zend_Db_Table_Abstract->_setupPrimaryKey()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Select.php(199): Zend_Db_Table_Abstract->info()\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Select.php(155): Zend_Db_Table_Select->setTable(Object(Admin_Model_Negociacoes))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2037): Zend_Db_Table_Select->__construct(Object(Admin_Model_Negociacoes))\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Negociacoes.php(91): Zend_Db_Table_Abstract->select()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/controllers/ClientesController.php(15): Admin_Model_Negociacoes->GetCliente(0)\n#13 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): Admin_ClientesController->excluirAction()\n#14 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'excluirAction\')\n#15 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#16 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#17 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#18 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#19 {main}', '{"module":"admin","controller":"clientes","action":"excluir","images":"404.png"}', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'scho_comercial.negociacoes\' doesn\'t exist, query was: DESCRIBE `negociacoes`', '186.226.246.45', '{"query":"186.226.246.45","country":"Brazil","region":"PR","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","timezone":"America\\/Sao_Paulo","status":"success","countryCode":"BR","regionName":"Parana","city":"Pirai do Sul","zip":"84240","lon":-49.915298461914,"lat":-24.488500595093,"isp":"6P Telecom Ltda"}', '2018-03-13 05:56:43'),
	(44, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(Object(Zend_Db_Table_Select), Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(3149): Zend_Db_Adapter_Pdo_Abstract->query(Object(Zend_Db_Table_Select))\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2873): Zend_Db_Table_Abstract->_fetch(Object(Zend_Db_Table_Select))\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(96): Zend_Db_Table_Abstract->fetchRow(Object(Zend_Db_Table_Select))\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/controllers/ClientesController.php(33): Admin_Model_Clientes->GetCliente(\'18\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): Admin_ClientesController->dadosAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'dadosAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"module":"admin","controller":"clientes","action":"dados","id":"18"}', 'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE (c.id = \'18\') LIMIT 1\' at line 3, query was: SELECT `c`.*, `e`.`cidade`, `e`.`estado`, `e`.`cep`, `e`.`rua`, `e`.`bairro`, `e`.`numero`, `a`.`ip`, `a`.`data_acesso` FROM `clientes` AS `c`\n LEFT JOIN `cliente_enderecos` AS `e` ON e.cliente = c.id\n LEFT JOIN `acessos` AS `a` ON a.usuario = c.id order by id DESC WHERE (c.id = \'18\') LIMIT 1', '186.226.246.45', '{"city":"Pirai do Sul","timezone":"America\\/Sao_Paulo","status":"success","query":"186.226.246.45","country":"Brazil","countryCode":"BR","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","region":"PR","regionName":"Parana","zip":"84240","lon":-49.915298461914,"lat":-24.488500595093,"as":"AS263011 6P Telecom Ltda"}', '2018-03-13 06:05:28'),
	(45, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(Object(Zend_Db_Table_Select), Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(3149): Zend_Db_Adapter_Pdo_Abstract->query(Object(Zend_Db_Table_Select))\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2873): Zend_Db_Table_Abstract->_fetch(Object(Zend_Db_Table_Select))\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(96): Zend_Db_Table_Abstract->fetchRow(Object(Zend_Db_Table_Select))\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/controllers/ClientesController.php(33): Admin_Model_Clientes->GetCliente(NULL)\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): Admin_ClientesController->dadosAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'dadosAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"module":"admin","controller":"clientes","action":"dados","images":"404.png"}', 'SQLSTATE[HY093]: Invalid parameter number: no parameters were bound, query was: SELECT `c`.*, `e`.`cidade`, `e`.`estado`, `e`.`cep`, `e`.`rua`, `e`.`bairro`, `e`.`numero`, `a`.`ip`, `a`.`data_acesso` FROM `clientes` AS `c`\n LEFT JOIN `cliente_enderecos` AS `e` ON e.cliente = c.id\n LEFT JOIN `acessos` AS `a` ON a.usuario = c.id order by id DESC WHERE (c.id = ?) LIMIT 1', '186.226.246.45', '{"regionName":"Parana","timezone":"America\\/Sao_Paulo","city":"Pirai do Sul","zip":"84240","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","status":"success","country":"Brazil","countryCode":"BR","region":"PR","lat":-24.488500595093,"as":"AS263011 6P Telecom Ltda","query":"186.226.246.45","lon":-49.915298461914}', '2018-03-13 06:05:29'),
	(46, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(Object(Zend_Db_Table_Select), Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(3149): Zend_Db_Adapter_Pdo_Abstract->query(Object(Zend_Db_Table_Select))\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2873): Zend_Db_Table_Abstract->_fetch(Object(Zend_Db_Table_Select))\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(97): Zend_Db_Table_Abstract->fetchRow(Object(Zend_Db_Table_Select))\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/controllers/ClientesController.php(33): Admin_Model_Clientes->GetCliente(\'18\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): Admin_ClientesController->dadosAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'dadosAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"module":"admin","controller":"clientes","action":"dados","id":"18"}', 'SQLSTATE[HY000]: General error: 1111 Invalid use of group function, query was: SELECT `c`.*, `e`.`cidade`, `e`.`estado`, `e`.`cep`, `e`.`rua`, `e`.`bairro`, `e`.`numero`, `a`.`ip`, `a`.`data_acesso` FROM `clientes` AS `c`\n LEFT JOIN `cliente_enderecos` AS `e` ON e.cliente = c.id\n LEFT JOIN `acessos` AS `a` ON a.usuario = c.id AND MAX(a.id) WHERE (c.id = \'18\') LIMIT 1', '186.226.246.45', '{"lon":-49.915298461914,"org":"6P Telecom Ltda","zip":"84240","lat":-24.488500595093,"city":"Pirai do Sul","query":"186.226.246.45","country":"Brazil","countryCode":"BR","regionName":"Parana","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","status":"success","region":"PR"}', '2018-03-13 06:07:36'),
	(47, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"org":"6P Telecom Ltda","country":"Brazil","city":"Pirai do Sul","zip":"84240","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","status":"success","countryCode":"BR","regionName":"Parana","lat":-24.488500595093,"lon":-49.915298461914,"query":"186.226.246.45","region":"PR"}', '2018-03-13 11:35:49'),
	(48, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"countryCode":"BR","region":"PR","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","status":"success","regionName":"Parana","isp":"6P Telecom Ltda","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","query":"186.226.246.45","country":"Brazil","city":"Pirai do Sul","zip":"84240","lat":-24.488500595093}', '2018-03-19 13:20:32'),
	(49, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"query":"186.226.246.45","country":"Brazil","regionName":"Parana","city":"Pirai do Sul","status":"success","countryCode":"BR","lat":-24.488500595093,"lon":-49.915298461914,"org":"6P Telecom Ltda","region":"PR","zip":"84240","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda"}', '2018-03-19 13:51:04'),
	(50, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"status":"success","lat":-24.488500595093,"as":"AS263011 6P Telecom Ltda","region":"PR","regionName":"Parana","org":"6P Telecom Ltda","query":"186.226.246.45","city":"Pirai do Sul","zip":"84240","country":"Brazil","countryCode":"BR","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda"}', '2018-03-21 10:53:50'),
	(51, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'UPDATE `cliente...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(1269): Zend_Db_Adapter_Pdo_Abstract->query(\'UPDATE `cliente...\', Array)\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2265): Zend_Db_Adapter_Abstract->update(\'clientes\', Array, \'id =19\')\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(120): Zend_Db_Table_Abstract->update(Array, \'id =19\')\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/default/controllers/CadastroController.php(118): Admin_Model_Clientes->update(Array, \'id =19\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): CadastroController->indexAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'indexAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"controller":"cadastro","action":"index","module":"default","tipo_pessoa":"1","nome1":"Diego","nome2":"Schoeler","doc1":"038.901.599-74","doc2":"3546053","cep":"84165-180","endereco":"Rua General Os\\u00f3rio","numero":"91","bairro":"Centro","cidade"', 'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE (id =19)\' at line 1, query was: UPDATE `clientes` SET  WHERE (id =19)', '186.226.246.45', '{"org":"6P Telecom Ltda","zip":"84240","lon":-49.915298461914,"as":"AS263011 6P Telecom Ltda","status":"success","countryCode":"BR","regionName":"Parana","country":"Brazil","isp":"6P Telecom Ltda","lat":-24.488500595093,"timezone":"America\\/Sao_Paulo","query":"186.226.246.45","region":"PR","city":"Pirai do Sul"}', '2018-03-21 10:58:12'),
	(52, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"country":"Brazil","region":"PR","city":"Pirai do Sul","lon":-49.915298461914,"isp":"6P Telecom Ltda","zip":"84240","as":"AS263011 6P Telecom Ltda","query":"186.226.246.45","lat":-24.488500595093,"status":"success","countryCode":"BR","regionName":"Parana","timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda"}', '2018-03-27 07:56:09'),
	(53, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"org":"6P Telecom Ltda","query":"186.226.246.45","country":"Brazil","countryCode":"BR","region":"PR","city":"Pirai do Sul","as":"AS263011 6P Telecom Ltda","status":"success","regionName":"Parana","zip":"84240","lat":-24.488500595093,"lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda"}', '2018-04-10 05:16:55'),
	(54, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'UPDATE `cliente...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(1269): Zend_Db_Adapter_Pdo_Abstract->query(\'UPDATE `cliente...\', Array)\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2265): Zend_Db_Adapter_Abstract->update(\'clientes\', Array, \'id =\'20\'\')\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(120): Zend_Db_Table_Abstract->update(Array, \'id =\'20\'\')\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/default/controllers/CadastroController.php(118): Admin_Model_Clientes->update(Array, \'id =\'20\'\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): CadastroController->indexAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'indexAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"controller":"cadastro","action":"index","module":"default","tipo_pessoa":"1","nome1":"Carlos","nome2":"silverio","doc1":"792.465.120-90","doc2":"10.037.606-7","cep":"84240-000","endereco":" ","numero":"30","bairro":"Centro","cidade":"Pira\\u00ed do ', 'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE (id =\'20\')\' at line 1, query was: UPDATE `clientes` SET  WHERE (id =\'20\')', '186.226.246.45', '{"status":"success","query":"186.226.246.45","regionName":"Parana","zip":"84240","lat":-24.488500595093,"org":"6P Telecom Ltda","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","country":"Brazil","lon":-49.915298461914,"countryCode":"BR","region":"PR","city":"Pirai do Sul","as":"AS263011 6P Telecom Ltda"}', '2018-04-10 14:05:03'),
	(55, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'UPDATE `cliente...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(1269): Zend_Db_Adapter_Pdo_Abstract->query(\'UPDATE `cliente...\', Array)\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2265): Zend_Db_Adapter_Abstract->update(\'clientes\', Array, \'id =21\')\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(120): Zend_Db_Table_Abstract->update(Array, \'id =21\')\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/default/controllers/CadastroController.php(119): Admin_Model_Clientes->update(Array, \'id =21\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): CadastroController->indexAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'indexAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"controller":"cadastro","action":"index","module":"default","nome1":"Carlos","nome2":"Silv\\u00e9rio","doc1":"792.465.120-90","doc2":"100376067","cep":"84290-000","endereco":" Rua Amalio domingues Guerreiro","numero":"230","bairro":"Centro","cidade":', 'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE (id =21)\' at line 1, query was: UPDATE `clientes` SET  WHERE (id =21)', '186.226.246.45', '{"regionName":"Parana","lon":-49.915298461914,"as":"AS263011 6P Telecom Ltda","timezone":"America\\/Sao_Paulo","country":"Brazil","region":"PR","city":"Pirai do Sul","zip":"84240","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","status":"success","query":"186.226.246.45","countryCode":"BR","lat":-24.488500595093}', '2018-04-10 14:18:48'),
	(56, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'UPDATE `cliente...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(1269): Zend_Db_Adapter_Pdo_Abstract->query(\'UPDATE `cliente...\', Array)\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2265): Zend_Db_Adapter_Abstract->update(\'clientes\', Array, \'id =\'.22.\'\')\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(120): Zend_Db_Table_Abstract->update(Array, \'id =\'.22.\'\')\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/default/controllers/CadastroController.php(119): Admin_Model_Clientes->update(Array, \'id =\'.22.\'\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): CadastroController->indexAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'indexAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"controller":"cadastro","action":"index","module":"default","nome1":"Carlos","nome2":"Silv\\u00e9rio","doc1":"792.465.120-90","doc2":"1111111111111111111111","cep":"84290-000","endereco":" Rua Santana","numero":"230","bairro":"Centro","cidade":"Sapop', 'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE (id =\'.22.\')\' at line 1, query was: UPDATE `clientes` SET  WHERE (id =\'.22.\')', '186.226.246.45', '{"country":"Brazil","lon":-49.915298461914,"isp":"6P Telecom Ltda","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","countryCode":"BR","region":"PR","city":"Pirai do Sul","zip":"84240","lat":-24.488500595093,"status":"success","query":"186.226.246.45","regionName":"Parana","timezone":"America\\/Sao_Paulo"}', '2018-04-10 14:23:09'),
	(57, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'UPDATE `cliente...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(1269): Zend_Db_Adapter_Pdo_Abstract->query(\'UPDATE `cliente...\', Array)\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2265): Zend_Db_Adapter_Abstract->update(\'clientes\', Array, \'id =\'23\'\')\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(120): Zend_Db_Table_Abstract->update(Array, \'id =\'23\'\')\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/default/controllers/CadastroController.php(119): Admin_Model_Clientes->update(Array, \'id =\'23\'\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): CadastroController->indexAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'indexAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"controller":"cadastro","action":"index","module":"default","tipo_pessoa":"1","nome1":"Carlos","nome2":"Silv\\u00e9rio","doc1":"792.465.120-90","doc2":"11111111111111111111","cep":"84240-000","endereco":" ","numero":"","bairro":"Centro","cidade":"Pir', 'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE (id =\'23\')\' at line 1, query was: UPDATE `clientes` SET  WHERE (id =\'23\')', '186.226.246.45', '{"lon":-49.915298461914,"country":"Brazil","countryCode":"BR","region":"PR","lat":-24.488500595093,"timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","status":"success","query":"186.226.246.45","zip":"84240","isp":"6P Telecom Ltda","regionName":"Parana","city":"Pirai do Sul"}', '2018-04-10 14:24:25'),
	(58, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'UPDATE `cliente...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(1269): Zend_Db_Adapter_Pdo_Abstract->query(\'UPDATE `cliente...\', Array)\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2265): Zend_Db_Adapter_Abstract->update(\'clientes\', Array, \'id =?\')\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(120): Zend_Db_Table_Abstract->update(Array, \'id =?\')\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/default/controllers/CadastroController.php(119): Admin_Model_Clientes->update(Array, \'id =?\', \'24\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): CadastroController->indexAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'indexAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"controller":"cadastro","action":"index","module":"default","tipo_pessoa":"1","nome1":"Carlos","nome2":"Carlos","doc1":"792.465.120-90","doc2":"111111111111111","cep":"84240-000","endereco":" Santana","numero":"230","bairro":"Cnetrnt","cidade":"Pira', 'SQLSTATE[HY093]: Invalid parameter number: no parameters were bound, query was: UPDATE `clientes` SET  WHERE (id =?)', '186.226.246.45', '{"status":"success","org":"6P Telecom Ltda","query":"186.226.246.45","regionName":"Parana","zip":"84240","lat":-24.488500595093,"countryCode":"BR","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","country":"Brazil","region":"PR","city":"Pirai do Sul","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo"}', '2018-04-10 14:26:59'),
	(59, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Statement.php(605): Zend_Db_Statement_Pdo->_execute(Array)\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(959): Zend_Db_Statement->execute(Array)\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Pdo/Abstract.php(475): Zend_Db_Adapter_Abstract->query(\'UPDATE `cliente...\', Array)\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Adapter/Abstract.php(1269): Zend_Db_Adapter_Pdo_Abstract->query(\'UPDATE `cliente...\', Array)\n#4 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Db/Table/Abstract.php(2265): Zend_Db_Adapter_Abstract->update(\'clientes\', Array, \'id =25\')\n#5 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/admin/models/Clientes.php(120): Zend_Db_Table_Abstract->update(Array, \'id =25\')\n#6 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/application/modules/default/controllers/CadastroController.php(120): Admin_Model_Clientes->update(Array, \'id =25\')\n#7 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Action.php(1031): CadastroController->indexAction()\n#8 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Dispatcher/Standard.php(615): Zend_Controller_Action->dispatch(\'indexAction\')\n#9 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#10 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#11 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#12 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#13 {main}', '{"controller":"cadastro","action":"index","module":"default","nome1":"Carlos","nome2":"Silv\\u00e9rio","doc1":"792.465.120-90","doc2":"1111111111111111111","cep":"84240-000","endereco":" Santana","numero":"230","bairro":"Centro","cidade":"Pira\\u00ed d', 'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE (id =25)\' at line 1, query was: UPDATE `clientes` SET  WHERE (id =25)', '186.226.246.45', '{"as":"AS263011 6P Telecom Ltda","lat":-24.488500595093,"org":"6P Telecom Ltda","zip":"84240","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","countryCode":"BR","region":"PR","city":"Pirai do Sul","query":"186.226.246.45","regionName":"Parana","lon":-49.915298461914,"status":"success","country":"Brazil"}', '2018-04-10 14:29:09'),
	(60, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '168.194.160.166', '{"lon":-49.25,"city":"Curitiba","zip":"","org":"COPEL Telecom","status":"success","country":"Brazil","region":"PR","regionName":"Parana","timezone":"America\\/Sao_Paulo","isp":"COPEL Telecom","query":"168.194.160.166","countryCode":"BR","lat":-25.416700363159,"as":"AS14868 COPEL Telecomunica\\u00e7\\u00f5es S.A."}', '2018-04-15 11:32:52'),
	(61, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"org":"6P Telecom Ltda","zip":"84240","status":"success","region":"PR","city":"Pirai do Sul","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","query":"186.226.246.45","country":"Brazil","lat":-24.488500595093,"countryCode":"BR","regionName":"Parana","lon":-49.915298461914}', '2018-04-17 06:41:11'),
	(62, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"resources","action":"demos","module":"default"}', 'Invalid controller specified (resources)', '186.226.246.45', '{"city":"Pirai do Sul","lon":-49.915298461914,"countryCode":"BR","region":"PR","zip":"84240","timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","query":"186.226.246.45","regionName":"Parana","country":"Brazil","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","status":"success","lat":-24.488500595093}', '2018-04-17 06:49:37'),
	(63, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"resources","action":"demos","module":"default"}', 'Invalid controller specified (resources)', '186.226.246.45', '{"query":"186.226.246.45","org":"6P Telecom Ltda","region":"PR","regionName":"Parana","as":"AS263011 6P Telecom Ltda","status":"success","country":"Brazil","countryCode":"BR","zip":"84240","lon":-49.915298461914,"isp":"6P Telecom Ltda","city":"Pirai do Sul","lat":-24.488500595093,"timezone":"America\\/Sao_Paulo"}', '2018-04-17 06:58:21'),
	(64, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"resources","action":"demos","module":"default"}', 'Invalid controller specified (resources)', '186.226.246.45', '{"countryCode":"BR","city":"Pirai do Sul","lon":-49.915298461914,"org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","timezone":"America\\/Sao_Paulo","status":"success","country":"Brazil","zip":"84240","isp":"6P Telecom Ltda","query":"186.226.246.45","region":"PR","regionName":"Parana","lat":-24.488500595093}', '2018-04-17 07:00:22'),
	(65, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"resources","action":"demos","module":"default"}', 'Invalid controller specified (resources)', '186.226.246.45', '{"query":"186.226.246.45","countryCode":"BR","region":"PR","city":"Pirai do Sul","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","zip":"84240","lat":-24.488500595093,"status":"success","country":"Brazil","regionName":"Parana","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda"}', '2018-04-17 07:01:58'),
	(66, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"resources","action":"demos","module":"default"}', 'Invalid controller specified (resources)', '186.226.246.45', '{"country":"Brazil","region":"PR","zip":"84240","lat":-24.488500595093,"timezone":"America\\/Sao_Paulo","city":"Pirai do Sul","org":"6P Telecom Ltda","status":"success","query":"186.226.246.45","regionName":"Parana","lon":-49.915298461914,"as":"AS263011 6P Telecom Ltda","countryCode":"BR","isp":"6P Telecom Ltda"}', '2018-04-17 07:04:29'),
	(67, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"resources","action":"demos","module":"default"}', 'Invalid controller specified (resources)', '186.226.246.45', '{"org":"6P Telecom Ltda","countryCode":"BR","lat":-24.488500595093,"region":"PR","regionName":"Parana","city":"Pirai do Sul","zip":"84240","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","status":"success","query":"186.226.246.45","country":"Brazil","lon":-49.915298461914,"as":"AS263011 6P Telecom Ltda"}', '2018-04-17 07:05:13'),
	(68, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"zip":"84240","as":"AS263011 6P Telecom Ltda","lon":-49.915298461914,"isp":"6P Telecom Ltda","org":"6P Telecom Ltda","status":"success","countryCode":"BR","regionName":"Parana","city":"Pirai do Sul","lat":-24.488500595093,"query":"186.226.246.45","country":"Brazil","region":"PR","timezone":"America\\/Sao_Paulo"}', '2018-04-17 07:08:14'),
	(69, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"region":"PR","city":"Pirai do Sul","status":"success","query":"186.226.246.45","country":"Brazil","regionName":"Parana","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","zip":"84240","lat":-24.488500595093,"isp":"6P Telecom Ltda","countryCode":"BR"}', '2018-04-17 07:32:43'),
	(70, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"countryCode":"BR","timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","status":"success","country":"Brazil","lon":-49.915298461914,"zip":"84240","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","query":"186.226.246.45","region":"PR","regionName":"Parana","city":"Pirai do Sul","lat":-24.488500595093}', '2018-04-19 11:51:44'),
	(71, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"lon":-49.915298461914,"countryCode":"BR","city":"Pirai do Sul","zip":"84240","org":"6P Telecom Ltda","region":"PR","query":"186.226.246.45","regionName":"Parana","isp":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","status":"success","lat":-24.488500595093,"timezone":"America\\/Sao_Paulo","country":"Brazil"}', '2018-04-24 07:38:35'),
	(72, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"a","action":"index","module":"default"}', 'Invalid controller specified (a)', '186.226.246.45', '{"city":"Pirai do Sul","zip":"84240","lat":-24.488500595093,"isp":"6P Telecom Ltda","org":"6P Telecom Ltda","regionName":"Parana","timezone":"America\\/Sao_Paulo","as":"AS263011 6P Telecom Ltda","query":"186.226.246.45","countryCode":"BR","region":"PR","lon":-49.915298461914,"status":"success","country":"Brazil"}', '2018-04-24 10:54:55'),
	(73, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"countryCode":"BR","zip":"84240","lat":-24.488500595093,"isp":"6P Telecom Ltda","status":"success","region":"PR","city":"Pirai do Sul","regionName":"Parana","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","org":"6P Telecom Ltda","query":"186.226.246.45","country":"Brazil","as":"AS263011 6P Telecom Ltda"}', '2018-04-25 05:35:20'),
	(74, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"query":"186.226.246.45","countryCode":"BR","region":"PR","regionName":"Parana","zip":"84240","status":"success","lon":-49.915298461914,"as":"AS263011 6P Telecom Ltda","city":"Pirai do Sul","timezone":"America\\/Sao_Paulo","isp":"6P Telecom Ltda","org":"6P Telecom Ltda","country":"Brazil","lat":-24.488500595093}', '2018-04-25 10:29:09'),
	(75, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"assets","action":"css","module":"default"}', 'Invalid controller specified (assets)', '186.226.246.45', '{"isp":"6P Telecom Ltda","regionName":"Parana","zip":"84240","lat":-24.488500595093,"lon":-49.915298461914,"status":"success","country":"Brazil","countryCode":"BR","org":"6P Telecom Ltda","timezone":"America\\/Sao_Paulo","as":"AS263011 6P Telecom Ltda","query":"186.226.246.45","region":"PR","city":"Pirai do Sul"}', '2018-04-25 10:40:15'),
	(76, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"query":"186.226.246.45","country":"Brazil","region":"PR","lat":-24.488500595093,"isp":"6P Telecom Ltda","status":"success","regionName":"Parana","zip":"84240","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","countryCode":"BR","org":"6P Telecom Ltda","city":"Pirai do Sul","as":"AS263011 6P Telecom Ltda"}', '2018-10-10 05:36:01'),
	(77, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"regionName":"Parana","city":"Pirai do Sul","zip":"84240","isp":"6P Telecom Ltda","country":"Brazil","countryCode":"BR","region":"PR","lat":-24.488500595093,"query":"186.226.246.45","org":"6P Telecom Ltda","lon":-49.915298461914,"timezone":"America\\/Sao_Paulo","as":"AS263011 6P Telecom Ltda","status":"success"}', '2018-10-10 11:11:49'),
	(78, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"adm","action":"default","js":"FormUsuario.js","module":"default"}', 'Invalid controller specified (adm)', '186.226.246.45', '{"query":"186.226.246.45","zip":"84240","lat":-24.488500595093,"isp":"6P Telecom Ltda","timezone":"America\\/Sao_Paulo","status":"success","country":"Brazil","region":"PR","city":"Pirai do Sul","lon":-49.915298461914,"countryCode":"BR","regionName":"Parana","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda"}', '2018-10-10 11:12:37'),
	(79, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"countryCode":"BR","regionName":"Parana","city":"Pirai do Sul","lat":-24.488500595093,"timezone":"America\\/Sao_Paulo","country":"Brazil","as":"AS263011 6P Telecom Ltda","zip":"84240","region":"PR","org":"6P Telecom Ltda","query":"186.226.246.45","lon":-49.915298461914,"isp":"6P Telecom Ltda","status":"success"}', '2018-10-10 14:28:17'),
	(80, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"query":"186.226.246.45","country":"Brazil","zip":"84240","status":"success","timezone":"America\\/Sao_Paulo","city":"Pirai do Sul","region":"PR","regionName":"Parana","lat":-24.488500595093,"isp":"6P Telecom Ltda","org":"6P Telecom Ltda","countryCode":"BR","as":"AS263011 6P Telecom Ltda","lon":-49.915298461914}', '2018-10-11 12:52:12'),
	(81, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"status":"success","country":"Brazil","org":"6P Telecom Ltda","as":"AS263011 6P Telecom Ltda","countryCode":"BR","lon":-49.915298461914,"query":"186.226.246.45","region":"PR","regionName":"Parana","timezone":"America\\/Sao_Paulo","city":"Pirai do Sul","zip":"84240","lat":-24.488500595093,"isp":"6P Telecom Ltda"}', '2019-04-18 11:17:05'),
	(82, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"favicon.ico","action":"index","module":"default"}', 'Invalid controller specified (favicon.ico)', '186.226.246.45', '{"lat":-24.488500595093,"timezone":"America\\/Sao_Paulo","as":"AS263011 6P Telecom Ltda","status":"success","countryCode":"BR","regionName":"Parana","city":"Pirai do Sul","org":"6P Telecom Ltda","query":"186.226.246.45","country":"Brazil","region":"PR","zip":"84240","lon":-49.915298461914,"isp":"6P Telecom Ltda"}', '2019-04-25 05:10:36'),
	(83, '#0 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Controller/Front.php(1907): Zend_Controller_Dispatcher_Standard->dispatch(Object(Zend_Controller_Request_Http), Object(Zend_Controller_Response_Http))\n#1 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application/Bootstrap/Bootstrap.php(201): Zend_Controller_Front->dispatch()\n#2 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/library/Zend/Application.php(731): Zend_Application_Bootstrap_Bootstrap->run()\n#3 /home/storage/5/d4/02/schoeler1/public_html/comercializacao/index.php(33): Zend_Application->run()\n#4 {main}', '{"controller":"assets","action":"css","module":"default"}', 'Invalid controller specified (assets)', '186.226.246.45', NULL, '2019-09-19 06:58:34');
/*!40000 ALTER TABLE `erros` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.forma_pagamento
CREATE TABLE IF NOT EXISTS `forma_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `ativo` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela scho_comercial.forma_pagamento: 3 rows
/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;
INSERT INTO `forma_pagamento` (`id`, `nome`, `ativo`) VALUES
	(1, 'Depósito Bancario', 1),
	(3, 'Dinheiro ', 1),
	(5, 'Boleto', 1);
/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(40) DEFAULT NULL,
  `controller` varchar(40) DEFAULT NULL,
  `action` varchar(40) DEFAULT NULL,
  `parametros` text,
  `ip` varchar(50) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.logs: ~85 rows (aproximadamente)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`id`, `module`, `controller`, `action`, `parametros`, `ip`, `data`, `user`) VALUES
	(1, 'admin', 'configuracoes', 'whats-app', '{"module":"admin","controller":"configuracoes","action":"whats-app","id":"1","nome":"Sistema","ddi":"55","dd":"43","numero":"984257131","Atualizar":"Atualizar"}', '186.226.246.143', '2018-02-13 05:08:39', 3),
	(2, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"17","id":"17","preco":"3.40","condicao_pagamento":"3","forma_pagamento":"3","descricao_pagamento":"Apos o recebimento do produto","tributacao":"A negociar","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"20\\/02\\/2018","comentario":"","Salvar":"Salvar"}', '', '2018-02-13 07:14:25', 9),
	(3, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"17","id":"19","endereco":"1","preco":"3.10","condicao_pagamento":"1","forma_pagamento":"1","descricao_pagamento":"Apos o recebimento do produto","tributacao":"A negociar","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"20\\/02\\/2018","comentario":"","Salvar":"Salvar"}', '186.226.246.45', '2018-02-13 07:36:43', 9),
	(4, 'admin', 'contatos', 'responder', '{"module":"admin","controller":"contatos","action":"responder","id":"3","nome_cliente":"Thiago Carlos","email_cliente":"thiago@schoeler.com.br","resposta":"Bom dia,\\r\\n\\r\\nTemos sim, R$ 100 a unidade para retirar.","Enviar":"Enviar"}', '186.226.246.45', '2018-02-13 07:40:23', 9),
	(5, 'admin', 'menus', 'editar', '{"module":"admin","controller":"menus","action":"editar","id":"143","nome":"Listar ","descricao":"Lista de Formas de Pagamento","pai":"141","permissao":["1","2","3"],"icone":"fa fa-bars","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-13 07:49:24', 3),
	(6, 'admin', 'menus', 'editar', '{"module":"admin","controller":"menus","action":"editar","id":"142","nome":"Adicionar","descricao":"Cadastro de Formas de pagamento","pai":"141","permissao":["1","2","3"],"icone":"fa fa-plus-square-o","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-13 07:49:35', 3),
	(7, 'admin', 'menus', 'editar', '{"module":"admin","controller":"menus","action":"editar","id":"141","nome":"Forma de Pag.","descricao":"Gerenciamento de Formas de Pagamento","pai":"","permissao":["1","2","3"],"icone":"fa fa-random","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-13 07:49:48', 3),
	(8, 'admin', 'menus', 'editar', '{"module":"admin","controller":"menus","action":"editar","id":"146","nome":"Listar","descricao":"Listar Condi\\u00e7\\u00e3o de pagamento","pai":"144","permissao":["1","2","3"],"icone":"fa fa-bars","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-13 07:50:44', 3),
	(9, 'admin', 'menus', 'editar', '{"module":"admin","controller":"menus","action":"editar","id":"145","nome":"Adicionar","descricao":"Cadastro de Condi\\u00e7\\u00e3o de Pagamento","pai":"144","permissao":["1","2","3"],"icone":"fa fa-plus-square-o","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-13 07:51:03', 3),
	(10, 'admin', 'menus', 'editar', '{"module":"admin","controller":"menus","action":"editar","id":"144","nome":"Condi\\u00e7\\u00e3o Pag.","descricao":"Gerenciamento de Condi\\u00e7\\u00e3o de pagamento","pai":"","permissao":["1","2","3"],"icone":"fa fa-refresh","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-13 07:51:16', 3),
	(11, 'admin', 'produtos', 'Adicionar', '{"module":"admin","controller":"produtos","action":"Adicionar","vinculo":"20180214093238","id":"","categoria":"1","nome":"110 -115 kg","vendedores":["8"],"descricao":"","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-14 06:33:09', 8),
	(12, 'admin', 'forma', 'adicionar', '{"module":"admin","controller":"forma","action":"adicionar","id":"","nome":"Boleto","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-14 06:34:05', 8),
	(13, 'admin', 'login', 'index', '{"module":"admin","controller":"login","action":"index","login":"paulo","senha":"paulo1024"}', '186.226.246.45', '2018-02-14 06:41:41', 8),
	(14, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"22","id":"22","endereco":"4","preco":"3.22","condicao_pagamento":"3","forma_pagamento":"3","descricao_pagamento":"Pagamento ap\\u00f3s o recebimento do produto","tributacao":"Sem FUNRURAL\\/com ICMS","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"23\\/02\\/2018","comentario":"Recebimento em horario comercial","Salvar":"Salvar"}', '186.226.246.45', '2018-02-14 06:49:09', 8),
	(15, 'admin', 'menus', 'adicionar', '{"module":"admin","controller":"menus","action":"adicionar","id":"","nome":"Convidar","descricao":"Convidar clientes para utilizar a Plataforma de Comercializa\\u00e7\\u00e3o Eletronica","pai":"","permissao":["1","2","3"],"icone":"fa fa-sign-in","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-14 08:54:10', 3),
	(16, 'admin', 'convites', 'index', '{"module":"admin","controller":"convites","action":"index","id":"","email":"thiago@schoeler.com.br","mensagem":"<p>Convido&nbsp; para a utiliza&ccedil;&atilde;o do sistema de Comercializa&ccedil;&atilde;o Eletr&ocirc;nica<\\/p>\\r\\n","Enviar":"Enviar"}', '186.226.246.45', '2018-02-14 09:18:50', 3),
	(17, 'admin', 'convites', 'index', '{"module":"admin","controller":"convites","action":"index","id":"","email":"thiago@schoeler.com.br","mensagem":"<p>Convido para a utiliza&ccedil;&atilde;o do sistema de Comercializa&ccedil;&atilde;o Eletr&ocirc;nica.<\\/p>\\r\\n","Enviar":"Enviar"}', '186.226.246.45', '2018-02-14 10:53:54', 3),
	(18, 'admin', 'convites', 'index', '{"module":"admin","controller":"convites","action":"index","id":"","email":"thiago@schoeler.com.br","mensagem":"<p>Convido para a utiliza&ccedil;&atilde;o do sistema de Comercializa&ccedil;&atilde;o Eletr&ocirc;nica.<\\/p>\\r\\n","Enviar":"Enviar"}', '186.226.246.45', '2018-02-14 10:55:23', 3),
	(19, 'admin', 'convites', 'index', '{"module":"admin","controller":"convites","action":"index","id":"","email":"paulo@schoeler.com.br","mensagem":"<p>Convido para a utiliza&ccedil;&atilde;o do sistema de Comercializa&ccedil;&atilde;o Eletr&ocirc;nica.<\\/p>\\r\\n","Enviar":"Enviar"}', '186.226.246.45', '2018-02-14 10:56:53', 3),
	(20, 'admin', 'contatos', 'responder', '{"module":"admin","controller":"contatos","action":"responder","id":"8","nome_cliente":"Paulo Eduardo","email_cliente":"paulo@schoeler.com.br","resposta":"pede pela plataforma","Enviar":"Enviar"}', '186.226.246.45', '2018-02-22 07:42:13', 8),
	(21, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"24","id":"24","endereco":"8","preco":"4.00","condicao_pagamento":"2","forma_pagamento":"5","descricao_pagamento":"7dd","tributacao":"Sem FUNRURAL\\/sem ICMS","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"27\\/02\\/2018","comentario":"Caro cliente tenho somente como entregar at\\u00e9 15:00 hrs do dia 27\\/02.","Salvar":"Salvar"}', '186.226.246.45', '2018-02-22 07:47:07', 8),
	(22, 'admin', 'produtos', 'excluir', '{"module":"admin","controller":"produtos","action":"excluir","id":"3"}', '186.226.246.45', '2018-02-22 07:51:19', 8),
	(23, 'admin', 'faturamento', 'adicionar', '{"module":"admin","controller":"faturamento","action":"adicionar","id":"","nome":"","doc1":"44","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:07:46', 3),
	(24, 'admin', 'faturamento', 'adicionar', '{"module":"admin","controller":"faturamento","action":"adicionar","id":"","nome":"","doc1":"44","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:08:21', 3),
	(25, 'admin', 'faturamento', 'adicionar', '{"module":"admin","controller":"faturamento","action":"adicionar","id":"","nome":"Auri Schoeler","doc1":"296.149.969-00","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:34:46', 3),
	(26, 'admin', 'faturamento', 'adicionar', '{"module":"admin","controller":"faturamento","action":"adicionar","id":"","nome":"Diego Schoeler","doc1":"038.901.599-74","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:35:31', 3),
	(27, 'admin', 'menus', 'adicionar', '{"module":"admin","controller":"menus","action":"adicionar","id":"","nome":"Dados Faturamento","descricao":"Gerenciamento de dados para faturamento","pai":"","permissao":["1","2","3"],"icone":"fa fa-credit-card","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:50:16', 3),
	(28, 'admin', 'menus', 'editar', '{"module":"admin","controller":"menus","action":"editar","id":"149","nome":"Faturamento","descricao":"Gerenciamento de dados para faturamento","pai":"","permissao":["1","2","3"],"icone":"fa fa-credit-card","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:50:32', 3),
	(29, 'admin', 'menus', 'adicionar', '{"module":"admin","controller":"menus","action":"adicionar","id":"","nome":"Adicionar","descricao":"cadastro de dados para faturamento","pai":"149","permissao":["1","2","3"],"icone":"fa fa-plus-circle","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:51:36', 3),
	(30, 'admin', 'menus', 'adicionar', '{"module":"admin","controller":"menus","action":"adicionar","id":"","nome":"Listar","descricao":"Lista de dados para faturamento","pai":"149","permissao":["1","2","3"],"icone":"fa fa-bars","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:52:08', 3),
	(31, 'admin', 'faturamento', 'adicionar', '{"module":"admin","controller":"faturamento","action":"adicionar","id":"","nome":"ss","doc1":"11.111.111\\/1111","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:52:26', 3),
	(32, 'admin', 'faturamento', 'editar', '{"module":"admin","controller":"faturamento","action":"editar","id":"3","nome":"ssfff","doc1":"111.111.111-111","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:52:35', 3),
	(33, 'admin', 'faturamento', 'excluir', '{"module":"admin","controller":"faturamento","action":"excluir","id":"4"}', '186.226.246.45', '2018-02-27 08:52:42', 3),
	(34, 'admin', 'faturamento', 'excluir', '{"module":"admin","controller":"faturamento","action":"excluir","id":"3"}', '186.226.246.45', '2018-02-27 08:53:01', 3),
	(35, 'admin', 'faturamento', 'adicionar', '{"module":"admin","controller":"faturamento","action":"adicionar","id":"","nome":"frgch","doc1":"11.111.111\\/1111","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:53:12', 3),
	(36, 'admin', 'faturamento', 'editar', '{"module":"admin","controller":"faturamento","action":"editar","id":"5","nome":"frgchjjjj","doc1":"111.111.111-111","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:53:22', 3),
	(37, 'admin', 'faturamento', 'editar', '{"module":"admin","controller":"faturamento","action":"editar","id":"6","nome":"frgchjjjjercwhyuv","doc1":"111.111.111-111","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:55:17', 3),
	(38, 'admin', 'faturamento', 'editar', '{"module":"admin","controller":"faturamento","action":"editar","id":"6","nome":"frgchjjjjercwhyuv","doc1":"111.111.111-111","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 08:57:03', 3),
	(39, 'admin', 'faturamento', 'editar', '{"module":"admin","controller":"faturamento","action":"editar","id":"6","nome":"frgchjjjjhjyuky","doc1":"111.111.111-111","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 09:00:43', 3),
	(40, 'admin', 'faturamento', 'excluir', '{"module":"admin","controller":"faturamento","action":"excluir","id":"6"}', '186.226.246.45', '2018-02-27 09:00:54', 3),
	(41, 'admin', 'faturamento', 'editar', '{"module":"admin","controller":"faturamento","action":"editar","id":"5","nome":"teste","doc1":"111.111.111-111","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-27 09:01:01', 3),
	(42, 'admin', 'faturamento', 'excluir', '{"module":"admin","controller":"faturamento","action":"excluir","id":"5"}', '186.226.246.45', '2018-02-27 09:01:08', 3),
	(43, 'admin', 'configuracoes', 'whats-app', '{"module":"admin","controller":"configuracoes","action":"whats-app","id":"1","nome":"Sistema","ddi":"55","dd":"43","numero":"984257131","Atualizar":"Atualizar"}', '186.226.246.45', '2018-02-27 10:20:57', 3),
	(44, 'admin', 'faturamento', 'adicionar', '{"module":"admin","controller":"faturamento","action":"adicionar","id":"","nome":"Pirai do Sul","doc1":"82.875.998\\/0003-02","doc2":"","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-28 06:45:41', 3),
	(45, 'admin', 'faturamento', 'adicionar', '{"module":"admin","controller":"faturamento","action":"adicionar","id":"","nome":"Jaguariaiva","doc1":"82.875.998\\/0004","doc2":"","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-02-28 06:46:50', 3),
	(46, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"27","id":"27","endereco":"10","preco":"4.00","condicao_pagamento":"1","forma_pagamento":"5","descricao_pagamento":"3 dias","tributacao":"Sem FUNRURAL\\/sem ICMS","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"06\\/03\\/2018","hora_inicial":"08:00:00","hora_final":"18:00:00","comentario":"","Salvar":"Salvar"}', '186.226.246.45', '2018-02-28 13:07:58', 8),
	(47, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"29","id":"29","endereco":"10","preco":"3.80","condicao_pagamento":"3","forma_pagamento":"3","descricao_pagamento":"Pagamento ap\\u00f3s o recebiemnto da Carga","tributacao":"Sem FUNRURAL\\/sem ICMS","descricao_tributaria":"Nada a falar","transporte":"Entregue por Schoeler","data_entrega":"07\\/03\\/2018","hora_inicial":"07:00:00","hora_final":"17:00:00","comentario":"Entrega n\\u00e3o ser\\u00e1 atrasada","Salvar":"Salvar"}', '186.226.246.45', '2018-02-28 13:58:44', 8),
	(48, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"29","id":"31","endereco":"10","preco":"3.78","condicao_pagamento":"1","forma_pagamento":"1","descricao_pagamento":"Pagamento ap\\u00f3s o recebiemnto da Carga","tributacao":"Sem FUNRURAL\\/sem ICMS","descricao_tributaria":"Nada a falar","transporte":"Entregue por Schoeler","data_entrega":"07\\/03\\/2018","hora_inicial":"07:00:00","hora_final":"17:00:00","comentario":"Ultima proposta","Salvar":"Salvar"}', '186.226.246.45', '2018-03-01 04:59:14', 3),
	(49, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"34","id":"34","endereco":"10","preco":"3.60","condicao_pagamento":"3","forma_pagamento":"5","descricao_pagamento":"","tributacao":"Sem FUNRURAL\\/sem ICMS","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"04\\/04\\/2018","hora_inicial":"03:00:00","hora_final":"12:00:00","comentario":"","Salvar":"Salvar"}', '186.226.246.45', '2018-03-01 06:46:31', 8),
	(50, 'admin', 'configuracoes', 'sistema', '{"module":"admin","controller":"configuracoes","action":"sistema","id":"2","cor_layout":"43a800","Salvar":"Salvar"}', '186.226.246.45', '2018-03-01 07:35:07', 8),
	(51, 'admin', 'configuracoes', 'sistema', '{"module":"admin","controller":"configuracoes","action":"sistema","id":"2","cor_layout":"005da8","Salvar":"Salvar"}', '186.226.246.45', '2018-03-01 07:35:15', 8),
	(52, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","id":"13"}', '186.226.246.45', '2018-03-13 05:56:42', 3),
	(53, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","images":"404.png"}', '186.226.246.45', '2018-03-13 05:56:43', 3),
	(54, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","id":"13"}', '186.226.246.45', '2018-03-13 05:58:25', 3),
	(55, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","id":"1"}', '186.226.246.45', '2018-03-13 05:58:30', 3),
	(56, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","id":"14"}', '186.226.246.45', '2018-03-13 05:58:34', 3),
	(57, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","id":"18"}', '186.226.246.45', '2018-03-13 05:58:47', 3),
	(58, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","id":"18"}', '186.226.246.45', '2018-03-13 05:58:51', 3),
	(59, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","id":"16"}', '186.226.246.45', '2018-03-13 05:58:59', 3),
	(60, 'admin', 'clientes', 'excluir', '{"module":"admin","controller":"clientes","action":"excluir","id":"15"}', '186.226.246.45', '2018-03-13 05:59:03', 3),
	(61, 'admin', 'categorias', 'adicionar', '{"module":"admin","controller":"categorias","action":"adicionar","id":"","nome":"Marr\\u00e3s","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-03-21 11:00:53', 8),
	(62, 'admin', 'produtos', 'Adicionar', '{"module":"admin","controller":"produtos","action":"Adicionar","vinculo":"20180321140058","id":"","categoria":"3","nome":"DB90","vendedores":["8","9"],"descricao":"","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-03-21 11:03:16', 8),
	(63, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"36","id":"36","endereco":"11","preco":"3.40","condicao_pagamento":"3","forma_pagamento":"5","descricao_pagamento":"Pagamento ap\\u00f3s o recebimento da carga","tributacao":"Com FUNRURAL\\/sem ICMS","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"31\\/03\\/2018","hora_inicial":"08:00:00","hora_final":"22:00:00","comentario":"","Salvar":"Salvar"}', '186.226.246.45', '2018-03-21 11:20:59', 8),
	(64, 'admin', 'condicao', 'editar', '{"module":"admin","controller":"condicao","action":"editar","id":"1","nome":"Antecipado","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 05:44:55', 8),
	(65, 'admin', 'condicao', 'editar', '{"module":"admin","controller":"condicao","action":"editar","id":"2","nome":"03 dias","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 05:45:34', 8),
	(66, 'admin', 'condicao', 'editar', '{"module":"admin","controller":"condicao","action":"editar","id":"3","nome":"07 dias","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 05:45:52', 8),
	(67, 'admin', 'condicao', 'adicionar', '{"module":"admin","controller":"condicao","action":"adicionar","id":"","nome":"10 dias","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 05:46:07', 8),
	(68, 'admin', 'condicao', 'adicionar', '{"module":"admin","controller":"condicao","action":"adicionar","id":"","nome":"14 dias","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 05:46:20', 8),
	(69, 'admin', 'condicao', 'adicionar', '{"module":"admin","controller":"condicao","action":"adicionar","id":"","nome":"21 dias","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 05:46:27', 8),
	(70, 'admin', 'forma', 'excluir', '{"module":"admin","controller":"forma","action":"excluir","id":"2"}', '168.194.160.166', '2018-10-10 05:48:36', 8),
	(71, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"38","id":"38","endereco":"8","preco":"4.00","condicao_pagamento":"1","forma_pagamento":"1","descricao_pagamento":"","tributacao":"Sem FUNRURAL\\/sem ICMS","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"11\\/10\\/2018","hora_inicial":"08:00:00","hora_final":"10:00:00","comentario":"Tenho que fazer carga fechada, se levar 100 cabe\\u00e7as ter\\u00e1 acr\\u00e9scimo de frete.","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:01:38', 8),
	(72, 'admin', 'categorias', 'editar', '{"module":"admin","controller":"categorias","action":"editar","id":"2","nome":"Matriz descarte para abate","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:06:08', 8),
	(73, 'admin', 'categorias', 'adicionar', '{"module":"admin","controller":"categorias","action":"adicionar","id":"","nome":"Matriz descarte para abate(Macho)","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:06:55', 8),
	(74, 'admin', 'produtos', 'editar', '{"module":"admin","controller":"produtos","action":"editar","id":"1","vinculo":"20181010090759","categoria":"2","nome":"Macho","vendedores":["8"],"descricao":"<p>Machos reprodutores da central de s&ecirc;mem descartados&nbsp;para abate.<\\/p>\\r\\n","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:09:21', 8),
	(75, 'admin', 'produtos', 'Adicionar', '{"module":"admin","controller":"produtos","action":"Adicionar","vinculo":"20181010090942","id":"","categoria":"2","nome":"F\\u00eamea","vendedores":["8"],"descricao":"<p>F&ecirc;meas reprodutoras descartes.<\\/p>\\r\\n","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:10:44', 8),
	(76, 'admin', 'categorias', 'excluir', '{"module":"admin","controller":"categorias","action":"excluir","id":"4"}', '168.194.160.166', '2018-10-10 06:11:36', 8),
	(77, 'admin', 'produtos', 'editar', '{"module":"admin","controller":"produtos","action":"editar","id":"4","vinculo":"20181010091329","categoria":"3","nome":"DB - 90","vendedores":["8"],"descricao":"<p>Descrever animal.<\\/p>\\r\\n","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:16:24', 8),
	(78, 'admin', 'produtos', 'Adicionar', '{"module":"admin","controller":"produtos","action":"Adicionar","vinculo":"20181010091638","id":"","categoria":"3","nome":"DB - 20","vendedores":["8"],"descricao":"<p>Colocar caracteristica do animal.<\\/p>\\r\\n","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:21:15', 8),
	(79, 'admin', 'produtos', 'Adicionar', '{"module":"admin","controller":"produtos","action":"Adicionar","vinculo":"20181010092119","id":"","categoria":"3","nome":"DB - 25","vendedores":["8"],"descricao":"<p>Caracteristica do su&iacute;no.<\\/p>\\r\\n","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:22:02', 8),
	(80, 'admin', 'produtos', 'Adicionar', '{"module":"admin","controller":"produtos","action":"Adicionar","vinculo":"20181010092207","id":"","categoria":"3","nome":"DB - 30","vendedores":["8"],"descricao":"<p>Caracter&iacute;stica do su&iacute;no<\\/p>\\r\\n","ativo":"1","Salvar":"Salvar"}', '168.194.160.166', '2018-10-10 06:22:42', 8),
	(81, 'admin', 'usuarios', 'editar', '{"module":"admin","controller":"usuarios","action":"editar","id":"11","nome":"Priscila","login":"priscila","senha":"","email":"priscila@schoeler.com.br","celular":"","perfil":"1","MAX_FILE_SIZE":"52428800","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-10-10 11:12:55', 3),
	(82, 'admin', 'usuarios', 'adicionar', '{"module":"admin","controller":"usuarios","action":"adicionar","id":"","nome":"Silv\\u00e9rio","login":"silverio","senha":"123456","email":"thiagocarlos@outlook.com.br","celular":"43984257131","perfil":"1","MAX_FILE_SIZE":"52428800","status":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-10-10 11:14:54', 3),
	(83, 'admin', 'produtos', 'editar', '{"module":"admin","controller":"produtos","action":"editar","id":"8","vinculo":"20181010141554","categoria":"3","nome":"DB - 30","vendedores":["8","12"],"descricao":"<p>Caracter&iacute;stica do su&iacute;no<\\/p>\\r\\n","ativo":"1","Salvar":"Salvar"}', '186.226.246.45', '2018-10-10 11:15:59', 3),
	(84, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"40","id":"40","endereco":"9","preco":"4.00","condicao_pagamento":"1","forma_pagamento":"1","descricao_pagamento":"","tributacao":"A negociar","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"17\\/10\\/2018","hora_inicial":"08:00:00","hora_final":"16:00:00","comentario":"N\\u00e3o Atrasar na entrega","Salvar":"Salvar"}', '', '2018-10-10 11:31:22', 12),
	(85, 'admin', 'negociacoes', 'responder', '{"module":"admin","controller":"negociacoes","action":"responder","negociacao":"40","id":"42","endereco":"9","preco":"3.95","condicao_pagamento":"1","forma_pagamento":"3","descricao_pagamento":"","tributacao":"A negociar","descricao_tributaria":"","transporte":"Entregue por Schoeler","data_entrega":"17\\/10\\/2018","hora_inicial":"08:00:00","hora_final":"16:00:00","comentario":"Pagamento avista","Salvar":"Salvar"}', '', '2018-10-10 11:54:59', 12);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pai` int(11) DEFAULT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `descricao` mediumtext,
  `icone` varchar(180) DEFAULT NULL,
  `controller` varchar(80) NOT NULL,
  `action` varchar(80) NOT NULL,
  `ordem` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela scho_comercial.menus: ~35 rows (aproximadamente)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `pai`, `nome`, `descricao`, `icone`, `controller`, `action`, `ordem`, `status`) VALUES
	(4, NULL, 'Usuario', 'Gerenciamento de Usuarios', 'fa fa-user', 'usuarios', '', 11, 1),
	(14, NULL, 'Itens de Menu', 'Gerenciamento de Menu', 'fa fa-external-link', 'menus', '', 15, 1),
	(15, 14, 'adicionar', 'Cadastro de Item de menu', 'fa fa-plus', 'menus', 'adicionar', NULL, 1),
	(18, 14, 'Listar', 'Listar Itens de Menu', 'fa fa-bars', 'menus', 'index', NULL, 1),
	(19, 4, 'adicionar', 'Cadastro de usuario', 'fa fa-plus', 'usuarios', 'adicionar', NULL, 1),
	(20, 4, 'Listar', 'Listar usuarios', 'fa fa-bars', 'usuarios', 'index', NULL, 1),
	(72, NULL, 'Configurações', 'Gerenciamento de Configurações', 'fa fa-gear', 'configuracoes', 'index', 14, 1),
	(73, 72, 'Email', 'Configuração de email', 'fa fa-envelope-o', 'configuracoes', 'email', NULL, 1),
	(91, 72, 'Whatsapp', 'Whatsapp', 'fa fa-comments-o', 'configuracoes', 'whats-app', NULL, 1),
	(104, NULL, 'Permissões', 'Gerenciamento de Permissões', 'fa fa-eye-slash', 'permissoes', 'index', 16, 1),
	(105, 104, 'Definir Permissão', 'Definição de permissão de Menu', 'fa fa-exclamation-circle', 'permissoes', 'index', NULL, 1),
	(106, 104, 'Atualizar Módulos', 'Atualização de Novos Módulos', 'fa fa-spinner', 'permissoes', 'atualizar', NULL, 1),
	(107, 104, 'Perfis', 'Gerenciamento de Perfis', 'fa fa-key', 'perfis', 'index', NULL, 1),
	(108, 104, 'Adicionar Perfil', 'Cadastro de Perfil', 'fa fa-plus-circle', 'perfis', 'adicionar', NULL, 1),
	(117, NULL, 'Logs', 'Listagens de logs', 'fa fa-exclamation-circle', 'logs', '', 18, 1),
	(123, 72, 'Sistema', 'Configurações do Sistema', 'fa fa-cog', 'configuracoes', 'sistema', NULL, 1),
	(127, NULL, 'Produtos', 'Gerenciamento de Produtos', 'fa fa-shopping-cart', 'produtos', '', 4, 1),
	(128, 127, 'Adicionar', 'Cadastro de Produto', 'fa fa-plus-square-o', 'produtos', 'Adicionar', NULL, 1),
	(129, 127, 'Listar', 'Listagem de Produtos', 'fa fa-bars', 'produtos', '', NULL, 1),
	(135, NULL, 'Categorias', 'Gerenciamento de Categorias de Produtos', 'fa fa-retweet', 'categorias', '', 1, 1),
	(136, 135, 'Adicionar', 'Cadastro de Categorias', 'fa fa-plus-circle', 'categorias', 'adicionar', NULL, 1),
	(138, 135, 'Listar', 'Lista de Categorias', 'fa fa-bars', 'categorias', '', NULL, 1),
	(139, NULL, 'Clientes', 'Gerenciamento de Clientes', 'fa fa-users', 'clientes', '', 8, 1),
	(140, NULL, 'Negociações', 'Gerenciamento de Negociações', 'fa fa-legal', 'negociacoes', '', 10, 1),
	(141, NULL, 'Forma de Pag.', 'Gerenciamento de Formas de Pagamento', 'fa fa-random', 'forma', '', 6, 1),
	(142, 141, 'Adicionar', 'Cadastro de Formas de pagamento', 'fa fa-plus-square-o', 'forma', 'adicionar', NULL, 1),
	(143, 141, 'Listar ', 'Lista de Formas de Pagamento', 'fa fa-bars', 'forma', '', NULL, 1),
	(144, NULL, 'Condição Pag.', 'Gerenciamento de Condição de pagamento', 'fa fa-refresh', 'condicao', '', 5, 1),
	(145, 144, 'Adicionar', 'Cadastro de Condição de Pagamento', 'fa fa-plus-square-o', 'condicao', 'adicionar', NULL, 1),
	(146, 144, 'Listar', 'Listar Condição de pagamento', 'fa fa-bars', 'condicao', '', NULL, 1),
	(147, NULL, 'Contatos', 'Gerenciamento de Mensagens', 'fa fa-comments', 'contatos', '', 13, 1),
	(148, NULL, 'Convidar', 'Convidar clientes para utilizar a Plataforma de Comercialização Eletronica', 'fa fa-sign-in', 'convites', '', 3, 1),
	(149, NULL, 'Faturamento', 'Gerenciamento de dados para faturamento', 'fa fa-credit-card', 'faturamento', '', 0, 1),
	(150, 149, 'Adicionar', 'cadastro de dados para faturamento', 'fa fa-plus-circle', 'faturamento', 'adicionar', NULL, 1),
	(151, 149, 'Listar', 'Lista de dados para faturamento', 'fa fa-bars', 'faturamento', '', NULL, 1);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.menus_perfil
CREATE TABLE IF NOT EXISTS `menus_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controlador` varchar(80) DEFAULT NULL,
  `acao` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.menus_perfil: ~74 rows (aproximadamente)
/*!40000 ALTER TABLE `menus_perfil` DISABLE KEYS */;
INSERT INTO `menus_perfil` (`id`, `controlador`, `acao`) VALUES
	(1, 'acessos', 'index'),
	(2, 'categorias', 'index'),
	(3, 'categorias', 'adicionar'),
	(4, 'categorias', 'editar'),
	(5, 'categorias', 'excluir'),
	(6, 'clientes', 'index'),
	(7, 'clientes', 'excluir'),
	(8, 'clientes', 'dados'),
	(9, 'condicao', 'index'),
	(10, 'condicao', 'adicionar'),
	(11, 'condicao', 'editar'),
	(12, 'condicao', 'excluir'),
	(13, 'configuracoes', 'whatsapp'),
	(14, 'configuracoes', 'atualizarcode'),
	(15, 'configuracoes', 'enviamensagem'),
	(16, 'configuracoes', 'email'),
	(17, 'configuracoes', 'sistema'),
	(18, 'contatos', 'index'),
	(19, 'contatos', 'responder'),
	(20, 'error', 'error'),
	(21, 'forma', 'index'),
	(22, 'forma', 'adicionar'),
	(23, 'forma', 'editar'),
	(24, 'forma', 'excluir'),
	(25, 'geral', 'topo'),
	(26, 'geral', 'menu'),
	(27, 'geral', 'menulateral'),
	(28, 'geral', 'rodape'),
	(29, 'index', 'index'),
	(30, 'index', 'ajaxordem'),
	(31, 'index', 'ajaxsesao'),
	(32, 'login', 'index'),
	(33, 'login', 'logout'),
	(34, 'login', 'requerersenha'),
	(35, 'login', 'recuperarsenha'),
	(36, 'logs', 'index'),
	(37, 'menus', 'index'),
	(38, 'menus', 'adicionar'),
	(39, 'menus', 'editar'),
	(40, 'menus', 'excluir'),
	(41, 'negociacoes', 'index'),
	(42, 'negociacoes', 'aprovar'),
	(43, 'negociacoes', 'visualizar'),
	(44, 'negociacoes', 'responder'),
	(45, 'negociacoes', 'removerproposta'),
	(46, 'notificacao', 'index'),
	(47, 'perfis', 'index'),
	(48, 'perfis', 'adicionar'),
	(49, 'perfis', 'editar'),
	(50, 'perfis', 'excluir'),
	(51, 'produtos', 'index'),
	(52, 'produtos', 'adicionar'),
	(53, 'produtos', 'editar'),
	(54, 'produtos', 'excluir'),
	(55, 'produtos', 'ajaximagens'),
	(56, 'produtos', 'ajaxdeletaimagem'),
	(57, 'produtos', 'ajaxsetacapa'),
	(58, 'produtos', 'ajaxsetaorder'),
	(59, 'seo', 'index'),
	(60, 'seo', 'ajaxacoes'),
	(61, 'seo', 'ajaxpopulate'),
	(62, 'usuarios', 'index'),
	(63, 'usuarios', 'adicionar'),
	(64, 'usuarios', 'editar'),
	(65, 'usuarios', 'excluir'),
	(66, 'usuarios', 'perfil'),
	(67, 'usuarios', 'perfileditar'),
	(68, 'convites', 'index'),
	(69, 'convites', 'excluir'),
	(70, 'faturamento', 'index'),
	(71, 'faturamento', 'adicionar'),
	(72, 'faturamento', 'editar'),
	(73, 'faturamento', 'excluir'),
	(74, 'negociacoes', 'liberar');
/*!40000 ALTER TABLE `menus_perfil` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.menus_perfil_permissoes
CREATE TABLE IF NOT EXISTS `menus_perfil_permissoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` int(11) NOT NULL,
  `perfil` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.menus_perfil_permissoes: ~213 rows (aproximadamente)
/*!40000 ALTER TABLE `menus_perfil_permissoes` DISABLE KEYS */;
INSERT INTO `menus_perfil_permissoes` (`id`, `menu`, `perfil`) VALUES
	(2, 1, 1),
	(3, 1, 2),
	(4, 1, 3),
	(5, 3, 1),
	(6, 3, 2),
	(7, 3, 3),
	(8, 4, 3),
	(9, 4, 2),
	(10, 4, 1),
	(11, 5, 1),
	(12, 5, 2),
	(13, 5, 3),
	(14, 2, 3),
	(15, 2, 2),
	(16, 2, 1),
	(17, 8, 1),
	(18, 8, 2),
	(19, 8, 3),
	(20, 7, 3),
	(21, 6, 3),
	(22, 6, 2),
	(23, 7, 2),
	(24, 7, 1),
	(25, 6, 1),
	(26, 10, 1),
	(27, 10, 2),
	(28, 10, 3),
	(29, 11, 3),
	(30, 11, 2),
	(31, 11, 1),
	(32, 12, 1),
	(33, 12, 2),
	(34, 12, 3),
	(35, 9, 3),
	(36, 9, 2),
	(37, 9, 1),
	(38, 14, 1),
	(39, 14, 2),
	(40, 14, 3),
	(41, 16, 3),
	(42, 16, 2),
	(43, 16, 1),
	(44, 15, 1),
	(45, 15, 2),
	(46, 15, 3),
	(47, 17, 3),
	(48, 17, 2),
	(49, 17, 1),
	(50, 13, 1),
	(51, 13, 2),
	(52, 13, 3),
	(53, 18, 1),
	(54, 19, 1),
	(55, 19, 2),
	(56, 18, 2),
	(57, 18, 3),
	(58, 19, 3),
	(59, 20, 1),
	(60, 20, 2),
	(61, 20, 3),
	(62, 22, 1),
	(63, 22, 2),
	(64, 22, 3),
	(65, 23, 3),
	(66, 23, 2),
	(67, 23, 1),
	(68, 24, 1),
	(69, 24, 2),
	(70, 24, 3),
	(71, 21, 3),
	(72, 21, 2),
	(73, 21, 1),
	(74, 26, 1),
	(75, 26, 2),
	(76, 26, 3),
	(77, 27, 3),
	(78, 27, 2),
	(79, 27, 1),
	(80, 28, 1),
	(81, 28, 2),
	(82, 28, 3),
	(83, 25, 3),
	(84, 25, 2),
	(85, 25, 1),
	(86, 30, 1),
	(87, 30, 2),
	(88, 30, 3),
	(89, 31, 3),
	(90, 31, 2),
	(91, 31, 1),
	(92, 29, 1),
	(93, 29, 2),
	(94, 29, 3),
	(95, 32, 1),
	(96, 33, 1),
	(97, 32, 2),
	(98, 33, 2),
	(99, 33, 3),
	(100, 32, 3),
	(101, 35, 3),
	(102, 34, 3),
	(103, 34, 2),
	(104, 35, 2),
	(105, 35, 1),
	(106, 34, 1),
	(107, 36, 1),
	(108, 36, 2),
	(109, 36, 3),
	(110, 38, 1),
	(111, 38, 2),
	(112, 38, 3),
	(113, 39, 3),
	(114, 40, 3),
	(115, 37, 3),
	(116, 37, 2),
	(117, 40, 2),
	(118, 39, 2),
	(119, 39, 1),
	(120, 40, 1),
	(121, 37, 1),
	(122, 42, 1),
	(123, 42, 2),
	(124, 42, 3),
	(125, 41, 3),
	(126, 41, 2),
	(127, 41, 1),
	(128, 45, 2),
	(129, 45, 3),
	(130, 45, 1),
	(131, 44, 1),
	(132, 44, 2),
	(133, 44, 3),
	(134, 43, 3),
	(135, 43, 2),
	(136, 43, 1),
	(137, 46, 1),
	(138, 46, 2),
	(139, 46, 3),
	(140, 48, 1),
	(141, 48, 2),
	(142, 48, 3),
	(143, 49, 3),
	(144, 49, 2),
	(145, 49, 1),
	(146, 50, 1),
	(147, 50, 2),
	(148, 50, 3),
	(149, 47, 3),
	(150, 47, 2),
	(151, 47, 1),
	(152, 52, 1),
	(153, 52, 2),
	(154, 52, 3),
	(155, 56, 3),
	(156, 56, 2),
	(157, 56, 1),
	(158, 55, 1),
	(159, 55, 2),
	(160, 55, 3),
	(161, 57, 3),
	(162, 57, 2),
	(163, 57, 1),
	(164, 58, 1),
	(165, 58, 2),
	(166, 58, 3),
	(167, 53, 3),
	(168, 53, 2),
	(169, 53, 1),
	(170, 54, 1),
	(171, 54, 2),
	(172, 54, 3),
	(173, 51, 3),
	(174, 51, 2),
	(175, 51, 1),
	(176, 60, 1),
	(177, 61, 1),
	(178, 59, 1),
	(179, 59, 2),
	(180, 61, 2),
	(181, 60, 2),
	(182, 60, 3),
	(183, 61, 3),
	(184, 59, 3),
	(185, 63, 1),
	(186, 63, 2),
	(187, 63, 3),
	(188, 64, 3),
	(189, 64, 2),
	(190, 64, 1),
	(191, 65, 1),
	(192, 65, 2),
	(193, 65, 3),
	(194, 62, 3),
	(195, 62, 2),
	(196, 62, 1),
	(197, 66, 1),
	(198, 66, 2),
	(199, 66, 3),
	(200, 67, 3),
	(201, 67, 2),
	(202, 67, 1),
	(203, 71, 1),
	(204, 71, 2),
	(205, 71, 3),
	(206, 72, 3),
	(207, 72, 2),
	(208, 72, 1),
	(209, 73, 1),
	(210, 73, 2),
	(211, 73, 3),
	(212, 70, 3),
	(213, 70, 2),
	(214, 70, 1);
/*!40000 ALTER TABLE `menus_perfil_permissoes` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.menus_visualizacao
CREATE TABLE IF NOT EXISTS `menus_visualizacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` int(11) NOT NULL,
  `perfil` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu` (`menu`),
  KEY `perfil` (`perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=566 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.menus_visualizacao: ~91 rows (aproximadamente)
/*!40000 ALTER TABLE `menus_visualizacao` DISABLE KEYS */;
INSERT INTO `menus_visualizacao` (`id`, `menu`, `perfil`) VALUES
	(6, 14, 3),
	(7, 18, 3),
	(133, 105, 2),
	(148, 14, 3),
	(167, 105, 2),
	(168, 105, 3),
	(173, 107, 2),
	(174, 107, 3),
	(175, 108, 2),
	(176, 108, 3),
	(220, 15, 3),
	(221, 91, 3),
	(253, 73, 3),
	(441, 139, 1),
	(442, 139, 2),
	(443, 139, 3),
	(453, 140, 1),
	(454, 140, 2),
	(455, 140, 3),
	(470, 147, 1),
	(471, 147, 2),
	(472, 147, 3),
	(491, 138, 1),
	(492, 138, 2),
	(493, 138, 3),
	(494, 136, 1),
	(495, 136, 2),
	(496, 136, 3),
	(500, 129, 1),
	(501, 129, 2),
	(502, 129, 3),
	(503, 128, 1),
	(504, 128, 2),
	(505, 128, 3),
	(506, 127, 1),
	(507, 127, 2),
	(508, 127, 3),
	(509, 123, 1),
	(510, 123, 2),
	(511, 123, 3),
	(512, 117, 2),
	(513, 117, 3),
	(514, 106, 2),
	(515, 106, 3),
	(516, 104, 2),
	(517, 104, 3),
	(518, 72, 1),
	(519, 72, 2),
	(520, 72, 3),
	(521, 20, 1),
	(522, 20, 2),
	(523, 20, 3),
	(524, 19, 1),
	(525, 19, 2),
	(526, 19, 3),
	(527, 4, 1),
	(528, 4, 2),
	(529, 4, 3),
	(530, 135, 1),
	(531, 135, 2),
	(532, 135, 3),
	(533, 143, 1),
	(534, 143, 2),
	(535, 143, 3),
	(536, 142, 1),
	(537, 142, 2),
	(538, 142, 3),
	(539, 141, 1),
	(540, 141, 2),
	(541, 141, 3),
	(542, 146, 1),
	(543, 146, 2),
	(544, 146, 3),
	(545, 145, 1),
	(546, 145, 2),
	(547, 145, 3),
	(548, 144, 1),
	(549, 144, 2),
	(550, 144, 3),
	(551, 148, 1),
	(552, 148, 2),
	(553, 148, 3),
	(557, 149, 1),
	(558, 149, 2),
	(559, 149, 3),
	(560, 150, 1),
	(561, 150, 2),
	(562, 150, 3),
	(563, 151, 1),
	(564, 151, 2),
	(565, 151, 3);
/*!40000 ALTER TABLE `menus_visualizacao` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.negociacao_propostas
CREATE TABLE IF NOT EXISTS `negociacao_propostas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `negociacao` int(11) NOT NULL DEFAULT '0',
  `produto` int(11) NOT NULL DEFAULT '0',
  `vendedor` int(11) NOT NULL DEFAULT '0',
  `cliente` int(11) NOT NULL DEFAULT '0',
  `endereco` int(11) NOT NULL DEFAULT '0',
  `quantidade` int(11) NOT NULL DEFAULT '0',
  `preco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `condicao_pagamento` int(11) NOT NULL DEFAULT '0',
  `forma_pagamento` int(11) NOT NULL DEFAULT '0',
  `faturamento` int(11) NOT NULL DEFAULT '0',
  `descricao_pagamento` text COLLATE latin1_general_ci,
  `tributacao` varchar(70) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `descricao_tributaria` text COLLATE latin1_general_ci,
  `data_entrega` date NOT NULL,
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL,
  `comentario` text COLLATE latin1_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `fechada_por` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `enviada_por` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `data_proposta` datetime NOT NULL,
  `data_confirmacao` datetime NOT NULL,
  `ip` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `negociacao` (`negociacao`),
  KEY `produto` (`produto`),
  KEY `vendedor` (`vendedor`),
  KEY `condicao_pagamento` (`condicao_pagamento`),
  KEY `forma_pagamento` (`forma_pagamento`),
  KEY `cliente` (`cliente`),
  KEY `endereco` (`endereco`),
  KEY `faturamento` (`faturamento`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela scho_comercial.negociacao_propostas: 40 rows
/*!40000 ALTER TABLE `negociacao_propostas` DISABLE KEYS */;
INSERT INTO `negociacao_propostas` (`id`, `negociacao`, `produto`, `vendedor`, `cliente`, `endereco`, `quantidade`, `preco`, `condicao_pagamento`, `forma_pagamento`, `faturamento`, `descricao_pagamento`, `tributacao`, `descricao_tributaria`, `data_entrega`, `hora_inicial`, `hora_final`, `comentario`, `status`, `fechada_por`, `enviada_por`, `data_proposta`, `data_confirmacao`, `ip`) VALUES
	(1, 0, 2, 3, 12, 1, 180, 2.39, 3, 3, 2, 'Assim que receber o produto', 'Sem FUNRURAL/sem ICMS', 'teste', '2018-03-02', '00:00:00', '00:00:00', 'teste', 3, 'Vendedor', 'Cliente', '2018-02-01 14:11:08', '0000-00-00 00:00:00', ''),
	(2, 1, 2, 3, 12, 1, 180, 2.45, 3, 3, 2, 'Assim que receber o produto', 'Sem FUNRURAL/sem ICMS', 'teste', '2018-02-02', '00:00:00', '00:00:00', 'teste', 3, 'Vendedor', 'Vendedor', '2018-02-01 14:14:46', '0000-00-00 00:00:00', ''),
	(3, 1, 2, 3, 12, 1, 180, 2.40, 1, 1, 2, 'Assim que receber o produto', 'Sem FUNRURAL/sem ICMS', 'teste', '2018-02-02', '00:00:00', '00:00:00', 'teste', 3, 'Vendedor', 'Cliente', '2018-02-01 14:18:53', '0000-00-00 00:00:00', ''),
	(4, 0, 2, 3, 12, 1, 180, 2.50, 3, 3, 1, '', 'A negociar', '', '2018-04-06', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Cliente', '2018-04-01 14:35:36', '0000-00-00 00:00:00', ''),
	(5, 4, 2, 3, 12, 1, 180, 3.50, 3, 3, 1, '', 'A negociar', '', '2018-02-05', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Vendedor', '2018-02-01 14:37:39', '0000-00-00 00:00:00', ''),
	(6, 4, 2, 3, 12, 1, 180, 3.40, 1, 1, 1, '', 'A negociar', '', '2018-02-05', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Cliente', '2018-02-01 14:38:57', '0000-00-00 00:00:00', ''),
	(7, 4, 2, 3, 12, 1, 180, 3.38, 1, 1, 1, '', 'A negociar', '', '2018-02-05', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Cliente', '2018-02-01 15:04:29', '0000-00-00 00:00:00', ''),
	(8, 4, 2, 3, 12, 1, 180, 3.39, 1, 1, 1, '', 'A negociar', '', '2018-02-05', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Vendedor', '2018-02-01 15:10:56', '0000-00-00 00:00:00', ''),
	(12, 4, 2, 3, 12, 1, 180, 3.39, 1, 1, 1, NULL, 'A negociar', NULL, '2018-02-05', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Vendedor', '2018-02-01 15:10:56', '0000-00-00 00:00:00', ''),
	(13, 0, 2, 3, 12, 1, 180, 3.39, 1, 1, 2, NULL, 'A negociar', NULL, '2018-01-07', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Vendedor', '2018-01-01 15:10:56', '0000-00-00 00:00:00', ''),
	(14, 0, 2, 3, 12, 1, 180, 3.39, 1, 1, 2, NULL, 'A negociar', NULL, '2018-02-08', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Vendedor', '2018-02-01 15:10:56', '0000-00-00 00:00:00', ''),
	(15, 0, 2, 3, 12, 1, 180, 3.39, 1, 1, 1, NULL, 'A negociar', NULL, '2018-02-05', '00:00:00', '00:00:00', 'Estar no figorifico as 07H00', 3, 'Vendedor', 'Vendedor', '2018-03-01 15:10:56', '2018-02-28 15:33:31', ''),
	(16, 0, 2, 8, 12, 1, 180, 2.40, 3, 3, 0, 'Pagamento após o recebimento dos Suínos', 'Sem FUNRURAL/sem ICMS', '', '2018-02-20', '00:00:00', '00:00:00', 'Entrega em Horario Comercial', 3, 'Vendedor', 'Cliente', '2018-02-13 09:57:24', '0000-00-00 00:00:00', '186.226.246.45'),
	(17, 0, 2, 9, 12, 1, 180, 2.80, 3, 3, 0, 'Apos o recebimento do produto', 'A negociar', '', '2018-02-20', '00:00:00', '00:00:00', '', 3, 'Cliente', 'Cliente', '2018-02-13 10:13:12', '0000-00-00 00:00:00', '186.226.246.45'),
	(18, 17, 2, 9, 12, 1, 180, 3.40, 3, 3, 0, 'Apos o recebimento do produto', 'A negociar', '', '2018-02-20', '00:00:00', '00:00:00', '', 3, 'Cliente', 'Vendedor', '2018-02-13 10:14:25', '0000-00-00 00:00:00', '186.226.246.45'),
	(19, 17, 2, 9, 12, 1, 180, 2.99, 1, 1, 0, 'Apos o recebimento do produto', 'A negociar', '', '2018-02-20', '00:00:00', '00:00:00', '', 3, 'Cliente', 'Cliente', '2018-02-13 10:31:08', '0000-00-00 00:00:00', '186.226.246.45'),
	(20, 17, 2, 9, 12, 1, 180, 3.10, 1, 1, 0, 'Apos o recebimento do produto', 'A negociar', '', '2018-02-20', '00:00:00', '00:00:00', '', 3, 'Cliente', 'Vendedor', '2018-02-13 10:36:43', '0000-00-00 00:00:00', '186.226.246.45'),
	(21, 0, 2, 9, 12, 6, 92, 2.33, 3, 3, 0, 'Pagamento após o recebiemnto do produto', 'Sem FUNRURAL/sem ICMS', '', '2018-02-19', '00:00:00', '00:00:00', 'Recebiemnto em horario comercial', 1, '1', 'Cliente', '2018-02-13 12:08:13', '0000-00-00 00:00:00', '186.226.246.45'),
	(22, 0, 1, 8, 12, 4, 88, 2.22, 3, 3, 2, 'Pagamento após o recebimento do produto', 'Sem FUNRURAL/com ICMS', '', '2018-02-23', '00:00:00', '00:00:00', 'Recebimento em horario comercial', 3, 'Vendedor', 'Cliente', '2018-02-13 12:13:44', '2018-02-28 15:55:44', '186.226.246.45'),
	(23, 22, 1, 8, 12, 4, 88, 3.22, 3, 3, 2, 'Pagamento após o recebimento do produto', 'Sem FUNRURAL/com ICMS', '', '2018-02-23', '00:00:00', '00:00:00', 'Recebimento em horario comercial', 3, 'Cliente', 'Vendedor', '2018-02-14 09:49:09', '2018-02-28 15:55:44', '186.226.246.45'),
	(24, 0, 3, 8, 17, 8, 180, 3.80, 2, 1, 1, '21dd', 'Sem FUNRURAL/sem ICMS', '', '2018-02-27', '00:00:00', '00:00:00', '', 3, 'Vendedor', 'Cliente', '2018-02-22 10:40:28', '2018-02-28 15:55:35', '186.226.246.45'),
	(25, 24, 3, 8, 17, 8, 180, 4.00, 2, 5, 1, '7dd', 'Sem FUNRURAL/sem ICMS', '', '2018-02-27', '00:00:00', '00:00:00', 'Caro cliente tenho somente como entregar até 15:00 hrs do dia 27/02.', 3, 'Cliente', 'Vendedor', '2018-02-22 10:47:07', '2018-02-28 15:55:35', '186.226.246.45'),
	(26, 0, 1, 8, 12, 6, 180, 2.60, 3, 3, 3, 'Pagamento após o recebuimento da carga', 'Com FUNRURAL/com ICMS', 'nada no momento', '2018-03-05', '05:00:00', '19:00:00', 'Não recebemos após o fechamento do Frigorífico', 3, 'Vendedor', 'Cliente', '2018-02-28 11:27:25', '2018-02-28 15:55:11', '186.226.246.45'),
	(27, 0, 2, 8, 18, 10, 180, 3.50, 3, 3, 3, 'Pagamento após o recebimento', 'Sem FUNRURAL/sem ICMS', '', '2018-03-06', '08:00:00', '18:00:00', '', 3, 'Vendedor', 'Cliente', '2018-02-28 16:06:11', '2018-02-28 16:09:11', '186.226.246.45'),
	(28, 27, 2, 8, 18, 10, 180, 4.00, 1, 5, 3, '3 dias', 'Sem FUNRURAL/sem ICMS', '', '2018-03-06', '08:00:00', '18:00:00', '', 3, 'Cliente', 'Vendedor', '2018-02-28 16:07:58', '2018-02-28 16:09:11', '186.226.246.45'),
	(29, 0, 2, 3, 18, 10, 180, 3.40, 3, 3, 4, 'Pagamento após o recebiemnto da Carga', 'Sem FUNRURAL/sem ICMS', 'Nada a falar', '2018-03-07', '07:00:00', '17:00:00', 'Não atrasar na entrega', 3, 'Vendedor', 'Cliente', '2018-02-28 16:57:24', '2018-03-01 08:02:13', '186.226.246.45'),
	(30, 29, 2, 3, 18, 10, 180, 3.80, 3, 3, 4, 'Pagamento após o recebiemnto da Carga', 'Sem FUNRURAL/sem ICMS', 'Nada a falar', '2018-03-07', '07:00:00', '17:00:00', 'Entrega não será atrasada', 3, 'Vendedor', 'Vendedor', '2018-02-28 16:58:44', '2018-03-01 08:02:13', '186.226.246.45'),
	(31, 29, 2, 3, 18, 10, 180, 3.75, 1, 1, 4, 'Pagamento após o recebiemnto da Carga', 'Sem FUNRURAL/sem ICMS', 'Nada a falar', '2018-03-07', '07:00:00', '17:00:00', 'Então ficamos assim, aguardo o fechamento da negociação, caso contrario irei cancelar a negociação.', 3, 'Vendedor', 'Cliente', '2018-02-28 17:14:14', '2018-03-01 08:02:13', '186.226.246.45'),
	(32, 29, 2, 3, 18, 10, 180, 3.78, 1, 1, 4, 'Pagamento após o recebiemnto da Carga', 'Sem FUNRURAL/sem ICMS', 'Nada a falar', '2018-03-07', '07:00:00', '17:00:00', 'Ultima proposta', 3, 'Vendedor', 'Vendedor', '2018-03-01 07:59:14', '2018-03-01 08:02:13', '186.226.246.45'),
	(33, 29, 2, 3, 18, 10, 180, 3.77, 1, 1, 4, 'Pagamento após o recebiemnto da Carga', 'Sem FUNRURAL/sem ICMS', 'Nada a falar', '2018-03-07', '07:00:00', '17:00:00', 'ultimo retorno', 3, 'Vendedor', 'Cliente', '2018-03-01 08:00:30', '2018-03-01 08:02:13', '186.226.246.45'),
	(34, 0, 2, 8, 18, 10, 180, 3.40, 3, 3, 2, '', 'Sem FUNRURAL/sem ICMS', '', '2018-04-05', '03:00:00', '12:00:00', '', 3, 'Cliente', 'Cliente', '2018-03-01 09:45:01', '2018-03-01 09:48:21', '186.226.246.45'),
	(35, 34, 2, 8, 18, 10, 180, 3.60, 3, 5, 2, '', 'Sem FUNRURAL/sem ICMS', '', '2018-04-04', '03:00:00', '12:00:00', '', 3, 'Cliente', 'Vendedor', '2018-03-01 09:46:32', '2018-03-01 09:48:21', '186.226.246.45'),
	(36, 0, 2, 8, 19, 11, 180, 3.20, 3, 5, 1, 'Pagamento após o recebimento da carga', 'Com FUNRURAL/sem ICMS', '', '2018-03-29', '08:00:00', '22:00:00', '', 3, 'Cliente', 'Cliente', '2018-03-21 14:16:12', '2018-03-21 14:34:26', '186.226.246.45'),
	(37, 36, 2, 8, 19, 11, 180, 3.40, 3, 5, 1, 'Pagamento após o recebimento da carga', 'Com FUNRURAL/sem ICMS', '', '2018-03-31', '08:00:00', '22:00:00', '', 3, 'Cliente', 'Vendedor', '2018-03-21 14:20:59', '2018-03-21 14:34:26', '186.226.246.45'),
	(38, 0, 2, 8, 17, 8, 180, 4.00, 1, 1, 1, '', 'Sem FUNRURAL/sem ICMS', '', '2018-10-11', '08:00:00', '10:00:00', '100 cabeças', 3, 'Vendedor', 'Cliente', '2018-10-10 08:56:08', '2018-10-10 09:39:33', '186.226.246.45'),
	(39, 38, 2, 8, 17, 8, 180, 4.00, 1, 1, 1, '', 'Sem FUNRURAL/sem ICMS', '', '2018-10-11', '08:00:00', '10:00:00', 'Tenho que fazer carga fechada, se levar 100 cabeças terá acréscimo de frete.', 3, 'Vendedor', 'Vendedor', '2018-10-10 09:01:38', '2018-10-10 09:39:33', '186.226.246.45'),
	(40, 0, 8, 12, 18, 9, 180, 3.50, 1, 1, 0, '', 'A negociar', '', '2018-10-17', '08:00:00', '16:00:00', 'Não Atrasar na entrega', 3, 'Cliente', 'Cliente', '2018-10-10 14:17:41', '0000-00-00 00:00:00', '186.226.246.45'),
	(41, 40, 8, 12, 18, 9, 180, 4.00, 1, 1, 0, '', 'A negociar', '', '2018-10-17', '08:00:00', '16:00:00', 'Não Atrasar na entrega', 3, 'Cliente', 'Vendedor', '2018-10-10 14:31:22', '0000-00-00 00:00:00', '186.226.246.45'),
	(42, 40, 8, 12, 18, 9, 180, 3.90, 1, 3, 0, '', 'A negociar', '', '2018-10-17', '08:00:00', '16:00:00', 'Pagamento avista', 3, 'Cliente', 'Cliente', '2018-10-10 14:45:05', '0000-00-00 00:00:00', '186.226.246.45'),
	(43, 40, 8, 12, 18, 9, 180, 3.95, 1, 3, 0, '', 'A negociar', '', '2018-10-17', '08:00:00', '16:00:00', 'Pagamento avista', 3, 'Cliente', 'Vendedor', '2018-10-10 14:55:00', '0000-00-00 00:00:00', '186.226.246.45');
/*!40000 ALTER TABLE `negociacao_propostas` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.perfil
CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.perfil: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` (`id`, `nome`) VALUES
	(1, 'Vendedor'),
	(2, 'Gerente'),
	(3, 'Desenvolvedor');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) NOT NULL,
  `categoria` int(11) NOT NULL,
  `descricao` text,
  `peso_medio` varchar(50) DEFAULT NULL,
  `data_cadastro` datetime NOT NULL,
  `ativo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `categoria` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.produtos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`id`, `nome`, `categoria`, `descricao`, `peso_medio`, `data_cadastro`, `ativo`) VALUES
	(1, 'Macho', 2, '<p>Machos reprodutores da central de s&ecirc;mem descartados&nbsp;para abate.</p>\r\n', '220', '2018-01-24 08:57:12', 1),
	(2, 'Suínos', 1, '', '112', '2018-01-24 12:16:19', 1),
	(4, 'DB - 90', 3, '<p>Descrever animal.</p>\r\n', NULL, '2018-03-21 14:03:17', 1),
	(5, 'Fêmea', 2, '<p>F&ecirc;meas reprodutoras descartes.</p>\r\n', NULL, '2018-10-10 09:10:44', 1),
	(6, 'DB - 20', 3, '<p>Colocar caracteristica do animal.</p>\r\n', NULL, '2018-10-10 09:21:15', 1),
	(7, 'DB - 25', 3, '<p>Caracteristica do su&iacute;no.</p>\r\n', NULL, '2018-10-10 09:22:02', 1),
	(8, 'DB - 30', 3, '<p>Caracter&iacute;stica do su&iacute;no</p>\r\n', NULL, '2018-10-10 09:22:42', 1);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.produto_categorias
CREATE TABLE IF NOT EXISTS `produto_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(90) COLLATE latin1_general_ci NOT NULL,
  `ativo` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela scho_comercial.produto_categorias: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `produto_categorias` DISABLE KEYS */;
INSERT INTO `produto_categorias` (`id`, `nome`, `ativo`) VALUES
	(1, 'Abate', 1),
	(2, 'Matriz descarte para abate', 1),
	(3, 'Marrãs', 1);
/*!40000 ALTER TABLE `produto_categorias` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.produto_imagens
CREATE TABLE IF NOT EXISTS `produto_imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` bigint(20) DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  `capa` int(11) DEFAULT '0',
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unidade` (`produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.produto_imagens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `produto_imagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_imagens` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.produto_vendedores
CREATE TABLE IF NOT EXISTS `produto_vendedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` int(11) NOT NULL,
  `vendedor` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produto` (`produto`),
  KEY `vendedor` (`vendedor`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela scho_comercial.produto_vendedores: 10 rows
/*!40000 ALTER TABLE `produto_vendedores` DISABLE KEYS */;
INSERT INTO `produto_vendedores` (`id`, `produto`, `vendedor`) VALUES
	(15, 2, 8),
	(20, 1, 8),
	(16, 2, 9),
	(17, 3, 8),
	(23, 6, 8),
	(22, 4, 8),
	(21, 5, 8),
	(24, 7, 8),
	(26, 8, 8),
	(27, 8, 12);
/*!40000 ALTER TABLE `produto_vendedores` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL DEFAULT '0',
  `nome` varchar(90) NOT NULL DEFAULT '0',
  `senha` varchar(100) NOT NULL DEFAULT '0',
  `chave` varchar(150) NOT NULL DEFAULT '0',
  `perfil` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '0',
  `celular` varchar(50) NOT NULL DEFAULT '0',
  `imagem` varchar(100) DEFAULT '0',
  `ultimo_acesso` datetime DEFAULT NULL,
  `sessao` varchar(90) DEFAULT NULL,
  `ip` varchar(80) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_usuarios_permisoes` (`perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela scho_comercial.usuarios: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `login`, `nome`, `senha`, `chave`, `perfil`, `email`, `celular`, `imagem`, `ultimo_acesso`, `sessao`, `ip`, `status`) VALUES
	(3, 'thiago', 'Thiago Silvério', 'e10adc3949ba59abbe56e057f20f883e', '', 3, 'thiago@schoeler.com.br', '4384257131', '3a355z4d79.jpg', '2019-04-25 05:54:14', 'g6ocn847tddkcmg7amouinpul5', '186.226.246.45', 1),
	(8, 'paulo', 'Paulo Giehl', 'd2ec2530a2aec4740b6da63c92332c5b', '', 1, 'paulo@schoeler.com.br', '', '67bwwzw7wx.jpg', '2018-10-10 05:39:44', '2cfc99vdfpu18j988bcnvpkci3', '186.226.246.45', 1),
	(9, 'adriano', 'Adriano', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 'adriano@schoeler.com.br', '', 'z1z13z0y3a.jpg', '2018-02-13 07:35:52', '19sukh318rh2juql6le4nbfge2', '186.226.246.45', 1),
	(11, 'priscila', 'Priscila', '9f422e5b37f06e0abee32adf90c6f56f', '0', 1, 'priscila@schoeler.com.br', '', 'cc6bd73zaw.jpg', NULL, NULL, NULL, 1),
	(12, 'silverio', 'Silvério', 'e10adc3949ba59abbe56e057f20f883e', '0', 1, 'thiagocarlos@outlook.com.br', '43984257131', '0cbxcy7ya8.jpg', '2018-10-10 11:18:03', 'ke8opf3qn1qi8ppfagb60bv6q3', '186.226.246.45', 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Copiando estrutura para tabela scho_comercial.usuario_convites
CREATE TABLE IF NOT EXISTS `usuario_convites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `mensagem` text COLLATE latin1_general_ci NOT NULL,
  `data_envio` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela scho_comercial.usuario_convites: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario_convites` DISABLE KEYS */;
INSERT INTO `usuario_convites` (`id`, `usuario`, `email`, `mensagem`, `data_envio`) VALUES
	(1, 3, 'thiago@schoeler.com.br', '<p>Convido&nbsp; para a utiliza&ccedil;&atilde;o do sistema de Comercializa&ccedil;&atilde;o Eletr&ocirc;nica</p>\r\n', '2018-02-14 12:18:52'),
	(2, 3, 'thiago@schoeler.com.br', '<p>Convido para a utiliza&ccedil;&atilde;o do sistema de Comercializa&ccedil;&atilde;o Eletr&ocirc;nica.</p>\r\n', '2018-02-14 13:53:56'),
	(3, 3, 'thiago@schoeler.com.br', '<p>Convido para a utiliza&ccedil;&atilde;o do sistema de Comercializa&ccedil;&atilde;o Eletr&ocirc;nica.</p>\r\n', '2018-02-14 13:55:25'),
	(4, 3, 'paulo@schoeler.com.br', '<p>Convido para a utiliza&ccedil;&atilde;o do sistema de Comercializa&ccedil;&atilde;o Eletr&ocirc;nica.</p>\r\n', '2018-02-14 13:56:55');
/*!40000 ALTER TABLE `usuario_convites` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
