CREATE DATABASE IF NOT EXISTS `app`;

CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, password VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB;

CREATE TABLE image (id INT AUTO_INCREMENT NOT NULL, user_image INT DEFAULT NULL, name VARCHAR(255) NOT NULL, INDEX IDX_C53D045F27FFFF07 (user_image), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB;

ALTER TABLE image ADD CONSTRAINT FK_C53D045F27FFFF07 FOREIGN KEY (user_image) REFERENCES user (id);