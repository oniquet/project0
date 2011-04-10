SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `project0` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci ;
USE `project0` ;

-- -----------------------------------------------------
-- Table `project0`.`users`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `project0`.`users` (
  `id` INT NOT NULL ,
  `username` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `rank` INT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_turkish_ci;


-- -----------------------------------------------------
-- Table `project0`.`posts`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `project0`.`posts` (
  `id` INT NOT NULL ,
  `heading` TEXT NULL ,
  `text` TEXT NULL ,
  `tag` TEXT NULL ,
  `userId` INT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `id` (`userId` ASC) ,
  CONSTRAINT `id`
    FOREIGN KEY (`userId` )
    REFERENCES `project0`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_turkish_ci;


-- -----------------------------------------------------
-- Table `project0`.`comments`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `project0`.`comments` (
  `id` INT NOT NULL ,
  `text` TEXT NULL ,
  `userId` INT NULL ,
  `postId` INT NULL ,
  `commentId` INT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `id` (`userId` ASC) ,
  INDEX `id` (`id` ASC) ,
  CONSTRAINT `id`
    FOREIGN KEY (`userId` )
    REFERENCES `project0`.`users` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id`
    FOREIGN KEY (`id` )
    REFERENCES `project0`.`posts` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_turkish_ci;


CREATE USER `userWWW` IDENTIFIED BY 'qWeRtYcode';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
