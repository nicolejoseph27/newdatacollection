package magnetboard

class Machine {
	
	static hasMany = [maintenanceOnMachines: MaintenanceOnMachines]
	
	 String name
   	 Float totalLaborHours 
		
  String toString(){
	  return name
	 }
  
}
