CREATE DATABASE  IF NOT EXISTS `trabalhoparadigmasp2`;
USE `trabalhoparadigmasp2`;

 SET NAMES utf8 ;

DROP TABLE IF EXISTS `curriculo`;

 SET character_set_client = utf8mb4 ;
CREATE TABLE `curriculo` (
  `idcurriculo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) DEFAULT NULL,
  `bday` varchar(500) DEFAULT NULL,
  `cpf` varchar(500) DEFAULT NULL,
  `ecivil` varchar(500) DEFAULT NULL,
  `genero` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `tel` varchar(500) DEFAULT NULL,
  `formacao` varchar(500) DEFAULT NULL,
  `experiencia1` varchar(500) DEFAULT NULL,
  `experiencia2` varchar(500) DEFAULT NULL,
  `experiencia3` varchar(500) DEFAULT NULL,
  `idioma1` varchar(500) DEFAULT NULL,
  `idioma2` varchar(500) DEFAULT NULL,
  `pretensaosalarial` varchar(500) DEFAULT NULL,
  `maisinfo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idcurriculo`)
)