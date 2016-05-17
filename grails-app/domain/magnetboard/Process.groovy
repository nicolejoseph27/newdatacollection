package magnetboard

class Process {

static hasMany = [jobs: Job]

String canister
Integer priority
Boolean mileStone

static constraints = {mileStone(nullable:true)
}
 String toString(){
 return canister
}
}
