-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hospitalDB` DEFAULT CHARACTER SET utf8 ;
USE `hospitalDB` ;

-- -----------------------------------------------------
-- Table `hospitalDB`.`Area`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Area` (
  `idArea` INT NOT NULL AUTO_INCREMENT,
  `area` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idArea`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`Medicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Medicos` (
  `idMedico` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CRM` INT(6) NOT NULL,
  `CPF` BIGINT(11) NOT NULL,
  `dataDeNascimento` DATE NOT NULL,
  `idArea` INT NOT NULL,
  PRIMARY KEY (`idMedico`, `idArea`),
  INDEX `fk_Medicos_Area_idx` (`idArea` ASC) VISIBLE,
  CONSTRAINT `fk_Medicos_Area`
    FOREIGN KEY (`idArea`)
    REFERENCES `hospitalDB`.`Area` (`idArea`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`Especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Especialidades` (
  `idEspecialidade` INT NOT NULL AUTO_INCREMENT,
  `especialidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEspecialidade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`Convenios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Convenios` (
  `idConvenio` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CNPJ` BIGINT(14) NOT NULL,
  `carencia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idConvenio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`Pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Pacientes` (
  `idPaciente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CPF` BIGINT(11) NOT NULL,
  `RG` BIGINT(9) NOT NULL,
  `dataDeNascimento` DATE NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `idConvenio` INT NOT NULL,
  PRIMARY KEY (`idPaciente`, `idConvenio`),
  INDEX `fk_Pacientes_Convenios1_idx` (`idConvenio` ASC) VISIBLE,
  CONSTRAINT `fk_Pacientes_Convenios1`
    FOREIGN KEY (`idConvenio`)
    REFERENCES `hospitalDB`.`Convenios` (`idConvenio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`Consultas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Consultas` (
  `idPaciente` INT NOT NULL,
  `idMedico` INT NOT NULL,
  `idEspecialidade` INT NOT NULL,
  `data` DATE NOT NULL,
  `valor` FLOAT NOT NULL,
  `receita` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idPaciente`, `idMedico`, `idEspecialidade`),
  INDEX `fk_Pacientes_has_Medicos_Medicos1_idx` (`idMedico` ASC) VISIBLE,
  INDEX `fk_Pacientes_has_Medicos_Pacientes1_idx` (`idPaciente` ASC) VISIBLE,
  INDEX `fk_Consultas_Especialidades1_idx` (`idEspecialidade` ASC) VISIBLE,
  CONSTRAINT `fk_Pacientes_has_Medicos_Pacientes1`
    FOREIGN KEY (`idPaciente`)
    REFERENCES `hospitalDB`.`Pacientes` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pacientes_has_Medicos_Medicos1`
    FOREIGN KEY (`idMedico`)
    REFERENCES `hospitalDB`.`Medicos` (`idMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consultas_Especialidades1`
    FOREIGN KEY (`idEspecialidade`)
    REFERENCES `hospitalDB`.`Especialidades` (`idEspecialidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`TiposQuarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`TiposQuarto` (
  `idTipoQuarto` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `valorDiaria` FLOAT NOT NULL,
  PRIMARY KEY (`idTipoQuarto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`Quartos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Quartos` (
  `idQuarto` INT NOT NULL AUTO_INCREMENT,
  `numero` INT NOT NULL,
  `idTipoQuarto` INT NOT NULL,
  PRIMARY KEY (`idQuarto`, `idTipoQuarto`),
  INDEX `fk_Quartos_TiposQuarto1_idx` (`idTipoQuarto` ASC) VISIBLE,
  CONSTRAINT `fk_Quartos_TiposQuarto1`
    FOREIGN KEY (`idTipoQuarto`)
    REFERENCES `hospitalDB`.`TiposQuarto` (`idTipoQuarto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`Enfermeiros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Enfermeiros` (
  `idEnfermeiro` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CPF` BIGINT(11) NOT NULL,
  `CRE` INT(6) NOT NULL,
  PRIMARY KEY (`idEnfermeiro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`Internacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`Internacoes` (
  `idInternacao` INT NOT NULL AUTO_INCREMENT,
  `dataEntrada` DATE NOT NULL,
  `dataPrevistaAlta` DATE NOT NULL,
  `dataAlta` DATE NULL,
  `procedimento` VARCHAR(255) NOT NULL,
  `idQuarto` INT NOT NULL,
  `idPaciente` INT NOT NULL,
  `idMedico` INT NOT NULL,
  PRIMARY KEY (`idInternacao`, `idQuarto`, `idPaciente`, `idMedico`),
  INDEX `fk_Internacoes_Quartos1_idx` (`idQuarto` ASC) VISIBLE,
  INDEX `fk_Internacoes_Pacientes1_idx` (`idPaciente` ASC) VISIBLE,
  INDEX `fk_Internacoes_Medicos1_idx` (`idMedico` ASC) VISIBLE,
  CONSTRAINT `fk_Internacoes_Quartos1`
    FOREIGN KEY (`idQuarto`)
    REFERENCES `hospitalDB`.`Quartos` (`idQuarto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Internacoes_Pacientes1`
    FOREIGN KEY (`idPaciente`)
    REFERENCES `hospitalDB`.`Pacientes` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Internacoes_Medicos1`
    FOREIGN KEY (`idMedico`)
    REFERENCES `hospitalDB`.`Medicos` (`idMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`InternacoesEnfermeiros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`InternacoesEnfermeiros` (
  `idInternacao` INT NOT NULL,
  `idEnfermeiro` INT NOT NULL,
  PRIMARY KEY (`idInternacao`, `idEnfermeiro`),
  INDEX `fk_Internacoes_has_Enfermeiros_Enfermeiros1_idx` (`idEnfermeiro` ASC) VISIBLE,
  INDEX `fk_Internacoes_has_Enfermeiros_Internacoes1_idx` (`idInternacao` ASC) VISIBLE,
  CONSTRAINT `fk_Internacoes_has_Enfermeiros_Internacoes1`
    FOREIGN KEY (`idInternacao`)
    REFERENCES `hospitalDB`.`Internacoes` (`idInternacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Internacoes_has_Enfermeiros_Enfermeiros1`
    FOREIGN KEY (`idEnfermeiro`)
    REFERENCES `hospitalDB`.`Enfermeiros` (`idEnfermeiro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospitalDB`.`MedicosEspecialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalDB`.`MedicosEspecialidades` (
  `idMedico` INT NOT NULL,
  `idEspecialidade` INT NOT NULL,
  PRIMARY KEY (`idMedico`, `idEspecialidade`),
  INDEX `fk_Medicos_has_Especialidades_Especialidades1_idx` (`idEspecialidade` ASC) VISIBLE,
  INDEX `fk_Medicos_has_Especialidades_Medicos1_idx` (`idMedico` ASC) VISIBLE,
  CONSTRAINT `fk_Medicos_has_Especialidades_Medicos1`
    FOREIGN KEY (`idMedico`)
    REFERENCES `hospitalDB`.`Medicos` (`idMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Medicos_has_Especialidades_Especialidades1`
    FOREIGN KEY (`idEspecialidade`)
    REFERENCES `hospitalDB`.`Especialidades` (`idEspecialidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
