package magnetboard

class BottomsUp {

    
	
	String companyName
	String partNumber
	Boolean newJob
	String typeOfBoard
	String buildSpec
	String panelSize
	Integer boardsPerPanel = 0
	Integer noOfPanels = 0
	String materialType
	Integer noOfLayers = 0
	Integer thickness = 0
	Integer noOfCores = 0
	Integer minCoreThickness = 0
	String maxCoreCuWeight
	Integer noOfPrepregs = 0
	Integer noofLaminations = 0
	Float minTraceWidthNonPlated = 0
	Float minTraceWidthPlated = 0
	Float minSpaceNonPlated = 0
	Float minSpacePlated = 0
	String controlledImpedance
	Integer noOfRoutePrograms = 0
	Integer noOfDrillPrograms = 0
	Float smallestMechanicalDrillSize = 0
	Float internalAnularRing = 0
	Float externalAnularRing = 0
	Integer noOfDrillHitsPerBoard = 0
	Float blindMicroVias = 0
	String panelPlating
	String holeFillType
	Boolean etchbackRequired
	String finalFinish
	Boolean goldFingers
	String coverlay
	Integer noOfCoverlaySoldermaskSides = 0
	Float soldermaskAnularRing = 0
	String soldermaskColor
	Integer legendSides = 0
	String legendColor 
	String serialization
	Float routeTolerance = 0
	Float boardPerimeter = 0
	String scoring
	Float cdRouting  = 0
	String testMethod
	String testType
	Integer noOfTestPoints = 0
	Integer viaTypesPerCoupon = 0
	Boolean specialPackaging
		
	static constraints = {
		typeOfBoard(nullable:true)
		buildSpec(nullable:true)
		panelSize(nullable:true)
		boardsPerPanel(nullable:true)
		noOfPanels(nullable:true)
		materialType(nullable:true)
		noOfLayers(nullable:true)
		thickness(nullable:true)
		noOfCores(nullable:true)
		minCoreThickness(nullable:true)
		maxCoreCuWeight(nullable:true)
		noOfPrepregs(nullable:true)
		noofLaminations(nullable:true)
		minTraceWidthNonPlated(nullable:true)
		minTraceWidthPlated(nullable:true)
		minSpaceNonPlated(nullable:true)
		minSpacePlated(nullable:true)
		controlledImpedance(nullable:true)
		noOfRoutePrograms(nullable:true)
		noOfDrillPrograms(nullable:true)
		smallestMechanicalDrillSize(nullable:true)
		internalAnularRing(nullable:true)
		externalAnularRing(nullable:true)
		noOfDrillHitsPerBoard(nullable:true)
		blindMicroVias(nullable:true)
		panelPlating(nullable:true)
		holeFillType(nullable:true)
		etchbackRequired(nullable:true)
		finalFinish(nullable:true)
		goldFingers(nullable:true)
		coverlay(nullable:true)
		noOfCoverlaySoldermaskSides(nullable:true)
		soldermaskAnularRing(nullable:true)
		soldermaskColor(nullable:true)
		legendSides(nullable:true)
		legendColor(nullable:true)
		serialization(nullable:true)
		routeTolerance(nullable:true)
		boardPerimeter(nullable:true)
		scoring(nullable:true)
		cdRouting(nullable:true)
		testMethod(nullable:true)
		testType(nullable:true)
		noOfTestPoints(nullable:true)
		viaTypesPerCoupon(nullable:true)
		specialPackaging(nullable:true)
		companyName(nullable:true)
		partNumber(nullable:true)
		newJob(nullable:true)
	}
	
	
}
