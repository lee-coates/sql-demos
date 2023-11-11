
-- Particle_Generations
CREATE TABLE `standardmodel`.`particle_generations` (
  `idparticle_generations` INT NOT NULL AUTO_INCREMENT,
  `particle_generation` NVARCHAR(50) NULL,
  PRIMARY KEY (`idparticle_generations`));

-- Particle_Families
CREATE TABLE `standardmodel`.`particle_families` (
  `idParticle_Families` INT NOT NULL AUTO_INCREMENT,
  `family_name` NVARCHAR(150) NULL,
  PRIMARY KEY (`idParticle_Families`));

-- Particle_Types
CREATE TABLE `standardmodel`.`particle_types` (
  `idparticle_types` INT NOT NULL AUTO_INCREMENT,
  `particle_type_name` VARCHAR(100) NULL,
  PRIMARY KEY (`idparticle_types`));

-- Interactions
CREATE TABLE `standardmodel`.`interactions` (
  `idinteractions` INT NOT NULL AUTO_INCREMENT,
  `interaction_name` VARCHAR(100) NULL,
  PRIMARY KEY (`idinteractions`));


-- Particles
CREATE TABLE `standardmodel`.`particles` (
  `idparticles` INT NOT NULL AUTO_INCREMENT,
  `particle_name` VARCHAR(100) NULL,
  `particle_type` INT NULL,
  `particle_family` INT NULL,
  `particle_generation` INT NULL,
  `color_charge` TINYINT NULL,
  `antiparticle_name` VARCHAR(100) NULL,
  `eletric_charge_e` DECIMAL(3,2) NULL,
  `particle_spin_hbar` DECIMAL(2,1) NULL,
  `mass_eV_c2` DECIMAL(16,4) NULL,
  PRIMARY KEY (`idparticles`));

ALTER TABLE `standardmodel`.`particles` 
ADD INDEX `FK_Particles_Particle_Generations_idx` (`particle_generation` ASC) VISIBLE,
ADD INDEX `FK_Particles_Particle_Types_idx` (`particle_type` ASC) VISIBLE;
;
ALTER TABLE `standardmodel`.`particles` 
ADD CONSTRAINT `FK_Particles_Particle_Generations`
  FOREIGN KEY (`particle_generation`)
  REFERENCES `standardmodel`.`particle_generations` (`idparticle_generations`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Particles_Particle_Types`
  FOREIGN KEY (`particle_type`)
  REFERENCES `standardmodel`.`particle_types` (`idparticle_types`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


-- Particle_Interactions
CREATE TABLE `standardmodel`.`particle_interactions` (
  `idparticle_interactions` INT NOT NULL AUTO_INCREMENT,
  `interaction_id` INT NULL,
  `particle_id` INT NULL,
  PRIMARY KEY (`idparticle_interactions`));
ALTER TABLE `standardmodel`.`particle_interactions` 
ADD INDEX `FK_Particle_Interactions_Interactions_idx` (`interaction_id` ASC) VISIBLE,
ADD INDEX `FK_Particle_Interactions_Particles_idx` (`particle_id` ASC) VISIBLE;
;
ALTER TABLE `standardmodel`.`particle_interactions` 
ADD CONSTRAINT `FK_Particle_Interactions_Interactions`
  FOREIGN KEY (`interaction_id`)
  REFERENCES `standardmodel`.`interactions` (`idinteractions`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Particle_Interactions_Particles`
  FOREIGN KEY (`particle_id`)
  REFERENCES `standardmodel`.`particles` (`idparticles`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;