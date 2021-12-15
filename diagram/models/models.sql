-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema manufacturing
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema manufacturing
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `manufacturing` DEFAULT CHARACTER SET utf8 ;
USE `manufacturing` ;

-- -----------------------------------------------------
-- Table `manufacturing`.`manufacturer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`manufacturer` (
  `manufacturer_id` INT NOT NULL AUTO_INCREMENT,
  `manufacturer_name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `contact_name` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `city` VARCHAR(100) NOT NULL,
  `country` VARCHAR(100) NOT NULL,
  `zip_code` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`manufacturer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `manufacturing`.`offices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`offices` (
  `offices_id` INT NOT NULL AUTO_INCREMENT,
  `offices_code` INT NOT NULL,
  `offices_name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `employee_name` VARCHAR(100) NOT NULL,
  `employee_phone` VARCHAR(100) NOT NULL,
  `employee_email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`offices_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `manufacturing`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`employees` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `offices_offices_id` INT NOT NULL,
  PRIMARY KEY (`employee_id`),
  INDEX `fk_employees_offices1_idx` (`offices_offices_id` ASC) VISIBLE,
  CONSTRAINT `fk_employees_offices1`
    FOREIGN KEY (`offices_offices_id`)
    REFERENCES `manufacturing`.`offices` (`offices_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `manufacturing`.`resellers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`resellers` (
  `reseller_id` INT NOT NULL AUTO_INCREMENT,
  `reseller_name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `contact_name` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `manufacturer_manufacturer_id` INT NOT NULL,
  PRIMARY KEY (`reseller_id`),
  INDEX `fk_reseller_manufacturer1_idx` (`manufacturer_manufacturer_id` ASC) VISIBLE,
  CONSTRAINT `fk_reseller_manufacturer1`
    FOREIGN KEY (`manufacturer_manufacturer_id`)
    REFERENCES `manufacturing`.`manufacturer` (`manufacturer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `manufacturing`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`products` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(100) NOT NULL,
  `product_number` VARCHAR(100) NOT NULL,
  `products_vendor` VARCHAR(100) NOT NULL,
  `product_description` LONGTEXT NOT NULL,
  `quantityin_stock` INT NOT NULL,
  `buy_price` DECIMAL NOT NULL,
  `resellers_reseller_id` INT NOT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `fk_products_resellers1_idx` (`resellers_reseller_id` ASC) VISIBLE,
  CONSTRAINT `fk_products_resellers1`
    FOREIGN KEY (`resellers_reseller_id`)
    REFERENCES `manufacturing`.`resellers` (`reseller_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `manufacturing`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`customers` (
  `customers_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `city` VARCHAR(100) NOT NULL,
  `zip_code` VARCHAR(50) NOT NULL,
  `country` VARCHAR(100) NOT NULL,
  `employees_employee_id` INT NOT NULL,
  PRIMARY KEY (`customers_id`),
  INDEX `fk_customers_employees1_idx` (`employees_employee_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_employees1`
    FOREIGN KEY (`employees_employee_id`)
    REFERENCES `manufacturing`.`employees` (`employee_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `manufacturing`.`customerCars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`customerCars` (
  `customerCar_id` INT NOT NULL AUTO_INCREMENT,
  `reg_number` VARCHAR(7) NOT NULL,
  `brand` VARCHAR(100) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  `color` VARCHAR(50) NOT NULL,
  `years` DATE NOT NULL,
  PRIMARY KEY (`customerCar_id`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `manufacturing`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `quantity_ordered` INT NULL,
  `price_each` DECIMAL(10,2) NOT NULL,
  `order_date` DATETIME NOT NULL,
  `shipped_date` DATETIME NOT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `customers_customers_id` INT NOT NULL,
  `products_product_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_orders_customers1_idx` (`customers_customers_id` ASC) VISIBLE,
  INDEX `fk_orders_products1_idx` (`products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_customers1`
    FOREIGN KEY (`customers_customers_id`)
    REFERENCES `manufacturing`.`customers` (`customers_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `manufacturing`.`products` (`product_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `manufacturing`.`customers_has_customerCar1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`customers_has_customerCar1` (
  `customers_customers_id` INT NOT NULL,
  `customerCar_customerCar_id` INT NOT NULL,
  PRIMARY KEY (`customers_customers_id`, `customerCar_customerCar_id`),
  INDEX `fk_customers_has_customerCar1_customerCar1_idx` (`customerCar_customerCar_id` ASC) VISIBLE,
  INDEX `fk_customers_has_customerCar1_customers1_idx` (`customers_customers_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_has_customerCar1_customers1`
    FOREIGN KEY (`customers_customers_id`)
    REFERENCES `manufacturing`.`customers` (`customers_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_customers_has_customerCar1_customerCar1`
    FOREIGN KEY (`customerCar_customerCar_id`)
    REFERENCES `manufacturing`.`customerCars` (`customerCar_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `manufacturing`.`customerCars_has_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `manufacturing`.`customerCars_has_products` (
  `customerCars_customerCar_id` INT NOT NULL,
  `products_product_id` INT NOT NULL,
  PRIMARY KEY (`customerCars_customerCar_id`, `products_product_id`),
  INDEX `fk_customerCars_has_products_products1_idx` (`products_product_id` ASC) VISIBLE,
  INDEX `fk_customerCars_has_products_customerCars1_idx` (`customerCars_customerCar_id` ASC) VISIBLE,
  CONSTRAINT `fk_customerCars_has_products_customerCars1`
    FOREIGN KEY (`customerCars_customerCar_id`)
    REFERENCES `manufacturing`.`customerCars` (`customerCar_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_customerCars_has_products_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `manufacturing`.`products` (`product_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
