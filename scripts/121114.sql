CREATE TABLE `bottoms_up` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `blind_micro_vias` float DEFAULT NULL,
  `board_perimeter` float DEFAULT NULL,
  `boards_per_panel` int(11) DEFAULT NULL,
  `build_spec` varchar(255) DEFAULT NULL,
  `cd_routing` float DEFAULT NULL,
  `controlled_impedance` varchar(255) DEFAULT NULL,
  `coverlay` varchar(255) DEFAULT NULL,
  `etchback_required` bit(1) DEFAULT NULL,
  `external_anular_ring` float DEFAULT NULL,
  `final_finish` varchar(255) DEFAULT NULL,
  `gold_fingers` bit(1) DEFAULT NULL,
  `hole_fill_type` varchar(255) DEFAULT NULL,
  `internal_anular_ring` float DEFAULT NULL,
  `legend_color` varchar(255) DEFAULT NULL,
  `legend_sides` int(11) DEFAULT NULL,
  `material_type` varchar(255) DEFAULT NULL,
  `max_core_cu_weight` varchar(255) DEFAULT NULL,
  `min_core_thickness` int(11) DEFAULT NULL,
  `min_space_non_plated` float DEFAULT NULL,
  `min_space_plated` float DEFAULT NULL,
  `min_trace_width_non_plated` float DEFAULT NULL,
  `min_trace_width_plated` float DEFAULT NULL,
  `no_of_cores` int(11) DEFAULT NULL,
  `no_of_coverlay_soldermask_sides` int(11) DEFAULT NULL,
  `no_of_drill_hits_per_board` int(11) DEFAULT NULL,
  `no_of_drill_programs` int(11) DEFAULT NULL,
  `no_of_layers` int(11) DEFAULT NULL,
  `no_of_panels` int(11) DEFAULT NULL,
  `no_of_prepregs` int(11) DEFAULT NULL,
  `no_of_route_programs` int(11) DEFAULT NULL,
  `no_of_test_points` int(11) DEFAULT NULL,
  `noof_laminations` int(11) DEFAULT NULL,
  `panel_plating` varchar(255) DEFAULT NULL,
  `panel_size` varchar(255) DEFAULT NULL,
  `route_tolerance` float DEFAULT NULL,
  `scoring` varchar(255) DEFAULT NULL,
  `serialization` varchar(255) DEFAULT NULL,
  `smallest_mechanical_drill_size` float DEFAULT NULL,
  `soldermask_anular_ring` float DEFAULT NULL,
  `soldermask_color` varchar(255) DEFAULT NULL,
  `special_packaging` bit(1) DEFAULT NULL,
  `test_method` varchar(255) DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  `thickness` int(11) DEFAULT NULL,
  `type_of_board` varchar(255) DEFAULT NULL,
  `via_types_per_coupon` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `new_job` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 




ALTER TABLE job ADD hal_air_knife_gap varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_air_knife_pressure_front varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_air_knife_pressure_rear varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_bake_time varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_cold_press bit(1) DEFAULT NULL;
ALTER TABLE job ADD hal_date datetime DEFAULT NULL;
ALTER TABLE job ADD hal_double_dip bit(1) DEFAULT NULL;
ALTER TABLE job ADD hal_double_flux bit(1) DEFAULT NULL;
ALTER TABLE job ADD hal_dwell_time varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_gold_fingers  bit(1) DEFAULT NULL;
ALTER TABLE job ADD hal_notes varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_operator varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_temp_dip_zone varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_temp_front_knife varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_temp_pump_zone varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_temp_rear_knife varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_time_since_last_baked varchar(255) DEFAULT NULL;
ALTER TABLE job ADD hal_withdrawal_turns varchar(255) DEFAULT NULL;