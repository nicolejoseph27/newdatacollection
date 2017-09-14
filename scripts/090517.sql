CREATE TABLE `panel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `adhesive_voids_flex` bit(1) NOT NULL,
  `ave_wall_thickness` float NOT NULL,
  `barrel_corner_cracks` bit(1) NOT NULL,
  `buried_ave_wall_thickness` float NOT NULL,
  `buried_min_wall_thickness` float NOT NULL,
  `buried_min_wrap_thickness` float NOT NULL,
  `buried_two_ave_wall_thickness` float NOT NULL,
  `buried_two_min_wall_thickness` float NOT NULL,
  `buried_two_min_wrap_thickness` float NOT NULL,
  `burrs_nodules` bit(1) NOT NULL,
  `cap_plating` float NOT NULL,
  `copper_filled_micro_via` bit(1) NOT NULL,
  `copper_voids` bit(1) NOT NULL,
  `delamination_blistering` bit(1) NOT NULL,
  `dielectric_spacing` bit(1) NOT NULL,
  `etchback` float NOT NULL,
  `etchback_ptfe` float NOT NULL,
  `external_conductor_thickness` float NOT NULL,
  `external_foil_cracks` bit(1) NOT NULL,
  `glass_fiber_protrusion` bit(1) NOT NULL,
  `inner_layer_seperation` bit(1) NOT NULL,
  `internal_annular_ring` float NOT NULL,
  `internal_conductor_thickness` float NOT NULL,
  `internal_foil_cracks` bit(1) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `laminate_voids_cracks` bit(1) NOT NULL,
  `material_fill_of_blind_vias` bit(1) NOT NULL,
  `material_fill_of_buried_vias` bit(1) NOT NULL,
  `metal_core_lateral_spacing` float NOT NULL,
  `micro_ave_wall_thickness` float NOT NULL,
  `micro_min_wall_thickness` float DEFAULT NULL,
  `micro_min_wrap_thickness` float NOT NULL,
  `micro_via_contact_dimension` bit(1) NOT NULL,
  `microvia_capture_land` bit(1) NOT NULL,
  `min_wall_thickness` float NOT NULL,
  `min_wrap_thickness` float NOT NULL,
  `negative_etch_back` float NOT NULL,
  `notes` varchar(255) NOT NULL,
  `panel_number` int(11) NOT NULL,
  `plating_seperation` bit(1) NOT NULL,
  `plating_voids` bit(1) NOT NULL,
  `resin_fill` bit(1) NOT NULL,
  `smear_removal` bit(1) NOT NULL,
  `wicking` bit(1) NOT NULL,
  `wicking_with_etchback` bit(1) NOT NULL,
  `wrap_plating_on_land` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6580A04E7611148` (`job_id`),
  CONSTRAINT `FK6580A04E7611148` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
);

ALTER TABLE machine_variable ADD pth_date datetime DEFAULT NULL;
ALTER TABLE machine_variable ADD day bigint(20) DEFAULT NULL;
ALTER TABLE machine_variable ADD pre_cond4461a float DEFAULT NULL;
ALTER TABLE machine_variable ADD pre_cond4461b float DEFAULT NULL;
ALTER TABLE machine_variable ADD act_acidn float DEFAULT NULL;
ALTER TABLE machine_variable ADD act_chloriden float DEFAULT NULL;
ALTER TABLE machine_variable ADD act_cu float DEFAULT NULL;
ALTER TABLE machine_variable ADD act_density float DEFAULT NULL;
ALTER TABLE machine_variable ADD back_light float DEFAULT NULL;
ALTER TABLE machine_variable ADD c473 float DEFAULT NULL;
ALTER TABLE machine_variable ADD cond4471 float DEFAULT NULL;
ALTER TABLE machine_variable ADD cud float DEFAULT NULL;
ALTER TABLE machine_variable ADD cu_density float DEFAULT NULL;
ALTER TABLE machine_variable ADD cu_formaldehyde_mid float DEFAULT NULL;
ALTER TABLE machine_variable ADD cu_formaldehyde_pre float DEFAULT NULL;
ALTER TABLE machine_variable ADD cum float DEFAULT NULL;
ALTER TABLE machine_variable ADD cu_nickel float DEFAULT NULL;
ALTER TABLE machine_variable ADD cua_mid float DEFAULT NULL;
ALTER TABLE machine_variable ADD cua_pre float DEFAULT NULL;
ALTER TABLE machine_variable ADD cub_mid float DEFAULT NULL;
ALTER TABLE machine_variable ADD cub_pre float DEFAULT NULL;
ALTER TABLE machine_variable ADD deposit_thickness float DEFAULT NULL;
ALTER TABLE machine_variable ADD etch_rate float DEFAULT NULL;
ALTER TABLE machine_variable ADD micro_cu float DEFAULT NULL;
ALTER TABLE machine_variable ADD micro_cu_prep float DEFAULT NULL;
ALTER TABLE machine_variable ADD micro_sulfuric_acid float DEFAULT NULL;
ALTER TABLE machine_variable ADD pre_dip_acidn float DEFAULT NULL;
ALTER TABLE machine_variable ADD pre_dip_chloriden float DEFAULT NULL;
ALTER TABLE machine_variable ADD pre_dip_cu float DEFAULT NULL;
ALTER TABLE machine_variable ADD pre_dip_density float DEFAULT NULL;
ALTER TABLE machine_variable ADD stannic_chloride float DEFAULT NULL;
ALTER TABLE machine_variable ADD stannous_chloride_mid float DEFAULT NULL;
ALTER TABLE machine_variable ADD stannous_chloride_pre float DEFAULT NULL;
ALTER TABLE machine_variable ADD void_test float DEFAULT NULL;