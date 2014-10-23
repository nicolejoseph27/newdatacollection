package magnetboard

class Job {
	
	static transients = ['scrubbedTotalValue','numberPepMean','numberPluritecXcomp','numberPluritecYcomp']
	
	static belongsTo = Process
	
String priority
String thickness
String jobname
String companyname
String shoporder
String duedate
String workorder
String totalvalue
String valueperboard
String nooflayers
String noboardsperpanel
String size
String cam
String material
String projectmanager
String salescontact
String noofboardsordered
String noofpanelsmade
String notes
Process process
Date pepDate
String pepMean
String pepOperator
String dcCell
String dcAt
String dcAb
String dcSpec
String dcOperator
String dcMinCuDeposit
String dcMaxCuDeposit
String dcAsf
String dcTct
Date dcDate
String dcRack
Date pluritecDate
String pluritecOperator
String pluritecXcomp
String pluritecYcomp
Date olEtchDate
String olEtchOperator
Float olEtchTwBefore
Float olEtchTwAfter		//This variable is used with tinStrip
Float olEtchLineSpeed
Float olEtchCuThickness
Boolean olEtchSplash
Date tinStripDate
String tinStripOperator
String noOfSignalLayers
String aoiBeMachineLightSource
String aoiBeOperator
Date aoiBeDate
String minLine
String minSpace
String aoiBeNoOfShorts
String aoiBeNoOfOpens
String aoiAeOperator
String aoiAeNoOfPanelsScrap
Date aoiAeDate
String aoiAeNoOfShorts
String aoiAeNoOfOpens
String aoiAeMachineLightSource

static constraints = {process(nullable:true)
					pepMean(nullable:true)
					pepOperator(nullable:true)
					dcCell(nullable:true)
					dcAt(nullable:true)
					dcAb(nullable:true)
					dcSpec(nullable:true)
					dcOperator(nullable:true)
					dcMinCuDeposit(nullable:true)
					dcMaxCuDeposit(nullable:true)
					dcDate(nullable:true)
					pepDate(nullable:true)
					dcAsf(nullable:true)
					dcTct(nullable:true)
					dcRack(nullable:true)
					pluritecDate(nullable:true)
					pluritecOperator(nullable:true)
					pluritecXcomp(nullable:true)
					pluritecYcomp(nullable:true)
					material(nullable:true)
					olEtchDate(nullable:true)
					olEtchOperator(nullable:true)
					olEtchTwBefore(nullable:true)
					olEtchTwAfter(nullable:true)
					olEtchLineSpeed(nullable:true)
					olEtchCuThickness(nullable:true)
					olEtchSplash(nullable:true)
					aoiAeMachineLightSource(nullable:true)
					aoiAeNoOfOpens(nullable:true)
					aoiAeNoOfShorts(nullable:true)
					aoiAeDate(nullable:true)
					aoiAeNoOfPanelsScrap(nullable:true)
					aoiAeOperator(nullable:true)
					aoiBeNoOfOpens(nullable:true)
					aoiBeNoOfShorts(nullable:true)
					minSpace(nullable:true)
					minLine(nullable:true)
					aoiBeDate(nullable:true)
					aoiBeOperator(nullable:true)
					aoiBeMachineLightSource(nullable:true)
					noOfSignalLayers(nullable:true)
					tinStripDate(nullable:true)
					tinStripOperator(nullable:true)
}

double getScrubbedTotalValue() {
	if (!totalvalue) return 0.0
	Double.parseDouble(totalvalue.replaceAll("[\\\$-,-a-zA-Z]",""))
}

double getnumberPepMean() {
	pepMean.toDouble()
}

double getnumberPluritecXcomp() {
	pluritecXcomp.toDouble()
}

double getnumberPluritecYcomp() {
	pluritecYcomp.toDouble()
}

String toString(){
	return workorder
   }

}