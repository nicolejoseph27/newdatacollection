CREATE TABLE `constants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `limit_number` float NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) 

ALTER TABLE job ADD on_time_delivery_ratio float DEFAULT NULL;
ALTER TABLE job ADD ship_date varchar(255) null;
ALTER TABLE job ADD process_milestones varchar(255) null;
ALTER TABLE job ADD original_milestones varchar(255) null;
ALTER TABLE job ADD final_milestones varchar(255) null;
ALTER TABLE job ADD actual_milestones varchar(255) null;