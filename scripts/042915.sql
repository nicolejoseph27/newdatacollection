CREATE TABLE `material_pre_preg_part_number` (

  `material_pre_preg_part_numbers_id` bigint(20) DEFAULT NULL,
  `pre_preg_part_number_id` bigint(20) DEFAULT NULL,
  KEY `FK88ECC5AE56A13C75` (`pre_preg_part_number_id`),
  KEY `FK88ECC5AE5873844E` (`material_pre_preg_part_numbers_id`),
  CONSTRAINT `FK88ECC5AE56A13C75` FOREIGN KEY (`pre_preg_part_number_id`) REFERE
NCES `pre_preg_part_number` (`id`),
  CONSTRAINT `FK88ECC5AE5873844E` FOREIGN KEY (`material_pre_preg_part_numbers_i
d`) REFERENCES `material` (`id`)
)

CREATE TABLE `material` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `lot_number` varchar(255) DEFAULT NULL,
  `part_number_id` bigint(20) DEFAULT NULL,
  `square_feet` varchar(255) DEFAULT NULL,
  `square_feet_allocated` float DEFAULT NULL,
  `square_feet_available` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK11D365279B56EC96` (`part_number_id`),
  CONSTRAINT `FK11D365279B56EC96` FOREIGN KEY (`part_number_id`) REFERENCES `pre
_preg_part_number` (`id`)
)

CREATE TABLE `pre_preg_part_number` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `part_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
)


ALTER TABLE job ADD duration_prod float DEFAULT NULL;