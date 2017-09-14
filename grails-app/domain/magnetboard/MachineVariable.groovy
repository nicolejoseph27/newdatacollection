package magnetboard

class MachineVariable {
	
	// Clean Room
	
	Date airQuality_date
	String airQuality_operator
	String airQuality_spray
	String airQuality_spray5
	String airQuality_sprayTemp
	String airQuality_sprayHumid
	String airQuality_sprayPressure
	String airQuality_sprayafterac
	String airQuality_sprayafterac5
	String airQuality_hall
	String airQuality_hall5
	String airQuality_2camera
	String airQuality_2camera5
	String airQuality_2cameraTemp
	String airQuality_2cameraHumid
	String airQuality_2cameraPressure
	String airQuality_4camera
	String airQuality_4camera5
	String airQuality_4cameraTemp
	String airQuality_4cameraHumid
	String airQuality_4cameraPressure
	String airQuality_films
	String airQuality_films5
	String airQuality_filmsTemp
	String airQuality_filmsHumid
	String airQuality_filmsPressure
	String airQualityLayup
	String airQualityLayup5
	String airQualityLayupTemp
	String airQualityLayupHumid
	String airQualityLayupPressure
	String airQualityStaging
	String airQualityStaging5
	String airQualityStagingTemp
	String airQualityStagingHumid
	String airQualityStagingPressure
	String airQualityOutsideTemp
	String airQualityOutsideHumid
	Date cleanRoomCleaningDate
	String cleanRoomCleaningOperator
	String cleanRoomCleaning
	
	// PTH
	Date pthDate
	Integer day
	Float preCond4461A
	Float preCond4461B
	Float cond4471
	Float microCuPrep
	Float microSulfuricAcid
	Float microCu
	Float preDipCu
	Float preDipDensity
	Float preDipAcidN
	Float preDipChlorideN
	Float actCu
	Float actChlorideN
	Float actAcidN
	Float c473
	Float stannousChloridePre
	Float stannousChlorideMid
	Float stannicChloride
	Float actDensity
	Float cuaPre
	Float cuaMid
	Float cubPre
	Float cubMid
	Float cuM
	Float cuD
	Float cuFormaldehydePre
	Float cuFormaldehydeMid
	Float cuDensity
	Float cuNickel
	Float depositThickness
	Float etchRate
	Float voidTest
	Float backLight
	
	static constraints = {
		airQuality_date(nullable:true)
		airQuality_operator(nullable:true)
		airQuality_spray(nullable:true)
		airQuality_spray5(nullable:true)
		airQuality_sprayTemp(nullable:true)
		airQuality_sprayHumid(nullable:true)
		airQuality_sprayPressure(nullable:true)
		airQuality_sprayafterac(nullable:true)
		airQuality_sprayafterac5(nullable:true)
		airQuality_hall(nullable:true)
		airQuality_hall5(nullable:true)
		airQuality_films(nullable:true)
		airQuality_films5(nullable:true)
		airQuality_filmsTemp(nullable:true)
		airQuality_filmsHumid(nullable:true)
		airQuality_filmsPressure(nullable:true)
		airQuality_2camera(nullable:true)
		airQuality_2camera5(nullable:true)
		airQuality_2cameraTemp(nullable:true)
		airQuality_2cameraHumid(nullable:true)
		airQuality_2cameraPressure(nullable:true)
		airQuality_4camera(nullable:true)
		airQuality_4camera5(nullable:true)
		airQuality_4cameraTemp(nullable:true)
		airQuality_4cameraHumid(nullable:true)
		airQuality_4cameraPressure(nullable:true)
		airQualityLayup(nullable:true)
		airQualityLayup5(nullable:true)
		airQualityLayupTemp(nullable:true)
		airQualityLayupHumid(nullable:true)
		airQualityLayupPressure(nullable:true)
		airQualityStaging(nullable:true)
		airQualityStaging5(nullable:true)
		airQualityStagingTemp(nullable:true)
		airQualityStagingHumid(nullable:true)
		airQualityStagingPressure(nullable:true)
		airQualityOutsideHumid(nullable:true)
		airQualityOutsideTemp(nullable:true)
		cleanRoomCleaning(nullable:true)
		cleanRoomCleaningDate(nullable:true)
		cleanRoomCleaningOperator(nullable:true)
		pthDate(nullable:true)
		day(nullable:true)
		preCond4461A(nullable:true)
		preCond4461B(nullable:true)
		cond4471(nullable:true)
		microCuPrep(nullable:true)
		microSulfuricAcid(nullable:true)
		microCu(nullable:true)
		preDipCu(nullable:true)
		preDipDensity(nullable:true)
		preDipAcidN(nullable:true)
		preDipChlorideN(nullable:true)
		actCu(nullable:true)
		actChlorideN(nullable:true)
		actAcidN(nullable:true)
		c473(nullable:true)
		stannousChloridePre(nullable:true)
		stannousChlorideMid(nullable:true)
		stannicChloride(nullable:true)
		actDensity(nullable:true)
		cuaPre(nullable:true)
		cuaMid(nullable:true)
		cubPre(nullable:true)
		cubMid(nullable:true)
		cuM(nullable:true)
		cuD(nullable:true)
		cuFormaldehydePre(nullable:true)
		cuFormaldehydeMid(nullable:true)
		cuDensity(nullable:true)
		cuNickel(nullable:true)
		depositThickness(nullable:true)
		etchRate(nullable:true)
		voidTest(nullable:true)
		backLight(nullable:true)
		
}

}
