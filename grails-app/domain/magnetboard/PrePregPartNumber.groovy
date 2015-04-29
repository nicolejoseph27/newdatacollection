package magnetboard

class PrePregPartNumber {
	
	static belongsTo = Material
	
	String partNumber
	

    static constraints = {
    }
	
	String toString(){
		return partNumber
	   }
	
}
