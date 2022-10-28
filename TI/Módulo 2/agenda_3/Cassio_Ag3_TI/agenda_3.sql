CREATE DATABASE  IF NOT EXISTS `Db_Condominio` 
USE `Db_Condominio`;

CREATE TABLE `Apartamento` (
  `numero_ap` int NOT NULL,
  `tipo_ap` varchar(45) DEFAULT NULL,
  `codigo_cond` int DEFAULT NULL,
  `rg_proprietario` int DEFAULT NULL,
  PRIMARY KEY (`numero_ap`),
  KEY `fk_rg_proprietario_idx` (`rg_proprietario`),
  KEY `fk_codigo_cond_idx` (`codigo_cond`),
  CONSTRAINT `fk_codigo_cond` FOREIGN KEY (`codigo_cond`) REFERENCES `Condominio` (`codigo_cond`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_rg_proprietario` FOREIGN KEY (`rg_proprietario`) REFERENCES `Propietário` (`rg_prop`);
  
CREATE TABLE `Condominio` (
  `codigo_cond` int NOT NULL,
  `Nome_cond` varchar(45) DEFAULT NULL,
  `rua_cond` varchar(45) DEFAULT NULL,
  `numero_cond` int DEFAULT NULL,
  `bairro_cond` varchar(45) DEFAULT NULL,
  `estado_cond` varchar(45) DEFAULT NULL,
  `cep` int DEFAULT NULL,
  PRIMARY KEY (`codigo_cond`);
DROP TABLE IF EXISTS `Garagem`;

CREATE TABLE `Garagem` (
  `numero_gag` int NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numero_gag`),
  CONSTRAINT `fk_numero_ap` FOREIGN KEY (`numero_gag`) REFERENCES `Condominio` (`codigo_cond`);


CREATE TABLE `Propietário` (
  `rg_prop` int NOT NULL,
  `nome_prop` varchar(45) DEFAULT NULL,
  `sobrenome_prop` varchar(45) DEFAULT NULL,
  `Telefone_Fixo_prop` int DEFAULT NULL,
  `e-mail_prop` varchar(45) DEFAULT NULL,
  `celular_prop` int DEFAULT NULL,
  PRIMARY KEY (`rg_prop`);

CREATE TABLE `Sindico` (
  `matrícula_sind` int NOT NULL,
  `nome_sind` varchar(45) DEFAULT NULL,
  `sobrenome_sind` varchar(45) DEFAULT NULL,
  `rua_sind` varchar(45) DEFAULT NULL,
  `bairro_sind` varchar(45) DEFAULT NULL,
  `estado_sind` varchar(45) DEFAULT NULL,
  `cep_sind` varchar(45) DEFAULT NULL,
  `telefone_fixo_sind` int DEFAULT NULL,
  `celular_sind` varchar(45) DEFAULT NULL,
  `e-mail_sind` varchar(45) DEFAULT NULL,
  `Data_Inicio_mandato_sind` date DEFAULT NULL,
  `Data_fim_mandato_sind` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`matrícula_sind`);
