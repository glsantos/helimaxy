CREATE DATABASE  IF NOT EXISTS `db_helimaxy` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_helimaxy`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: db_helimaxy
-- ------------------------------------------------------
-- Server version	5.6.10-log

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
-- Table structure for table `tbl_administrador`
--

DROP TABLE IF EXISTS `tbl_administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_administrador` (
  `id_administrador` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `id_instrutor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_administrador`),
  KEY `fk_id_instrutor_admin_idx` (`id_instrutor`),
  CONSTRAINT `fk_id_instrutor_admin` FOREIGN KEY (`id_instrutor`) REFERENCES `tbl_instrutor` (`id_instrutor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_administrador`
--

LOCK TABLES `tbl_administrador` WRITE;
/*!40000 ALTER TABLE `tbl_administrador` DISABLE KEYS */;
INSERT INTO `tbl_administrador` VALUES (1,'glsantos','123',1);
/*!40000 ALTER TABLE `tbl_administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aeronave`
--

DROP TABLE IF EXISTS `tbl_aeronave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_aeronave` (
  `id_aeronave` int(11) NOT NULL AUTO_INCREMENT,
  `prefixo` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_aeronave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aeronave`
--

LOCK TABLES `tbl_aeronave` WRITE;
/*!40000 ALTER TABLE `tbl_aeronave` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_aeronave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aluno`
--

DROP TABLE IF EXISTS `tbl_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_aluno` (
  `id_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `cod_anac` int(11) DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `estado_civil` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `escolaridade` varchar(45) DEFAULT NULL,
  `naturalidade` varchar(45) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `nascimento` varchar(45) DEFAULT NULL,
  `nome_pai` varchar(45) DEFAULT NULL,
  `nome_mae` varchar(45) DEFAULT NULL,
  `tipo_sangue` varchar(45) DEFAULT NULL,
  `alergias` text,
  `foto` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluno`
--

LOCK TABLES `tbl_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_aluno` DISABLE KEYS */;
INSERT INTO `tbl_aluno` VALUES (1,123,'magno','M','C','asdas','asdasd','1','askdjas','b','2017-09-06','asdas','asdasd','A','asdasd','testeteste.png'),(2,123,'Gabriel Santos','Masculino','Solteiro','123','123','3ºGrau Incompleto','Carapicuiba-SP','brasileira','2000-70-14','Paulo Luiz','Maria Cicera','A','não','teste'),(3,NULL,'wesley','M','C','asdas','asdasd','1','askdjas','b','2017-09-05','asdas','asdasd','A','asdasd',NULL),(4,NULL,'wesley','M','C','asdas','asdasd','1','askdjas','b','2017-09-06','asdas','asdasd','A','asdasd',NULL),(5,NULL,'magno','','C','asdas','asdasd','1','askdjas','b','','asdas','asdasd','A','asdasd',NULL);
/*!40000 ALTER TABLE `tbl_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_capacidadef_aluno`
--

DROP TABLE IF EXISTS `tbl_capacidadef_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_capacidadef_aluno` (
  `id_capacidadef` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `classe` varchar(45) DEFAULT NULL,
  `validade` varchar(45) DEFAULT NULL,
  `emissor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_capacidadef`),
  KEY `fk_anac_capacidadef_idx` (`id_aluno`),
  CONSTRAINT `fk_id_aluno_capacidadef` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_capacidadef_aluno`
--

LOCK TABLES `tbl_capacidadef_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_capacidadef_aluno` DISABLE KEYS */;
INSERT INTO `tbl_capacidadef_aluno` VALUES (1,1,'testeclasse','14/07/2023','testeemissor');
/*!40000 ALTER TABLE `tbl_capacidadef_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_capacidadef_instrutor`
--

DROP TABLE IF EXISTS `tbl_capacidadef_instrutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_capacidadef_instrutor` (
  `id_capacidadef` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `classe` varchar(45) DEFAULT NULL,
  `validade` varchar(45) DEFAULT NULL,
  `emissor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_capacidadef`),
  KEY `fk_anac_capacidadef_instrutor_idx` (`id_aluno`),
  CONSTRAINT `fk_anac_capacidadef_instrutor` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_instrutor` (`id_instrutor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_capacidadef_instrutor`
--

LOCK TABLES `tbl_capacidadef_instrutor` WRITE;
/*!40000 ALTER TABLE `tbl_capacidadef_instrutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_capacidadef_instrutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contato_aluno`
--

DROP TABLE IF EXISTS `tbl_contato_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contato_aluno` (
  `id_contato` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `recado` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_contato`),
  KEY `fk_anac_contato_idx` (`id_aluno`),
  CONSTRAINT `fk_anac_contato` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contato_aluno`
--

LOCK TABLES `tbl_contato_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_contato_aluno` DISABLE KEYS */;
INSERT INTO `tbl_contato_aluno` VALUES (1,1,'11 4002-8922','11 96162-7374','astolfo','email@teste.com');
/*!40000 ALTER TABLE `tbl_contato_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contato_instrutor`
--

DROP TABLE IF EXISTS `tbl_contato_instrutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contato_instrutor` (
  `id_contato` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `recado` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_contato`),
  KEY `fk_anac_contato_instrutor_idx` (`id_aluno`),
  CONSTRAINT `fk_anac_contato_instrutor` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_instrutor` (`id_instrutor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contato_instrutor`
--

LOCK TABLES `tbl_contato_instrutor` WRITE;
/*!40000 ALTER TABLE `tbl_contato_instrutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contato_instrutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_curso`
--

DROP TABLE IF EXISTS `tbl_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_curso` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_curso`
--

LOCK TABLES `tbl_curso` WRITE;
/*!40000 ALTER TABLE `tbl_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_emergencia_aluno`
--

DROP TABLE IF EXISTS `tbl_emergencia_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_emergencia_aluno` (
  `id_emergencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `contatar` varchar(45) DEFAULT NULL,
  `parentesco` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `recado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_emergencia`),
  KEY `fk_id_aluuno_emergencia_idx` (`id_aluno`),
  CONSTRAINT `fk_id_aluuno_emergencia` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_emergencia_aluno`
--

LOCK TABLES `tbl_emergencia_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_emergencia_aluno` DISABLE KEYS */;
INSERT INTO `tbl_emergencia_aluno` VALUES (1,1,'astolfo','teste','teste','teste','teste','teste','SP','123','123','teste');
/*!40000 ALTER TABLE `tbl_emergencia_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_emergencia_instrutor`
--

DROP TABLE IF EXISTS `tbl_emergencia_instrutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_emergencia_instrutor` (
  `id_emergencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `contatar` varchar(45) DEFAULT NULL,
  `parentesco` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `recado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_emergencia`),
  KEY `fk_anac_emergencia_instrutor_idx` (`id_aluno`),
  CONSTRAINT `fk_anac_emergencia_instrutor` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_instrutor` (`id_instrutor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_emergencia_instrutor`
--

LOCK TABLES `tbl_emergencia_instrutor` WRITE;
/*!40000 ALTER TABLE `tbl_emergencia_instrutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_emergencia_instrutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_endereco_aluno`
--

DROP TABLE IF EXISTS `tbl_endereco_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_endereco_aluno` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `fk_anac_endereco_idx` (`id_aluno`),
  CONSTRAINT `fk_anac_endereco` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco_aluno`
--

LOCK TABLES `tbl_endereco_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_endereco_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_endereco_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_endereco_instrutor`
--

DROP TABLE IF EXISTS `tbl_endereco_instrutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_endereco_instrutor` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `fk_anac_endereco_instrutor_idx` (`id_aluno`),
  CONSTRAINT `fk_anac_endereco_instrutor` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_instrutor` (`id_instrutor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco_instrutor`
--

LOCK TABLES `tbl_endereco_instrutor` WRITE;
/*!40000 ALTER TABLE `tbl_endereco_instrutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_endereco_instrutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_exec`
--

DROP TABLE IF EXISTS `tbl_exec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_exec` (
  `id_exercicio` int(11) NOT NULL AUTO_INCREMENT,
  `exercicio` varchar(100) DEFAULT NULL,
  `grau` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_exercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_exec`
--

LOCK TABLES `tbl_exec` WRITE;
/*!40000 ALTER TABLE `tbl_exec` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_exec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fips`
--

DROP TABLE IF EXISTS `tbl_fips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fips` (
  `id_fips` int(11) NOT NULL AUTO_INCREMENT,
  `cod_anac_aluno` int(11) DEFAULT NULL,
  `cod_anac_instrutor` int(11) DEFAULT NULL,
  `id_aeronave` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `comentario` text,
  PRIMARY KEY (`id_fips`),
  KEY `fk_id_aeronave_fips_idx` (`id_aeronave`),
  KEY `fk_id_curso_fips_idx` (`id_curso`),
  CONSTRAINT `fk_id_aeronave_fips` FOREIGN KEY (`id_aeronave`) REFERENCES `tbl_aeronave` (`id_aeronave`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_curso_fips` FOREIGN KEY (`id_curso`) REFERENCES `tbl_curso` (`id_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fips`
--

LOCK TABLES `tbl_fips` WRITE;
/*!40000 ALTER TABLE `tbl_fips` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fips_exec`
--

DROP TABLE IF EXISTS `tbl_fips_exec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fips_exec` (
  `id_fips_exercicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_fips` int(11) DEFAULT NULL,
  `id_exercicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fips_exercicio`),
  KEY `fk_id_fips_exec_idx` (`id_fips`),
  KEY `fk_id_exec_fips_idx` (`id_exercicio`),
  CONSTRAINT `fk_id_fips_exec` FOREIGN KEY (`id_fips`) REFERENCES `tbl_fips` (`id_fips`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_exec_fips` FOREIGN KEY (`id_exercicio`) REFERENCES `tbl_exec` (`id_exercicio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fips_exec`
--

LOCK TABLES `tbl_fips_exec` WRITE;
/*!40000 ALTER TABLE `tbl_fips_exec` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fips_exec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fips_navegacao`
--

DROP TABLE IF EXISTS `tbl_fips_navegacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fips_navegacao` (
  `id_fips_navegacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_navegacao` int(11) DEFAULT NULL,
  `id_fips` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fips_navegacao`),
  KEY `fk_id_fips_navegacao_idx` (`id_fips`),
  KEY `fk_id_navegacao_fips_idx` (`id_navegacao`),
  CONSTRAINT `fk_id_fips_navegacao` FOREIGN KEY (`id_fips`) REFERENCES `tbl_fips` (`id_fips`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_navegacao_fips` FOREIGN KEY (`id_navegacao`) REFERENCES `tbl_navegacao` (`id_navegacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fips_navegacao`
--

LOCK TABLES `tbl_fips_navegacao` WRITE;
/*!40000 ALTER TABLE `tbl_fips_navegacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fips_navegacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fips_recomendacao`
--

DROP TABLE IF EXISTS `tbl_fips_recomendacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fips_recomendacao` (
  `id_fips_recomendacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_fips` int(11) DEFAULT NULL,
  `id_recomendacao` int(11) DEFAULT NULL,
  `tbl_fips_recomendacaocol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_fips_recomendacao`),
  KEY `fk_id_fips_recomendacao_idx` (`id_fips`),
  KEY `fk_id_recomendacao_fips_idx` (`id_recomendacao`),
  CONSTRAINT `fk_id_fips_recomendacao` FOREIGN KEY (`id_fips`) REFERENCES `tbl_fips` (`id_fips`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_recomendacao_fips` FOREIGN KEY (`id_recomendacao`) REFERENCES `tbl_recomendacao` (`id_recomendacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fips_recomendacao`
--

LOCK TABLES `tbl_fips_recomendacao` WRITE;
/*!40000 ALTER TABLE `tbl_fips_recomendacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fips_recomendacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_instrutor`
--

DROP TABLE IF EXISTS `tbl_instrutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_instrutor` (
  `id_instrutor` int(11) NOT NULL AUTO_INCREMENT,
  `cod_anac` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `estado_civil` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `escolaridade` varchar(45) DEFAULT NULL,
  `nascimento` varchar(45) DEFAULT NULL,
  `naturalidade` varchar(45) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `nome_pai` varchar(45) DEFAULT NULL,
  `nome_mae` varchar(45) DEFAULT NULL,
  `tipo_sangue` varchar(45) DEFAULT NULL,
  `alergias` text,
  `valor_hora` decimal(10,0) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_instrutor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_instrutor`
--

LOCK TABLES `tbl_instrutor` WRITE;
/*!40000 ALTER TABLE `tbl_instrutor` DISABLE KEYS */;
INSERT INTO `tbl_instrutor` VALUES (1,123,'Gabriel Santos','Masculino','Solteiro','123','123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_instrutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_matricula`
--

DROP TABLE IF EXISTS `tbl_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_matricula` (
  `id_matricula` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `dt_matricula` varchar(45) NOT NULL,
  PRIMARY KEY (`id_matricula`),
  KEY `fk_anac_matricula_idx` (`id_aluno`),
  CONSTRAINT `fk_anac_matricula` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_matricula`
--

LOCK TABLES `tbl_matricula` WRITE;
/*!40000 ALTER TABLE `tbl_matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_navegacao`
--

DROP TABLE IF EXISTS `tbl_navegacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_navegacao` (
  `id_navegacao` int(11) NOT NULL AUTO_INCREMENT,
  `de` varchar(45) DEFAULT NULL,
  `para` varchar(45) DEFAULT NULL,
  `partida` varchar(45) DEFAULT NULL,
  `corte` varchar(45) DEFAULT NULL,
  `tempo_voo` varchar(45) DEFAULT NULL,
  `pousos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_navegacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_navegacao`
--

LOCK TABLES `tbl_navegacao` WRITE;
/*!40000 ALTER TABLE `tbl_navegacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_navegacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recomendacao`
--

DROP TABLE IF EXISTS `tbl_recomendacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recomendacao` (
  `id_recomendacao` int(11) NOT NULL AUTO_INCREMENT,
  `recomendacao` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_recomendacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recomendacao`
--

LOCK TABLES `tbl_recomendacao` WRITE;
/*!40000 ALTER TABLE `tbl_recomendacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_recomendacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-15  5:32:54
