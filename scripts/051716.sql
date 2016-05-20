ALTER TABLE job modify actual_milestones varchar(1000);
ALTER TABLE job modify original_milestones varchar(1000);
ALTER TABLE job modify final_milestones varchar(1000);
ALTER TABLE job modify process_milestones varchar(1000);
ALTER TABLE job ADD date_ship_date datetime DEFAULT NULL;
ALTER TABLE job ADD bake_time datetime DEFAULT NULL;
ALTER TABLE process add mile_stone bit(1) default null;