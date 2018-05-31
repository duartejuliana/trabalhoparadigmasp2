CREATE DATABASE  IF NOT EXISTS `trabalhoparadigmasp2`;
USE `trabalhoparadigmasp2`;
 SET NAMES utf8 ;


DROP TABLE IF EXISTS `vaga`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vaga` (
  `idvaga` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(500) DEFAULT NULL,
  `departamento` varchar(500) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `local` varchar(500) DEFAULT NULL,
  `bday` varchar(500) DEFAULT NULL,
  `escolaridade` varchar(500) DEFAULT NULL,
  `linguas` varchar(500) DEFAULT NULL,
  `experienciaminima` varchar(500) DEFAULT NULL,
  `outrasexigencias` varchar(500) DEFAULT NULL,
  `benecicios1` varchar(500) DEFAULT NULL,
  `pretensaosalarial` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `tel` varchar(500) DEFAULT NULL,
  `benecicios2` varchar(500) DEFAULT NULL,
  `benecicios3` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idvaga`)
);
