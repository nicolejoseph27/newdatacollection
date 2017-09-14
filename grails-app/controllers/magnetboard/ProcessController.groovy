package magnetboard

import magnetboard.Finishedjobs

import magnetboard.Constants

import groovy.time.TimeCategory

import magnetboard.Job


import grails.plugins.springsecurity.Secured


class ProcessController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index = {
		redirect(action: "list", params: params)
	}

	def list = {
		params.max = Math.min(params.max ? params.int('max') : 75, 100)
		def processList = Process.list(params) - Process.findByCanister("Archive")
		def jobProcessList = Job.list().sort{it.onTimeDeliveryRatio}
		def bakeList = Job.findAllByBakeTimeIsNotNull()
		def finishedBakeList = []
		bakeList.each{
			def today = new Date()
			def newBake = it.bakeTime
			if (newBake < today){
			finishedBakeList.push(it)
			}
			}
		if (finishedBakeList){
		flash.message =  "Remove $finishedBakeList from oven"
		}
		[processInstanceList: processList, processInstanceTotal: Process.count(),jobInstanceList:jobProcessList]
	}
	
	def prioritylist = {
		params.max = Math.min(params.max ? params.int('max') : 50, 100)
		[processInstanceList: Process.list(params), processInstanceTotal: Process.count()]
	}
	def bethview = {
		params.max = Math.min(params.max ? params.int('max') : 75, 100)
		def processList = Process.list(params) - Process.findByCanister("Archive")
		def jobProcessList = Job.list().sort{it.onTimeDeliveryRatio}
		[processInstanceList: processList, processInstanceTotal: Process.count(),jobInstanceList:jobProcessList]
	}

	def jakevue = {
		params.max = Math.min(params.max ? params.int('max') : 75, 100)
		def processList = Process.list(params) - Process.findByCanister("Archive")
		def jobProcessList = Job.list().sort{it.onTimeDeliveryRatio}
		def red = Constants.findByName("red")
		def yellow = Constants.findByName("yellow")
		[processInstanceList: processList, processInstanceTotal: Process.count(),jobInstanceList:jobProcessList,red: red.limitNumber, yellow: yellow.limitNumber]
	}
	
	def create = {
		def processInstance = new Process()
		processInstance.properties = params
		return [processInstance: processInstance]
	}

	def save = {
		def processInstance = new Process(params)
		if (processInstance.save(flush: true)) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'process.label', default: 'Process'), processInstance.id])}"
			redirect(action: "priorityshow", id: processInstance.id)
		}
		else {
			render(view: "create", model: [processInstance: processInstance])
		}
	}
	
	def show = {
		def processInstance = Process.get(params.id)
		if (!processInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
		else {
			[processInstance: processInstance]
		}
	}
	
	def priorityshow = {
		def processInstance = Process.get(params.id)
		if (!processInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
		else {
			[processInstance: processInstance]
		}
	}

	def edit = {
		def processInstance = Process.get(params.id)
		if (!processInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [processInstance: processInstance]
		}
	}

	def priorityedit = {
		def processInstance = Process.get(params.id)
		if (!processInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [processInstance: processInstance]
		}
	}
	
	def update = {
		def processInstance = Process.get(params.id)
		if (processInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (processInstance.version > version) {

					processInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'process.label', default: 'Process')] as Object[], "Another user has updated this Process while you were editing")
					render(view: "edit", model: [processInstance: processInstance])
					return
				}
			}
			processInstance.properties = params
			if (!processInstance.hasErrors() && processInstance.save(flush: true)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'process.label', default: 'Process'), processInstance.id])}"
				redirect(action: "priorityshow", id: processInstance.id)
			}
			else {
				render(view: "edit", model: [processInstance: processInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "prioritylist")
		}
	}

	def delete = {
		def processInstance = Process.get(params.id)
		if (processInstance) {
			try {
				processInstance.delete(flush: true)
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
				redirect(action: "list")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
				redirect(action: "show", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
	}
	
	def saveOrThrow(def o) {
		if (!o.save()) {
			println "COULD NOT SAVE: ${o}"
			o.errors.allErrors.each { println it }

			throw new RuntimeException('Failed')
		}
	}
	
	def recalculateOnTimeDelivery = {
		
		// recalculate the on time delivery ratio when clicked
		def today = new Date()
			Job.list().each{
				if (it.processMilestones && it.dateShipDate){
					def businessDays = it.dateShipDate - today + 1
					
					
					def proMilestone = it.processMilestones.tokenize(',')
						(today..it.dateShipDate).each {
							def dateCounter = it.format("MM/dd/yyyy")
							NonBusinessDay.list().each{
								def stringBus = it.nonBusinessDate.toString()
								def nonBus = Date.parse("yyyy-MM-dd HH:mm:ss.S", stringBus)
								def nonBusCompare = nonBus.format("MM/dd/yyyy")
								if (nonBusCompare == dateCounter){
									businessDays = businessDays - 1
								}
							}
						}
				it.onTimeDeliveryRatio = businessDays / proMilestone.size()
				}
			}
			redirect(action: "list")
	}
	
	def dropJob = {
		def p1 = Process.get(57)
		def today = new Date()
		def oldprocessInstance = Process.get(params.oldprocessId) 
		def processInstance = Process.get(params.processId)
		def jobInstance = Job.get(params.jobId)
		jobInstance.process = processInstance
		
		
		if (oldprocessInstance)
		{
			
			def job2 = new Throughput(process:oldprocessInstance.canister,datefinished: today,jobname: jobInstance.jobname,companyname: jobInstance.companyname,totalvalue: jobInstance.totalvalue,workorder: jobInstance.workorder)
			saveOrThrow(job2)
			
					if (jobInstance.processMilestones){
							//Check if oldProcessInstance is a Milestone.  Remove the Milestone from the processMilestones stack.  
							def procMile = jobInstance.processMilestones.tokenize(',')
							
							def placeHolder = procMile.pop() 
								// Remove processes that take multiple days
								while(oldprocessInstance.canister == placeHolder && procMile){
									placeHolder = procMile.pop()	
								}
								// Add process back to the stack if it is not the next milestone
								if(!(oldprocessInstance.canister == placeHolder)){
										procMile.push(placeHolder)
								}
										jobInstance.processMilestones = procMile.join(",")
								}
					}	
		
		if (jobInstance.processMilestones && jobInstance.dateShipDate){
			
			def businessDays = jobInstance.dateShipDate - today + 1
			def proMilestone = jobInstance.processMilestones.tokenize(',')
			(today..jobInstance.dateShipDate).each {
							def dateCounter = it.format("MM/dd/yyyy")
							NonBusinessDay.list().each{
								def stringBus = it.nonBusinessDate.toString()
								def nonBus = Date.parse("yyyy-MM-dd HH:mm:ss.S", stringBus)
								def nonBusCompare = nonBus.format("MM/dd/yyyy")
								if (nonBusCompare == dateCounter){
									businessDays = businessDays - 1
								}
							}
						}
			jobInstance.onTimeDeliveryRatio = businessDays / proMilestone.size()
			
		}
		
		// recalculate the on time delivery ratio on every drop
	//	Job.list().each{
		//	if (it.processMilestones && it.shipDate){
			//	def shipDate = Date.parse("MM/dd/yyyy", it.shipDate)
			//	def businessDays = shipDate - today + 1
				//
				
			//	def proMilestone = it.processMilestones.tokenize(',')
			//		(today..shipDate).each {
			//			def dateCounter = it.format("MM/dd/yyyy")
			//			NonBusinessDay.list().each{
			//				def stringBus = it.nonBusinessDate.toString()
			//				def nonBus = Date.parse("yyyy-MM-dd HH:mm:ss.S", stringBus)
			//				def nonBusCompare = nonBus.format("MM/dd/yyyy")
			//				if (nonBusCompare == dateCounter){
			//					businessDays = businessDays - 1
			//				}
			//			}
			//		}
	//		it.onTimeDeliveryRatio = businessDays / proMilestone.size()
	//		}
	//	}
		
		//Assign an end date to the job when moved from QA.  Calculate how many production days the job took.
		if (oldprocessInstance ==~ 'Quality Assurance'){
			jobInstance.jobEndDate = today
			def businessDays = jobInstance.jobEndDate - jobInstance.jobStartDate
			(jobInstance.jobStartDate..jobInstance.jobEndDate).each {
				def dateCounter = it.format("MM/dd/yyyy")
				NonBusinessDay.list().each{
					def stringBus = it.nonBusinessDate.toString()
					def nonBus = Date.parse("yyyy-MM-dd HH:mm:ss.S", stringBus)
					def nonBusCompare = nonBus.format("MM/dd/yyyy")
					if (nonBusCompare == dateCounter){
						businessDays = businessDays - 1
					}
				}
			}
			jobInstance.durationProd = (businessDays).toInteger() + 1
		}
		// When job is finished
		if (processInstance ==~ 'finished')
				{
		//	def job1 = new Finishedjobs(jobname:jobInstance.jobname,companyname:jobInstance.companyname,datefinished: today,shoporder:jobInstance.shoporder,nooflayers:jobInstance.nooflayers,noboardsperpanel:jobInstance.noboardsperpanel,size:jobInstance.size,projectmanager:jobInstance.projectmanager,salescontact:jobInstance.salescontact,notes:jobInstance.notes,workorder:jobInstance.workorder,noofpanelsmade:jobInstance.noofpanelsmade,noofboardsordered:jobInstance.noofboardsordered,totalvalue:jobInstance.totalvalue,valueperboard:jobInstance.valueperboard)
		//saveOrThrow(job1)
		//jobInstance.delete(flush: true)	
		jobInstance.process = p1 
				}
				
		} 
}