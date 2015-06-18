package magnetboard

class Job {
	
	static transients = ['scrubbedTotalValue','numberPepMean','numberPluritecXcomp','numberPluritecYcomp']
	
	static belongsTo = Process
	
// original variables added by setup to create the job
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
String minHole
Process process
Date jobStartDate
Date jobEndDate
Integer durationProd

//Variables for scheduling
Float onTimeDeliveryRatio
String shipDate
String processMilestones
String originalMilestones
String finalMilestones
String actualMilestones

// PEP variables
Date pepDate
String pepMean
String pepOperator

// dc variables
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
String dcNotes 


//pluritec variables
Date pluritecDate
String pluritecOperator
String pluritecXcomp
String pluritecYcomp

//Ol Etch variables
Date olEtchDate
String olEtchOperator
Float olEtchTwBefore
Float olEtchTwAfter		//This variable is used with tinStrip
Float olEtchLineSpeed
Float olEtchCuThickness
Boolean olEtchSplash

// Tin Strip variables
Date tinStripDate
String tinStripOperator

//AOI variables
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
Long aoiBeStartTime
Long aoiBeStopTime
Long aoiBeRunTime
Long touchUpStartTime
Long touchUpStopTime
Long touchUpRunTime
Long aoiAeStartTime
Long aoiAeStopTime
Long aoiAeRunTime
Long repairStartTime
Long repairStopTime
Long repairRunTime
Long aoiBpStartTime
Long aoiBpStopTime
Long aoiBpRunTime
Long aoiFinalStartTime
Long aoiFinalStopTime
Long aoiFinalRunTime
Long repairOuterStartTime
Long repairOuterStopTime
Long repairOuterRunTime

//HAL
Date halDate
String halOperator
String halAirKnifeGap
Boolean halDoubleFlux
Boolean halDoubleDip
Boolean halGoldFingers
Boolean halColdPress
String halNotes

//Should be Floats
String halBakeTime
String halTimeSinceLastBaked
String halWithdrawalTurns

//Should be integers
String halDwellTime
String halAirKnifePressureFront
String halAirKnifePressureRear

//PPG developer
Date ppgDate
String ppgOperator
String ppgRunSpeed
String ppgStepTab
String ppgNoOfPanels

//PPG Stripper
Date ppgStripperDate
String ppgStripperOperator
String ppgStripperNoOfPanels

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
					dcNotes(nullable:true)
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
					aoiBeStartTime(nullable:true)
					aoiBeStopTime(nullable:true)
					aoiBeRunTime(nullable:true)
					touchUpStartTime(nullable:true)
					touchUpStopTime(nullable:true)
					touchUpRunTime(nullable:true)
					aoiAeStartTime(nullable:true)
					aoiAeStopTime(nullable:true)
					aoiAeRunTime(nullable:true)
					repairStartTime(nullable:true)
					repairStopTime(nullable:true)
					repairRunTime(nullable:true)
					aoiBpStartTime(nullable:true)
					aoiBpStopTime(nullable:true)
					aoiBpRunTime(nullable:true)
					aoiFinalStartTime(nullable:true)
					aoiFinalStopTime(nullable:true)
					aoiFinalRunTime(nullable:true)
					repairOuterStartTime(nullable:true)
					repairOuterStopTime(nullable:true)
					repairOuterRunTime(nullable:true)
					minSpace(nullable:true)
					minLine(nullable:true)
					aoiBeDate(nullable:true)
					aoiBeOperator(nullable:true)
					aoiBeMachineLightSource(nullable:true)
					noOfSignalLayers(nullable:true)
					tinStripDate(nullable:true)
					tinStripOperator(nullable:true)
					//hal
					halDate(nullable:true)
					halOperator(nullable:true)
					halAirKnifeGap(nullable:true)
					halDoubleFlux(nullable:true)
					halDoubleDip(nullable:true)
					halGoldFingers(nullable:true)
					halColdPress(nullable:true)
					halNotes(nullable:true)
					halBakeTime(nullable:true)
					halTimeSinceLastBaked(nullable:true)
					halWithdrawalTurns(nullable:true)
					halDwellTime(nullable:true)
					halAirKnifePressureFront(nullable:true)
					halAirKnifePressureRear(nullable:true)
					ppgDate(nullable:true)
					ppgOperator(nullable:true)
					ppgRunSpeed(nullable:true)
					ppgStepTab(nullable:true)
					ppgNoOfPanels(nullable:true)
					ppgStripperDate(nullable:true)
					ppgStripperOperator(nullable:true)
					ppgStripperNoOfPanels(nullable:true)
					minHole(nullable:true)
					jobStartDate(nullable:true)
					jobEndDate(nullable:true)
					durationProd(nullable:true)
					onTimeDeliveryRatio(nullable:true)
					shipDate(nullable:true)
					processMilestones(nullable:true)
					originalMilestones(nullable:true)
					finalMilestones(nullable:true)
					actualMilestones(nullable:true)
					
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