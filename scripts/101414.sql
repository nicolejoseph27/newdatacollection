ALTER TABLE job DROP noOfSignalLayers varchar(255) null;
ALTER TABLE job DROP aoiBeMachineLightSource varchar(255) null;
ALTER TABLE job DROP tinStripOperator varchar(255) null;
ALTER TABLE job DROP aoiBeOperator varchar(255) null;
ALTER TABLE job DROP minLine varchar(255) null;
ALTER TABLE job DROP minSpace varchar(255) null;
ALTER TABLE job DROP aoiBeNoOfShorts varchar(255) null;
ALTER TABLE job DROP aoiBeNoOfOpens varchar(255) null;
ALTER TABLE job DROP aoiAeOperator varchar(255) null;
ALTER TABLE job DROP aoiAeNoOfPanelsScrap varchar(255) null;
ALTER TABLE job DROP aoiAeNoOfShorts varchar(255) null;
ALTER TABLE job DROP aoiAeNoOfOpens varchar(255) null;
ALTER TABLE job DROP aoiAeMachineLightSource varchar(255) null;

alter table job DROP tinStripDate datetime null;
alter table job DROP aoiBeDate datetime null;
alter table job DROP aoiAeDate datetime null;


ALTER TABLE job ADD no_of_signal_layers varchar(255) null;
ALTER TABLE job ADD aoi_be_machine_light_source varchar(255) null;
ALTER TABLE job ADD tin_strip_operator varchar(255) null;
ALTER TABLE job ADD aoi_be_operator varchar(255) null;
ALTER TABLE job ADD min_line varchar(255) null;
ALTER TABLE job ADD min_space varchar(255) null;
ALTER TABLE job ADD aoi_be_no_of_shorts varchar(255) null;
ALTER TABLE job ADD aoi_be_no_of_opens varchar(255) null;
ALTER TABLE job ADD aoi_ae_operator varchar(255) null;
ALTER TABLE job ADD aoi_ae_no_of_panels_scrap varchar(255) null;
ALTER TABLE job ADD aoi_ae_no_of_shorts varchar(255) null;
ALTER TABLE job ADD aoi_ae_no_of_opens varchar(255) null;
ALTER TABLE job ADD aoi_ae_machine_light_source varchar(255) null;

alter table job add tin_strip_date datetime null;
alter table job add aoi_be_date datetime null;
alter table job add aoi_ae_date datetime null;

alter table machine_variable ADD air_quality_outside_temp varchar(255) null;
alter table machine_variable ADD air_quality_outside_humid varchar(255) null;