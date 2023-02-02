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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `CustomerID` INT NOT NULL,
  `CustomerName` VARCHAR(255) NOT NULL,
  `Segment` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales` (
  `Sales` DECIMAL(2) NOT NULL,
  `Quantity` INT NOT NULL,
  `Discount` DECIMAL(2) NOT NULL,
  `Profit` DECIMAL(2) NOT NULL,
  `ShippingCost` DECIMAL(2) NOT NULL,
  PRIMARY KEY (`Sales`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product` (
  `ProductID` VARCHAR(20) NOT NULL,
  `Category` VARCHAR(45) NOT NULL,
  `SubCategory` VARCHAR(45) NOT NULL,
  `ProductName` VARCHAR(255) NOT NULL,
  `Sales_Sales` DECIMAL(2) NOT NULL,
  PRIMARY KEY (`ProductID`),
  INDEX `fk_Product_Sales1_idx` (`Sales_Sales` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Sales1`
    FOREIGN KEY (`Sales_Sales`)
    REFERENCES `mydb`.`Sales` (`Sales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Order` (
  `OrderID` INT NOT NULL,
  `OrderDate` DATETIME NOT NULL,
  `OrderPriority` VARCHAR(45) NOT NULL,
  `Customer_CustomerID` INT NOT NULL,
  `Product_ProductID` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `fk_Order_Customer1_idx` (`Customer_CustomerID` ASC) VISIBLE,
  INDEX `fk_Order_Product1_idx` (`Product_ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`Customer_CustomerID`)
    REFERENCES `mydb`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `mydb`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ship`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ship` (
  `ShipDate` DATETIME NOT NULL,
  `ShipMode` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ShipDate`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Geo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Geo` (
  `Market` VARCHAR(20) NOT NULL,
  `Region` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`Market`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Address` (
  `City` VARCHAR(255) NOT NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `PostalCode` INT(8) NULL,
  `Addresscol` VARCHAR(45) NULL,
  `Geo_Market` VARCHAR(20) NOT NULL,
  `Ship_ShipDate` DATETIME NOT NULL,
  PRIMARY KEY (`City`),
  INDEX `fk_Address_Geo_idx` (`Geo_Market` ASC) VISIBLE,
  INDEX `fk_Address_Ship1_idx` (`Ship_ShipDate` ASC) VISIBLE,
  CONSTRAINT `fk_Address_Geo`
    FOREIGN KEY (`Geo_Market`)
    REFERENCES `mydb`.`Geo` (`Market`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Address_Ship1`
    FOREIGN KEY (`Ship_ShipDate`)
    REFERENCES `mydb`.`Ship` (`ShipDate`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
