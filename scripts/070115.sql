CREATE TABLE `non_business_day` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `non_business_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 