package magnetboard

class Machine {
	
	static hasMany = [maintenanceOnMachines: MaintenanceOnMachines]
	
	 String name
   	 Float totalLaborHours 
	Float totalSquareFeet
		
	static constraints = {totalLaborHours(nullable:true)
		totalSquareFeet(nullable:true)
	}
  String toString(){
	  return name
	 }
  
}
