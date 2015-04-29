package magnetboard

class Material {
	
	static hasMany = [prePregPartNumbers: PrePregPartNumber]
	
	PrePregPartNumber partNumber
	String lotNumber
	String squareFeet
	Date expirationDate
	Float squareFeetAvailable
	Float squareFeetAllocated

    static constraints = {
		partNumber(nullable:true)
		lotNumber(nullable:true)
		squareFeet(nullable:true)
		expirationDate(nullable:true)
		squareFeetAvailable(nullable:true)
		squareFeetAllocated(nullable:true)
    }
}
