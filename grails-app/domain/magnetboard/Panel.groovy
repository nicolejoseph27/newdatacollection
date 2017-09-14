package magnetboard

class Panel {

    static belongsTo = Job
		
  Job job
  Integer panelNumber
  String notes
  
  //Through holes
  Float aveWallThickness
  Float minWallThickness
  Float minWrapThickness
  
  //Microvias
  Float microAveWallThickness
  Float microMinWallThickness
  Float microMinWrapThickness
  
  //Buried Vias 2 layers
  Float buriedAveWallThickness
  Float buriedMinWallThickness
  Float buriedMinWrapThickness
  
  //Buried Vias greater than 2 layers
  Float buriedTwoAveWallThickness
  Float buriedTwoMinWallThickness
  Float buriedTwoMinWrapThickness
  
  //Floats
  
  Float wrapPlatingOnLand
  Float internalAnnularRing
  Float externalConductorThickness
  Float internalConductorThickness
  Float etchback
  Float etchbackPtfe
  Float negativeEtchBack
  Float capPlating
  Float metalCoreLateralSpacing
  
  //Boolean
  
  Boolean copperVoids
  Boolean platingVoids
  Boolean burrsNodules
  Boolean glassFiberProtrusion
  Boolean smearRemoval
  Boolean dielectricSpacing
  Boolean laminateVoidsCracks
  Boolean delaminationBlistering
  Boolean externalFoilCracks
  Boolean platingSeperation
  Boolean barrelCornerCracks
  Boolean innerLayerSeperation
  Boolean internalFoilCracks
  Boolean resinFill
  Boolean wicking
  Boolean wickingWithEtchback
  Boolean microviaCaptureLand
  Boolean copperFilledMicroVia
  Boolean microViaContactDimension
  Boolean AdhesiveVoidsFlex
  Boolean materialFillOfBlindVias
  Boolean materialFillOfBuriedVias
 
  static constraints = {aveWallThickness:minWallThickness:minWrapThickness:microAveWallThickness:microMinWallThickness(nullable:true)
	  
  }
}
