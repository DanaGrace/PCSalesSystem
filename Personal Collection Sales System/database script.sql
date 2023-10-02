-- MySQL Script generated by MySQL Workbench
-- Fri Jun 18 09:13:08 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema pcsssys
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pcsssys
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pcsssys` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `pcsssys` ;

-- -----------------------------------------------------
-- Table `pcsssys`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pcsssys`.`inventory` (
  `ProductId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Product_Name` VARCHAR(100) NOT NULL,
  `Product_price` FLOAT(7,2) NOT NULL,
  `Available_Stock` INT NULL DEFAULT '0',
  `Stock_sold` INT NULL DEFAULT '0',
  PRIMARY KEY (`ProductId`),
  UNIQUE INDEX `ProductId` (`ProductId` ASC) VISIBLE,
  UNIQUE INDEX `Product_Name` (`Product_Name` ASC) VISIBLE,
  INDEX `ProductId_2` (`ProductId` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pcsssys`.`log_in`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pcsssys`.`log_in` (
  `LoginID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`LoginID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO log_in (Name, Password)
VALUES ('PcssAdmin','123');

-- -----------------------------------------------------
-- Table `pcsssys`.`memberlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pcsssys`.`memberlist` (
  `MemberId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `membername` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`MemberId`),
  UNIQUE INDEX `MemberId` (`MemberId` ASC) VISIBLE,
  UNIQUE INDEX `membername` (`membername` ASC) VISIBLE,
  INDEX `MemberId_2` (`MemberId` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pcsssys`.`order_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pcsssys`.`order_table` (
  `Order_No` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Product_Name` VARCHAR(100) NOT NULL,
  `Subtotal_Price` FLOAT(7,2) NOT NULL,
  `Quantity` INT NOT NULL,
  PRIMARY KEY (`Order_No`),
  UNIQUE INDEX `Order_No` (`Order_No` ASC) VISIBLE,
  INDEX `Order_No_2` (`Order_No` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pcsssys`.`transaction_record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pcsssys`.`transaction_record` (
  `TimeandDate` VARCHAR(20) NOT NULL,
  `Order_Rec` INT NOT NULL,
  `Customer_Name` VARCHAR(50) NOT NULL,
  `Total_Price` FLOAT(7,2) NOT NULL,
  `Income` FLOAT(7,2) NOT NULL,
  PRIMARY KEY (`TimeandDate`),
  UNIQUE INDEX `TimeandDate` (`TimeandDate` ASC) VISIBLE,
  INDEX `TimeandDate_2` (`TimeandDate` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
