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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aeronave`
--

LOCK TABLES `tbl_aeronave` WRITE;
/*!40000 ALTER TABLE `tbl_aeronave` DISABLE KEYS */;
INSERT INTO `tbl_aeronave` VALUES (1,'PT-YBC','RH-22'),(2,'PT-HXY','RH-22'),(3,'PT-YLO','RH-22'),(4,'PT-YBF','RH-22'),(5,'PT-YDB','RH-22'),(6,'PT-YCV','RH-22'),(7,'PP-ABC','RH-44'),(8,'SIMULADOR','SIM'),(9,'PT-YBF-I','RH-22'),(10,'PT-HXY-I','RH-22'),(11,'GA-30','SIM'),(12,'GH-59','SIM');
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
  `cod_anac` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `estado civil` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluno`
--

LOCK TABLES `tbl_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_aluno` DISABLE KEYS */;
INSERT INTO `tbl_aluno` VALUES (1,123,'Gabriel Santos','Masculino','Solteiro','123','123','teste','Carapicuiba - SP','brasileiro','14/07/2000','Paulo Luiz','Maria Cicera','A','não','testeteste.png'),(2,123,'Gabriel Santos','Masculino','Solteiro','123','123','3ºGrau Incompleto','Carapicuiba-SP','brasileira','2000-70-14','Paulo Luiz','Maria Cicera','A','não','teste');
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
  `prefixo` varchar(45) DEFAULT NULL,
  `curso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_curso`
--

LOCK TABLES `tbl_curso` WRITE;
/*!40000 ALTER TABLE `tbl_curso` DISABLE KEYS */;
INSERT INTO `tbl_curso` VALUES (1,'PPH','Piloto Privado'),(2,'PCH','Piloto Comercial'),(3,'INVH','Instrutor de Voo'),(4,'HMNC','Inclusão Classe'),(5,'IFR-H','Sob-Capota');
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
  `grau` int(11) DEFAULT NULL,
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
-- Table structure for table `tbl_fips_tudao`
--

DROP TABLE IF EXISTS `tbl_fips_tudao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fips_tudao` (
  `id_fips` int(11) NOT NULL AUTO_INCREMENT,
  `de` varchar(45) DEFAULT NULL,
  `para` varchar(45) DEFAULT NULL,
  `partida` varchar(45) DEFAULT NULL,
  `corte` varchar(45) DEFAULT NULL,
  `tempo_voo` varchar(45) DEFAULT NULL,
  `pousos` varchar(45) DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_instrutor` int(11) DEFAULT NULL,
  `id_aeronave` int(11) DEFAULT NULL,
  `dt_fips` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_fips`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fips_tudao`
--

LOCK TABLES `tbl_fips_tudao` WRITE;
/*!40000 ALTER TABLE `tbl_fips_tudao` DISABLE KEYS */;
INSERT INTO `tbl_fips_tudao` VALUES (1,'SBMT','SBSJ','23:12','23:48','0,6','2',1,1,1,'21/06/2017'),(2,'SBSJ','SBSJ','13:00','14:00','1,0','10',2,1,1,'16/02/2017');
/*!40000 ALTER TABLE `tbl_fips_tudao` ENABLE KEYS */;
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
  `naturalidade` varchar(45) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `nome_pai` varchar(45) DEFAULT NULL,
  `nome_mae` varchar(45) DEFAULT NULL,
  `tipo_sangue` varchar(45) DEFAULT NULL,
  `alergias` text,
  `valor_hora` decimal(10,0) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_instrutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_instrutor`
--

LOCK TABLES `tbl_instrutor` WRITE;
/*!40000 ALTER TABLE `tbl_instrutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_instrutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_instrutor_tudao`
--

DROP TABLE IF EXISTS `tbl_instrutor_tudao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_instrutor_tudao` (
  `id_instrutor` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_anac` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `dt_nasc` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `naturalidade` varchar(45) DEFAULT NULL,
  `sangue` varchar(45) DEFAULT NULL,
  `alergia` varchar(45) DEFAULT NULL,
  `estado_civil` varchar(45) DEFAULT NULL,
  `nome_pai` varchar(45) DEFAULT NULL,
  `nome_mae` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `escolaridade` varchar(45) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contatar` varchar(45) DEFAULT NULL,
  `parentesco` varchar(45) DEFAULT NULL,
  `endereco_emergencia` varchar(45) DEFAULT NULL,
  `bairro_emergencia` varchar(45) DEFAULT NULL,
  `cidade_emergencia` varchar(45) DEFAULT NULL,
  `uf_emergencia` varchar(45) DEFAULT NULL,
  `cep_emergencia` varchar(45) DEFAULT NULL,
  `telefone_emergencia` varchar(45) DEFAULT NULL,
  `celular_emergencia` varchar(45) DEFAULT NULL,
  `recado_emergencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_instrutor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_instrutor_tudao`
--

LOCK TABLES `tbl_instrutor_tudao` WRITE;
/*!40000 ALTER TABLE `tbl_instrutor_tudao` DISABLE KEYS */;
INSERT INTO `tbl_instrutor_tudao` VALUES (1,'12','Instrutor 3','12','12','12','12','12','6','6','6','6','6','6','6','6','6','6','6','6',NULL,'66','6','66','6','6','6','6','SP','6','6','6','6'),(2,'123','Instrutor 1','2017-09-11','F','brasileira','jandira','-','não','Casado','Papai','Mamãe','rg','cpf','3','rua','numero','cidade','SP','cep','telefone','celular','email','contata','Mãe','endereco','bairro','cidade','SP','cep','rtelefone','celular','recado'),(3,'123','Instrutor 2','2017-09-12','M','brasileira','jandira','B','não','Casado','Papai','Mamãe','12.456.789-0','123.456.789-12','1','rua','numero','cidade','SP','cep','telefone','celular','email','contata','Mãe','endereco','bairro','cidade','SP','cep','rtelefone','celular','recado'),(4,'','','','','brasileira','','A','','Casado','','','','','1','','','','SP','','','','','','Mãe','','','','SP','','','','');
/*!40000 ALTER TABLE `tbl_instrutor_tudao` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_matricula`
--

LOCK TABLES `tbl_matricula` WRITE;
/*!40000 ALTER TABLE `tbl_matricula` DISABLE KEYS */;
INSERT INTO `tbl_matricula` VALUES (1,1,1,'15/09/2017');
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

--
-- Temporary view structure for view `vw_relatorio`
--

DROP TABLE IF EXISTS `vw_relatorio`;
/*!50001 DROP VIEW IF EXISTS `vw_relatorio`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_relatorio` AS SELECT 
 1 AS `Data`,
 1 AS `HS`,
 1 AS `HR`,
 1 AS `Modelo`,
 1 AS `Prefixo`,
 1 AS `De`,
 1 AS `Para`,
 1 AS `Pousos`,
 1 AS `Tempo`,
 1 AS `Aluno`,
 1 AS `Instrutor`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db_helimaxy'
--

--
-- Dumping routines for database 'db_helimaxy'
--

--
-- Final view structure for view `vw_relatorio`
--

/*!50001 DROP VIEW IF EXISTS `vw_relatorio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_relatorio` AS select `fips`.`dt_fips` AS `Data`,`fips`.`partida` AS `HS`,`fips`.`corte` AS `HR`,`aeronave`.`modelo` AS `Modelo`,`aeronave`.`prefixo` AS `Prefixo`,`fips`.`de` AS `De`,`fips`.`para` AS `Para`,`fips`.`pousos` AS `Pousos`,`fips`.`tempo_voo` AS `Tempo`,`aluno`.`nome` AS `Aluno`,`instru`.`nome` AS `Instrutor` from (((`tbl_fips_tudao` `fips` join `tbl_aeronave` `aeronave` on((`aeronave`.`id_aeronave` = `fips`.`id_aeronave`))) join `tbl_aluno` `aluno` on((`aluno`.`id_aluno` = `fips`.`id_aluno`))) join `tbl_instrutor_tudao` `instru` on((`instru`.`id_instrutor` = `fips`.`id_instrutor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-15  8:32:05
