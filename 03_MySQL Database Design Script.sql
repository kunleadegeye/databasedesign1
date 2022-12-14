-- MYSQL

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema flightbookingsystem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema flightbookingsystem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `flightbookingsystem` DEFAULT CHARACTER SET utf8 ;
USE `flightbookingsystem` ;

-- -----------------------------------------------------
-- Table `flightbookingsystem`.`class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flightbookingsystem`.`class` (
  `classID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL,
  PRIMARY KEY (`classID`),
  UNIQUE INDEX `classID_UNIQUE` (`classID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flightbookingsystem`.`passenger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flightbookingsystem`.`passenger` (
  `passengerId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(100) NULL,
  `name` VARCHAR(100) NULL,
  `address` VARCHAR(200) NULL,
  `city` VARCHAR(50) NULL,
  `state` CHAR(2) NULL,
  `phone` VARCHAR(50) NULL,
  PRIMARY KEY (`passengerId`),
  UNIQUE INDEX `passengerId_UNIQUE` (`passengerId` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flightbookingsystem`.`airplane`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flightbookingsystem`.`airplane` (
  `airplaneId` INT NOT NULL AUTO_INCREMENT,
  `companyName` VARCHAR(200) NULL,
  `numser` VARCHAR(50) NULL,
  `manufacturer` VARCHAR(200) NULL,
  `modelNumber` VARCHAR(50) NULL,
  PRIMARY KEY (`airplaneId`),
  UNIQUE INDEX `airplaneId_UNIQUE` (`airplaneId` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flightbookingsystem`.`typeRating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flightbookingsystem`.`typeRating` (
  `ratingId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `airplaneId` INT NOT NULL,
  PRIMARY KEY (`ratingId`),
  INDEX `fk_typeRating_airplane1_idx` (`airplaneId` ASC) VISIBLE,
  UNIQUE INDEX `ratingId_UNIQUE` (`ratingId` ASC) VISIBLE,
  CONSTRAINT `fk_typeRating_airplane1`
    FOREIGN KEY (`airplaneId`)
    REFERENCES `flightbookingsystem`.`airplane` (`airplaneId`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flightbookingsystem`.`Pilot`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flightbookingsystem`.`Pilot` (
  `empNum` INT NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(100) NULL,
  `name` VARCHAR(100) NULL,
  `address` VARCHAR(200) NULL,
  `city` VARCHAR(50) NULL,
  `state` CHAR(2) NULL,
  `phone` VARCHAR(50) NULL,
  `salary` DECIMAL(7,2) NULL,
  `position` VARCHAR(100) NULL,
  `ratingId` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`empNum`),
  UNIQUE INDEX `empNum_UNIQUE` (`empNum` ASC) VISIBLE,
  INDEX `fk_Pilot_typeRating1_idx` (`ratingId` ASC) VISIBLE,
  CONSTRAINT `fk_Pilot_typeRating1`
    FOREIGN KEY (`ratingId`)
    REFERENCES `flightbookingsystem`.`typeRating` (`ratingId`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flightbookingsystem`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flightbookingsystem`.`flight` (
  `flightNum` VARCHAR(50) NOT NULL,
  `origin` VARCHAR(100) NULL,
  `departureDate` DATE NULL,
  `departureTime` TIME NULL,
  `destination` VARCHAR(100) NULL,
  `arrDate` DATE NULL,
  `arrTime` TIME NULL,
  `airplaneId` INT NOT NULL,
  `empNum` INT NOT NULL,
  `empNum2` INT NOT NULL,
  PRIMARY KEY (`flightNum`),
  INDEX `fk_flight_airplane1_idx` (`airplaneId` ASC) VISIBLE,
  INDEX `fk_flight_Pilot1_idx` (`empNum` ASC) VISIBLE,
  UNIQUE INDEX `flightNum_UNIQUE` (`flightNum` ASC) VISIBLE,
  INDEX `fk_flight_Pilot2_idx` (`empNum2` ASC) VISIBLE,
  CONSTRAINT `fk_flight_airplane1`
    FOREIGN KEY (`airplaneId`)
    REFERENCES `flightbookingsystem`.`airplane` (`airplaneId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_Pilot1`
    FOREIGN KEY (`empNum`)
    REFERENCES `flightbookingsystem`.`Pilot` (`empNum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_Pilot2`
    FOREIGN KEY (`empNum2`)
    REFERENCES `flightbookingsystem`.`Pilot` (`empNum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flightbookingsystem`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flightbookingsystem`.`ticket` (
  `ticketId` INT UNSIGNED NOT NULL,
  `ticketNo` VARCHAR(100) NOT NULL,
  `passengerId` INT UNSIGNED NOT NULL,
  `classId` INT NOT NULL,
  `flightNum` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ticketId`),
  INDEX `fk_ticket_passenger1_idx` (`passengerId` ASC) VISIBLE,
  INDEX `fk_ticket_class1_idx` (`classId` ASC) VISIBLE,
  UNIQUE INDEX `ticketId_UNIQUE` (`ticketId` ASC) VISIBLE,
  INDEX `fk_ticket_flight1_idx` (`flightNum` ASC) VISIBLE,
  CONSTRAINT `fk_ticket_passenger1`
    FOREIGN KEY (`passengerId`)
    REFERENCES `flightbookingsystem`.`passenger` (`passengerId`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_class1`
    FOREIGN KEY (`classId`)
    REFERENCES `flightbookingsystem`.`class` (`classID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_flight1`
    FOREIGN KEY (`flightNum`)
    REFERENCES `flightbookingsystem`.`flight` (`flightNum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `flightbookingsystem`.`user_1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `flightbookingsystem`.`user_1` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
