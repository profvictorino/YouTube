-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pessoa` (
  `CPF` VARCHAR(11) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Sexo` CHAR(1) NULL,
  PRIMARY KEY (`CPF`),
  UNIQUE INDEX `Nome_UNIQUE` (`Nome` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Piloto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Piloto` (
  `Pessoa_CPF` VARCHAR(11) NOT NULL,
  `Licenca` VARCHAR(10) NULL,
  PRIMARY KEY (`Pessoa_CPF`),
  CONSTRAINT `fk_Piloto_Pessoa`
    FOREIGN KEY (`Pessoa_CPF`)
    REFERENCES `Pessoa` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Passageiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Passageiro` (
  `Pessoa_CPF` VARCHAR(11) NOT NULL,
  `Categoria` VARCHAR(10) NULL,
  PRIMARY KEY (`Pessoa_CPF`),
  CONSTRAINT `fk_Passageiro_Pessoa1`
    FOREIGN KEY (`Pessoa_CPF`)
    REFERENCES `Pessoa` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Voo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Voo` (
  `numero` INT NOT NULL,
  `Data` DATE NOT NULL,
  `Piloto_Pessoa_CPF` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_Voo_Piloto1_idx` (`Piloto_Pessoa_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Voo_Piloto1`
    FOREIGN KEY (`Piloto_Pessoa_CPF`)
    REFERENCES `Piloto` (`Pessoa_CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Voo_has_Passageiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Voo_has_Passageiro` (
  `Voo_numero` INT NOT NULL,
  `Passageiro_Pessoa_CPF` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`Passageiro_Pessoa_CPF`, `Voo_numero`),
  INDEX `fk_Voo_has_Passageiro_Passageiro1_idx` (`Passageiro_Pessoa_CPF` ASC) VISIBLE,
  INDEX `fk_Voo_has_Passageiro_Voo1_idx` (`Voo_numero` ASC) VISIBLE,
  CONSTRAINT `fk_Voo_has_Passageiro_Voo1`
    FOREIGN KEY (`Voo_numero`)
    REFERENCES `Voo` (`numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voo_has_Passageiro_Passageiro1`
    FOREIGN KEY (`Passageiro_Pessoa_CPF`)
    REFERENCES `Passageiro` (`Pessoa_CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Telefone` (
  `Numero` INT NOT NULL,
  `Passageiro_Pessoa_CPF` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`Numero`, `Passageiro_Pessoa_CPF`),
  INDEX `fk_Telefone_Passageiro1_idx` (`Passageiro_Pessoa_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Passageiro1`
    FOREIGN KEY (`Passageiro_Pessoa_CPF`)
    REFERENCES `Passageiro` (`Pessoa_CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
