-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: commsys
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_comissoes`
--

DROP TABLE IF EXISTS `tb_comissoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comissoes` (
  `Status_com` varchar(20) NOT NULL,
  `Notafiscal_com` int(11) NOT NULL,
  `Dataemissao_com` date DEFAULT NULL,
  `valorcomissao_com` decimal(8,2) DEFAULT NULL,
  `valorpagto_com` decimal(8,2) DEFAULT NULL,
  `Pagaem_pdd` date NOT NULL,
  `Percentcomissao_pdd` int(11) NOT NULL,
  `Observacao_com` varchar(120) DEFAULT NULL,
  `Pedido_pdd` bigint(20) NOT NULL,
  `Parcelapaga_com` int(11) NOT NULL,
  `Codigo_for` int(11) NOT NULL,
  PRIMARY KEY (`Pedido_pdd`,`Codigo_for`,`Parcelapaga_com`),
  CONSTRAINT `tb_comissoes_ibfk_1` FOREIGN KEY (`Pedido_pdd`, `Codigo_for`) REFERENCES `tb_pedidos` (`Pedido_pdd`, `Codigo_for`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-02 17:38:50
