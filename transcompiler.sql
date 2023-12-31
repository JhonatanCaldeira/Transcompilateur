-- MySQL Script generated by MySQL Workbench
-- Thu Oct 26 15:59:31 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema transcompiler
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema transcompiler
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS transcompiler DEFAULT CHARACTER SET utf8 ;
USE transcompiler ;

-- -----------------------------------------------------
-- Table transcompiler.langage
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS transcompiler.langage (
  id_langage INT NOT null auto_increment,
  langage VARCHAR(55) NULL,
  PRIMARY KEY (id_langage))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table transcompiler.texte_code
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS transcompiler.texte_code (
  id INT NOT null auto_increment,
  id_langage INT not NULL,
  texte VARCHAR(3000) NULL,
  code VARCHAR(3000) NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_texte_code_langage
    FOREIGN KEY (id_langage)
    REFERENCES transcompiler.langage (id_langage)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into transcompiler.langage (langage) values ('python');
insert into transcompiler.langage (langage) values ('javascript');