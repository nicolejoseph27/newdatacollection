package magnetboard

import grails.plugins.springsecurity.Secured
import magnetboard.Machine
import groovy.time.TimeCategory



class JobController {

	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	
	def engineering = {
		params.max = Math.min(params.max ? params.int('max') : 15, 100)
		[jobInstanceList: Job.list(params), jobInstanceTotal: Job.count()]
	}
	
    def index = {
        redirect(action: "list", params: params)
    }
	
	def crossSections = {
		if(magnetboard.Job.findByWorkorder(params.workOrder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workOrder)
			def jobInstance = Job.get(jobNumber.id)
			[jobInstance: jobInstance]
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "process", action: "list")
		}
	}

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 15, 100)
        [jobInstanceList: Job.list(params), jobInstanceTotal: Job.count()]
    }
	
	def editWeeklyList = {
		if(magnetboard.Job.findByWorkorder(params.workOrder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workOrder)
				def jobInstance = Job.get(jobNumber.id)
				if (params.value){
				jobInstance.totalvalue = params.value
				}
				if(params.date){
				jobInstance.shipDate = params.date
				jobInstance.dateShipDate = Date.parse("yyyy-MM-dd", jobInstance.shipDate)
				}
				redirect(controller: "job", action: "weeklyList")
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "job", action: "weeklyList")
		}
	}
	
	
	def weeklyList = {
		def jobInstance = Job.list()
		def jobInstanceList = []
		def jobParams = []
		jobInstance.each {
			def process1 = it.process?.canister
			if (process1 != "Archive"){
				jobInstanceList.push(it)
				jobParams << [it.dateShipDate, it.duedate, it.workorder, it.companyname, it.jobname, it.totalvalue, process1]
			}	
		}
		[jobParams: jobParams]
	
    }
	
	def innerLayerFlawsPerSide = {
		Date todaysDate = new Date()
		Date previousThirteen = todaysDate - 90
		def jobInstance = Job.findAllByAoiBeDateBetween(previousThirteen, todaysDate)
		Integer totalFlaws = 0
		Integer totalSides = 0 
		jobInstance.sort{it.aoiBeDate}
		def flawsPerSide = []
		jobInstance.each {
			Integer jobFlaws = it.aoiBeNoOfOpens.toInteger()
			Integer signals = it.noOfSignalLayers.toInteger()
			Integer panels = it.noofpanelsmade.toInteger()
			Integer jobSides = signals * panels
			totalFlaws = totalFlaws + jobFlaws
			totalSides = totalSides + jobSides
			def finalYield = totalFlaws/totalSides
			flawsPerSide << [it.aoiBeDate, finalYield]
		}
		[flawsPerSide: flawsPerSide]
	}
	
	def innerLayerFirstPassYield = {
		def jobInstance = Job.findAllByAoiAeDateIsNotNull()		
		def grandTotalLayers = 0
		def grandTotalPanelsScrap = 0
		jobInstance.sort{it.aoiAeDate}
		def firstPassYield = []
		jobInstance.each {
			Integer numberOfLayers = it.nooflayers.toInteger()
			Integer numberOfPanelsMade = it.noofpanelsmade.toInteger()
			Integer panelsScrap = it.aoiAeNoOfPanelsScrap.toInteger()
			if (numberOfLayers <= 2) {numberOfLayers = 4} 
			def totalLayers = ((numberOfLayers - 2)/2) * numberOfPanelsMade
			grandTotalLayers = grandTotalLayers + totalLayers
			grandTotalPanelsScrap = grandTotalPanelsScrap + panelsScrap
			def yield = (1  - grandTotalPanelsScrap/grandTotalLayers) * 100
			firstPassYield << [it.aoiAeDate, yield]
		}
		[firstPassYield: firstPassYield]
	}

	
    def create = {
        def jobInstance = new Job()
		def mileStoneList = magnetboard.Process.findAllByMileStone(true)
        jobInstance.properties = params
		[mileStoneList: mileStoneList]
    }
	
//CLOSE A JOB - Adds an End Date	
	def closeJob = {
		params.max = Math.min(params.max ? params.int('max') : 15, 100)
		if(params.workOrder){
		if(magnetboard.Job.findByWorkorder(params.workOrder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workOrder)
			def jobInstance = Job.get(jobNumber.id) 
			if (params.closeJob){
			def today = new Date()
			jobInstance.jobEndDate = today
				if (!jobInstance.jobStartDate) {
					flash.message = "NO START DATE"}
				else	
				{
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
			}
			}	
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(uri:'/')
		}}
		render(view: "jobDuration", model: [jobInstanceList: Job.findAllByJobStartDateIsNotNull(params), jobInstanceTotal: Job.findAllByJobStartDateIsNotNull().size()])
	}
	
	def copy = {
		def jobInstance = Job.get(params.id)
		def mileStoneList = magnetboard.Process.findAllByMileStone(true)
		render(view: "create", model: [jobInstance: jobInstance, mileStoneList: mileStoneList])
	}

    def save = {
		
		def duplicate = 0
        def jobInstance = new Job(params)
		
		// check for duplicate work orders
		def jobInstanceList = Job.list()
		
		jobInstanceList.each{
			if (it.workorder == jobInstance.workorder){
				flash.message =  "WORK ORDER ALREADY EXISTS"
				redirect(uri:'/')
				duplicate = 1
			}
		}
		if (duplicate == 0){
		def today = new Date()
		jobInstance.jobStartDate = today
		
		// create correct Original Milestones string
		def origMile = jobInstance.originalMilestones.tokenize(',')
		def placeHolder = origMile.pop()
		while (placeHolder == "CAM"  && origMile.size() > 0){
			placeHolder = origMile.pop()
		}
		origMile.push(placeHolder)
		jobInstance.originalMilestones = origMile.join(",")
		
		//Push onto process Milestones
		def procMile = []
		while (origMile.size() > 1){	
			procMile.push(origMile.pop())	
		}
		procMile.push(origMile.pop())
		jobInstance.processMilestones = procMile.join(",")
		
		// create on time delivery ratio
		Date shipDate = today
		if (jobInstance.duedate && !jobInstance.shipDate)
		{jobInstance.shipDate = jobInstance.duedate}
		if (jobInstance.shipDate)
		{shipDate = Date.parse("MM/dd/yyyy", jobInstance.shipDate)
		jobInstance.dateShipDate = shipDate
		}
		origMile = jobInstance.originalMilestones.tokenize(',')
		def businessDays = shipDate - today + 1

		(today..shipDate).each {
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
		jobInstance.onTimeDeliveryRatio = businessDays / origMile.size()
		
        if (jobInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'job.label', default: 'Job'), jobInstance.id])}"
            redirect(action: "show", id: jobInstance.id)
        }
        else {
            render(view: "create", model: [jobInstance: jobInstance])
        }
    }
    }
    def show = {
        def jobInstance = Job.get(params.id)
		def process1 = jobInstance.process?.canister
		if (process1 ==~ 'finished')
		{
		//def today = new Date()
		//def job1 = new Finishedjobs(jobname:jobInstance.jobname,companyname:jobInstance.companyname,datefinished: today,shoporder:jobInstance.shoporder,nooflayers:jobInstance.nooflayers,noboardsperpanel:jobInstance.noboardsperpanel,size:jobInstance.size,projectmanager:jobInstance.projectmanager,salescontact:jobInstance.salescontact,notes:jobInstance.notes,workorder:jobInstance.workorder,noofpanelsmade:jobInstance.noofpanelsmade,noofboardsordered:jobInstance.noofboardsordered,totalvalue:jobInstance.totalvalue,valueperboard:jobInstance.valueperboard)
		//saveOrThrow(job1)
		//jobInstance.delete(flush: true)
			def p1 = Process.get(57)
			jobInstance.process = p1
		}
        if (!jobInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
            redirect(action: "list")
        }
        else {
            [jobInstance: jobInstance]
        }
    }
	
	def showMilestones = {
		if(params.workOrder){
		if(magnetboard.Job.findByWorkorder(params.workOrder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workOrder)
			def jobInstance = Job.get(jobNumber.id)
			
			//Convert processMilestones to an array and send to the show page in reverse order (first to last)
			def dummyArray = jobInstance.processMilestones.tokenize(',')
			def processArray = []
			while (dummyArray.size() > 1){
				processArray.push(dummyArray.pop())
			}
			processArray.push(dummyArray.pop())
			[jobInstance: jobInstance, processArray: processArray]
			}	
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(uri:'/')
		}}
		
	}
	
	def addMilestones = {
		if(params.workOrder){
		if(magnetboard.Job.findByWorkorder(params.workOrder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workOrder)
			def jobInstance = Job.get(jobNumber.id)
			def mileStoneList = magnetboard.Process.findAllByMileStone(true)
			[jobInstance: jobInstance, mileStoneList: mileStoneList]
			}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(uri:'/')
		}

		}
	}
	
	
	def editMilestones = {
		def jobInstance = Job.get(params.id)
		if (!jobInstance) {
			flash.message = "${message(code: 'default.notjobInstance.process.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [jobInstance: jobInstance]
		}
	}
    
	def saveOrThrow(def o) {
		if (!o.save()) {
			println "COULD NOT SAVE: ${o}"
			o.errors.allErrors.each { println it }

			throw new RuntimeException('Failed')
		}
	}

    def edit = {
        def jobInstance = Job.get(params.id)
		if (!jobInstance) {
            flash.message = "${message(code: 'default.notjobInstance.process.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
            redirect(action: "list")
        }
        else {
			return [jobInstance: jobInstance]
        }
		
    }
	
	def print = {
		def jobInstance = Job.get(params.id)
		render(view: "printmagnet", model: [jobInstance: jobInstance])
	}
	
	def editTime = {
		def jobInstance = Job.get(params.id)
		if (!jobInstance) {
			flash.message = "${message(code: 'default.notjobInstance.process.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [jobInstance: jobInstance]
		}
	}
	
	def pepData = {
		def jobInstance = Job.findAllByPepMeanIsNotNull()
		def summ = jobInstance.sum{it.numberPepMean}
		def amount = jobInstance.size()
		def average = summ/amount
		jobInstance.sort{it.pepDate}
		def pep = []
		jobInstance.each {
		pep << [it.pepDate, it.pepMean, average]
		}
		[jobInstance: jobInstance,pep: pep]
	}

	def pluritecData = {
		def jobInstance = Job.findAllByPluritecXcompIsNotNull()
		def summX = jobInstance.sum{it.numberPluritecXcomp}
		def summY = jobInstance.sum{it.numberPluritecYcomp}
		def amount = jobInstance.size()
		def averageX = summX/amount
		def averageY = summY/amount
		jobInstance.sort{it.pluritecDate}
		def plur = []
		jobInstance.each {
			plur << [it.pluritecDate, it.pluritecXcomp, it.pluritecYcomp, averageX, averageY]
		}
		[jobInstance: jobInstance,plur: plur]
		
	}
	
	def bake = {
		if(magnetboard.Job.findByWorkorder(params.workOrder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workOrder)
			def jobInstance = Job.get(jobNumber.id)
			Date soldermaskBake
			def today = new Date() 
			use( TimeCategory ) {
				soldermaskBake = today + 90.minutes
			}
			jobInstance.bakeTime = soldermaskBake
			redirect(controller: "process", action: "list")
			
	}
		 
		else {
		flash.message =  "NO WORK ORDER FOUND"
		redirect(controller: "process", action: "list")
	}
		
		}
   
	def stopBake = {
		if(magnetboard.Job.findByWorkorder(params.workOrder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workOrder)
			def jobInstance = Job.get(jobNumber.id)
			jobInstance.bakeTime = null
		redirect(controller: "process", action: "list")
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "process", action: "list")
		}
	}
	
	def bakeList = {
		def jobParams = []
		def bakeList = magnetboard.Job.findAllByBakeTimeIsNotNull()
		bakeList.each{
		jobParams << [it.workorder, it.companyname, it.jobname, it.bakeTime]
		}
		[jobParams: jobParams]
	}

//PROCESS TIME - AOI Times		
	def processTime = {
		params.max = Math.min(params.max ? params.int('max') : 15, 100)

		if (params.workOrder == null ){
			[jobInstanceList: Job.findAllByAoiBeRunTimeIsNotNull(params), jobInstanceTotal: Job.findAllByAoiBeRunTimeIsNotNull().size()]
		}	
		
		else {
		if(magnetboard.Job.findByWorkorder(params.workOrder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workOrder)
			def jobInstance = Job.get(jobNumber.id) 
			
		if (params.processName == "AOI Inner Before Etch"){
				if (params.start){
					def beginTime = System.currentTimeMillis()
				jobInstance.aoiBeStartTime = beginTime
				}
				if (params.stop){
					if (jobInstance.aoiBeStartTime){
					def endTime = System.currentTimeMillis()
					jobInstance.aoiBeStopTime = endTime
					if (!jobInstance.aoiBeRunTime){jobInstance.aoiBeRunTime = 0}
					jobInstance.aoiBeRunTime = (jobInstance.aoiBeRunTime + (jobInstance.aoiBeStopTime - jobInstance.aoiBeStartTime).toLong())/60000
					}
					else {
						flash.message = "No start time added"
						redirect(uri:'/')
					}	
				}	
			}	
			
			if (params.processName == "Touch Up Inners"){
				if (params.start){
					def beginTime = System.currentTimeMillis()
				jobInstance.touchUpStartTime = beginTime
				}
				if (params.stop){
					def endTime = System.currentTimeMillis()
					jobInstance.touchUpStopTime = endTime
					if (!jobInstance.touchUpRunTime){jobInstance.touchUpRunTime = 0}
					jobInstance.touchUpRunTime = (jobInstance.touchUpRunTime + (jobInstance.touchUpStopTime - jobInstance.touchUpStartTime).toLong())/60000
				}		
			}
			
			if (params.processName == "AOI Inner After Etch"){
				if (params.start){
					def beginTime = System.currentTimeMillis()
				jobInstance.aoiAeStartTime = beginTime
				}
				if (params.stop){
					def endTime = System.currentTimeMillis()
					jobInstance.aoiAeStopTime = endTime
					if (!jobInstance.aoiAeRunTime){jobInstance.aoiAeRunTime = 0}
					jobInstance.aoiAeRunTime = (jobInstance.aoiAeRunTime + (jobInstance.aoiAeStopTime - jobInstance.aoiAeStartTime).toLong())/60000
				}
			}
			
			if (params.processName == "Repair Inners"){
				if (params.start){
					def beginTime = System.currentTimeMillis()
				jobInstance.repairStartTime = beginTime
				}
				if (params.stop){
					def endTime = System.currentTimeMillis()
					jobInstance.repairStopTime = endTime
					if (!jobInstance.repairRunTime){jobInstance.repairRunTime = 0}
					jobInstance.repairRunTime = (jobInstance.repairRunTime + (jobInstance.repairStopTime - jobInstance.repairStartTime).toLong())/60000
				}
			}
			
			if (params.processName == "AOI outer before pattern"){
				if (params.start){
					def beginTime = System.currentTimeMillis()
				jobInstance.aoiBpStartTime = beginTime
				}
				if (params.stop){
					def endTime = System.currentTimeMillis()
					jobInstance.aoiBpStopTime = endTime
					if (!jobInstance.aoiBpRunTime){jobInstance.aoiBpRunTime = 0}
					jobInstance.aoiBpRunTime = (jobInstance.aoiBpRunTime + (jobInstance.aoiBpStopTime - jobInstance.aoiBpStartTime).toLong())/60000
				}
			}
			
			if (params.processName == "AOI outer final"){
				if (params.start){
					def beginTime = System.currentTimeMillis()
				jobInstance.aoiFinalStartTime = beginTime
				}
				if (params.stop){
					def endTime = System.currentTimeMillis()
					jobInstance.aoiFinalStopTime = endTime
					if (!jobInstance.aoiFinalRunTime){jobInstance.aoiFinalRunTime = 0}
					jobInstance.aoiFinalRunTime = (jobInstance.aoiFinalRunTime + (jobInstance.aoiFinalStopTime - jobInstance.aoiFinalStartTime).toLong())/60000
				}
			}
			
			if (params.processName == "Repair outers"){
				if (params.start){
					def beginTime = System.currentTimeMillis()
				jobInstance.repairOuterStartTime = beginTime
				}
				if (params.stop){
					def endTime = System.currentTimeMillis()
					jobInstance.repairOuterStopTime = endTime
					if (!jobInstance.repairOuterRunTime){jobInstance.repairOuterRunTime = 0}
					jobInstance.repairOuterRunTime = (jobInstance.repairOuterRunTime + (jobInstance.repairOuterStopTime - jobInstance.repairOuterStartTime).toLong())/60000
				}
			}
			 if (params.edit){
				 flash.message =  "ALL TIME IS IN MINUTES"
				 render(view: "editTime", model: [jobInstance: jobInstance])
			 }			
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}	
		[jobInstanceList: Job.findAllByAoiBeRunTimeIsNotNull(params), jobInstanceTotal: Job.findAllByAoiBeRunTimeIsNotNull().size()]
		}
    }
	
	def reCreate = {
		def mileStoneList = magnetboard.Process.findAllByMileStone(true)
		if(magnetboard.Job.findByJobname(params.partnumber)){
		def jobnumber = magnetboard.Job.findByJobname(params.partnumber)
		def finishedjobsInstance = Job.get(jobnumber.id)
		def jobInstance = new Job(Jobname: params.partnumber, Companyname: finishedjobsInstance.companyname,Noboardsperpanel: finishedjobsInstance.noboardsperpanel,Nooflayers: finishedjobsInstance.nooflayers,Notes: finishedjobsInstance.notes,Projectmanager: finishedjobsInstance.projectmanager,Salescontact: finishedjobsInstance.salescontact,Size: finishedjobsInstance.size)
		render(view: "create", model: [jobInstance: jobInstance, mileStoneList: mileStoneList])
		}
		else {
		def jobInstance = new Job(Jobname: params.partnumber)
		render(view: "create", model: [jobInstance: jobInstance, mileStoneList: mileStoneList])
		}
	}	

	def PEP = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
		def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.pepMean = params.mean	
			jobInstance.pepOperator = params.operator
			jobInstance.pepDate = today
			redirect(controller: "machine", action: "addJobDataList")		
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}	
	}
	
	def ldi = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
		def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			
			
			if (jobInstance.layer){
			def layerPlus = jobInstance.layer
			jobInstance.layer = layerPlus + "+"  + params.layer
			}
			else {jobInstance.layer = params.layer}
			
			if (jobInstance.meanRegistration){
				def meanPlus = jobInstance.meanRegistration
				jobInstance.meanRegistration = meanPlus + "+" + params.mean
				}
				else {jobInstance.meanRegistration = params.mean}
			
			if (jobInstance.sdRegistration){
				def sdPlus = jobInstance.sdRegistration
				jobInstance.sdRegistration = sdPlus + "+" + params.standardDeviation
				}
				else {jobInstance.sdRegistration = params.standardDeviation}
			
			jobInstance.outerPrintDate = today
			
			redirect(controller: "machine", action: "addJobDataList")
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
		}
	
	def aspectRatio = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def thickness = params.thickness.toFloat()
			def minHole = params.minHole.toFloat()
			if (jobInstance.minHole == null) { jobInstance.minHole = 0}
			def aspectRatio = thickness / minHole
			if (minHole < jobInstance.minHole.toFloat() && minHole > 0){
			jobInstance.minHole = params.minHole}
			def platingString = "Use DC Plating Line"
			if (aspectRatio > 7){ platingString = "Use Reverse Pulse Line"}
			flash.message = "Aspect Ratio is: " + aspectRatio +  "<br/  >" + platingString
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def aoiBeforeEtch = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
				def jobInstance = Job.get(jobNumber.id)
				def today = new Date()
				jobInstance.noOfSignalLayers = params.noOfSignalLayers
				jobInstance.aoiBeMachineLightSource = params.machineLightSource
				jobInstance.aoiBeOperator = params.operator
				jobInstance.aoiBeDate = today
				jobInstance.minLine = params.minLine
				jobInstance.minSpace = params.minSpace
				jobInstance.aoiBeNoOfOpens = params.noOfOpens
				jobInstance.aoiBeNoOfShorts = params.noOfShorts
				redirect(controller: "machine", action: "addJobDataList")
		}	
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def aoiAfterEtch = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
				def jobInstance = Job.get(jobNumber.id)
				def today = new Date()
				jobInstance.aoiAeMachineLightSource = params.machineLightSource
				jobInstance.aoiAeOperator = params.operator
				jobInstance.aoiAeDate = today
				jobInstance.aoiAeNoOfPanelsScrap = params.noOfPanelsScrap
				jobInstance.aoiAeNoOfOpens = params.noOfOpens
				jobInstance.aoiAeNoOfShorts = params.noOfShorts
				redirect(controller: "machine", action: "addJobDataList")
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def pluritec = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
		def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.pluritecXcomp = params.Xcomp
			jobInstance.pluritecYcomp = params.Ycomp
			jobInstance.pluritecOperator = params.operator
			jobInstance.pluritecDate = today
			redirect(controller: "machine", action: "addJobDataList")
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def dcplating = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
		def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.dcCell = params.cells
			jobInstance.dcDate = today
			jobInstance.dcAt = params.areaTop
			jobInstance.dcAb = params.areaBottom
			jobInstance.dcSpec = params.spec
			jobInstance.dcOperator = params.operator
			jobInstance.dcMinCuDeposit = params.minCuDeposit
			jobInstance.dcMaxCuDeposit = params.maxCuDeposit
			jobInstance.dcAsf = params.asf
			jobInstance.dcTct = params.totalCopperTime
			jobInstance.dcRack = params.dcRack
			jobInstance.dcNotes = params.dcNotes
		    redirect(controller: "machine", action: "addJobDataList")
		}
		else {
			flash.message = "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def dcplatingSearch = {
		if(magnetboard.Job.findByJobname(params.jobName)){
		def searchJob = magnetboard.Job.findAllWhere(["jobname": params.jobName])
		def jobSearch = []
		// Search for DC Plating and Outer Layer Etch
		if (params.equipment == 'DC Plating/ Outer Layer Etch') {
		searchJob.sort{it.dcDate}
		searchJob.each {
		jobSearch << [it.workorder, it.dcDate, it.dcAsf, it.dcRack, it.dcTct, it.dcCell, it.dcMinCuDeposit, it.dcMaxCuDeposit, it.dcSpec, it.dcNotes, it.olEtchLineSpeed, it.olEtchCuThickness, it.olEtchSplash]
		}}
		if (params.equipment == 'HASL') {
			searchJob.sort{it.halDate}
			searchJob.each {
				jobSearch << [it.workorder, it.halDate, it.halOperator, it.halBakeTime, it.halTimeSinceLastBaked, it.halAirKnifeGap, it.halDoubleFlux, it.halDwellTime, it.halDoubleDip, it.halAirKnifePressureFront, it.halAirKnifePressureRear, it.halWithdrawalTurns, it.halGoldFingers, it.halColdPress, it.halNotes]
			}
			render(view: "HASL", model: [jobSearch: jobSearch])}
		[searchJob: searchJob, jobSearch: jobSearch]
		}
		else {flash.message = "No Job Found"
			  redirect(controller: "machine", action: "addJobDataList")
			}
	}
	
	def camRegistrationNumbers = {
		if(magnetboard.Job.findByJobname(params.jobName)){
			def searchJob = magnetboard.Job.findAllWhere(["jobname": params.jobName])
			def jobSearch = []
			def layerArray = []
			def meanRegArray = []
			def sdRegArray = []
			
			// Search for LDI jobs
			searchJob.sort{it.outerPrintDate}
			searchJob.each {
				if (it.layer){layerArray = it.layer.tokenize('+')
				meanRegArray = it.meanRegistration.tokenize('+')
				sdRegArray = it.sdRegistration.tokenize('+')}
				def i = layerArray.size()
	
				while (i > 0){
					jobSearch << [it.workorder, it.outerPrintDate, layerArray[i-1], meanRegArray[i-1], sdRegArray[i-1]]
					i = i-1
				}
				}
			[searchJob: searchJob, jobSearch: jobSearch]
				}
			else {flash.message = "No Job Found"
				  redirect(controller: "machine", action: "addJobDataList")
				}
		
    }
	
	//HAL
	def hal = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
		def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.halDate = today
			jobInstance.halOperator = params.operator
			jobInstance.halBakeTime = params.bakeTime
			jobInstance.halTimeSinceLastBaked = params.timeSinceLastBaked
			jobInstance.halAirKnifeGap = params.airKnifeGap
			jobInstance.halDoubleFlux = params.doubleFlux
			jobInstance.halDwellTime = params.dwellTime
			jobInstance.halDoubleDip = params.doubleDip
			jobInstance.halAirKnifePressureFront = params.airKnifePressureFront
			jobInstance.halAirKnifePressureRear = params.airKnifePressureRear
			jobInstance.halWithdrawalTurns = params.withdrawalTurns
			jobInstance.halGoldFingers = params.goldFingers
			jobInstance.halColdPress = params.coldPress
			jobInstance.halNotes = params.notes

			redirect(controller: "machine", action: "addJobDataList")
		}
		else {
			flash.message = "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	//End HAL
	
	def searchWorkOrder = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			render(view: "show", model: [jobInstance: jobInstance])
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "job", action: "list")
		}
	}
	
	def machineVariableReset = {
		if(magnetboard.Machine.findByName(params.machine)) {
			def machineInstance = magnetboard.Machine.findByName(params.machine)
			if (machineInstance.name == "PPG Developer"){
				machineInstance.totalSquareFeet = 0
				flash.message = "PPG Developer square footage has been reset to zero"
				redirect(controller: "job", action: "engineering")
			}
			if (machineInstance.name == "PPG Stripper"){
				machineInstance.totalSquareFeet = 0
				flash.message = "PPG Stripper square footage has been reset to zero"
				redirect(controller: "job", action: "engineering")
			}
		}
		else {
			flash.message =  "NO MACHINE FOUND"
			redirect(controller: "job", action: "engineering")
		}
	}
	
	def olEtch = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){			
			def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			def twBeforeFloat = params.twBefore.toFloat()
			def lineSpeedFloat = params.lineSpeed.toFloat()
			def cuThicknessFloat = params.cuThickness.toFloat()
			jobInstance.olEtchTwBefore = twBeforeFloat	
			jobInstance.olEtchLineSpeed = lineSpeedFloat
			jobInstance.olEtchCuThickness = cuThicknessFloat
			jobInstance.olEtchSplash = params.splash
			jobInstance.olEtchOperator = params.operator
			jobInstance.olEtchDate = today
			redirect(controller: "machine", action: "addJobDataList")		
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}	 
	}
	
	def tinStrip = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){			
			def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			def twAfterFloat = params.twAfter.toFloat()
			jobInstance.olEtchTwAfter = twAfterFloat
			jobInstance.tinStripOperator = params.operator
			jobInstance.tinStripDate = today
		redirect(controller: "machine", action: "addJobDataList")		
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}	 
	}
	
	def ppgDeveloper = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.ppgRunSpeed = params.runSpeed
			jobInstance.ppgStepTab = params.stepTab
			jobInstance.ppgNoOfPanels = params.ppgNoOfPanels
			jobInstance.ppgOperator = params.operator
			jobInstance.ppgDate = today
			Float squareFeet = 3
			if (jobInstance.size == '18X16'){squareFeet = 4}
			if (jobInstance.size == '24 x 18' || jobInstance.size == '24 X 18' || jobInstance.size == '24X18'){squareFeet = 6}
			def jobSquareFeet = params.ppgNoOfPanels.toInteger() * squareFeet
			def machineInstance = magnetboard.Machine.findByName("PPG Developer")
			machineInstance.totalSquareFeet = machineInstance.totalSquareFeet + jobSquareFeet
			if (machineInstance.totalSquareFeet > 450) {
				
					flash.message = "Total Square Footage is " + machineInstance.totalSquareFeet + " square feet.  Notify Process Engineer" 
				
				}
			
		redirect(controller: "machine", action: "addJobDataList")
		} 
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def ppgStripper = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
			def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.ppgStripperNoOfPanels = params.noOfPanels
			jobInstance.ppgStripperOperator = params.operator
			jobInstance.ppgStripperDate = today
			Float squareFeet = 3
			if (jobInstance.size == '18X16'){squareFeet = 4}
			if (jobInstance.size == '24 x 18' || jobInstance.size == '24 X 18' || jobInstance.size == '24X18'){squareFeet = 6}
			def jobSquareFeet = params.noOfPanels.toInteger() * squareFeet
			def machineInstance = magnetboard.Machine.findByName("PPG Stripper")
			machineInstance.totalSquareFeet = machineInstance.totalSquareFeet + jobSquareFeet
			if (machineInstance.totalSquareFeet > 950) {
				
					flash.message = "Total Square Footage is " + machineInstance.totalSquareFeet + " square feet.  Notify Process Engineer"
				
				}
			
		redirect(controller: "machine", action: "addJobDataList")
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def updateMilestones = {
		def jobInstance = Job.get(params.id)
		
		if (jobInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (jobInstance.version > version) {
					jobInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'job.label', default: 'Job')] as Object[], "Another user has updated this Job while you were editing")
					render(view: "edit", model: [jobInstance: jobInstance])
					return
				}
			}
			jobInstance.properties = params
			
			
		def today = new Date()
		jobInstance.jobStartDate = today
		// create correct Original Milestones string
		def origMile = jobInstance.originalMilestones.tokenize(',')
		def placeHolder = origMile.pop()
		while (placeHolder == "CAM"  && origMile.size() > 0){
			placeHolder = origMile.pop()
		}
		origMile.push(placeHolder)
		jobInstance.originalMilestones = origMile.join(",")
		
		//Push onto process Milestones
		def procMile = []
		while (origMile.size() > 1){
			procMile.push(origMile.pop())
		}
		procMile.push(origMile.pop())
		jobInstance.processMilestones = procMile.join(",")
		
		// create on time delivery ratio
		Date shipDate = today
		if (jobInstance.shipDate)
		
		{
			shipDate = Date.parse("MM/dd/yyyy", jobInstance.shipDate)
			jobInstance.dateShipDate = shipDate
		}
		origMile = jobInstance.originalMilestones.tokenize(',')
		def businessDays = shipDate - today + 1

		(today..shipDate).each {
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
		jobInstance.onTimeDeliveryRatio = businessDays / origMile.size()
		
		
		
			if (!jobInstance.hasErrors() && jobInstance.save(flush: true)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'job.label', default: 'Job'), jobInstance.id])}"
				redirect(action: "show", id: jobInstance.id)
			}
			else {
				render(view: "edit", model: [jobInstance: jobInstance])
				
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
			redirect(action: "list")
		}
		
	}
	

    def update = {
        def jobInstance = Job.get(params.id)
		def process1 = jobInstance.process?.canister
		if (jobInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (jobInstance.version > version) {
                    
                    jobInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'job.label', default: 'Job')] as Object[], "Another user has updated this Job while you were editing")
                    render(view: "edit", model: [jobInstance: jobInstance])
                    return
                }
            }
            jobInstance.properties = params
			def process2 = jobInstance.process?.canister
			if (process1 && (process1 != process2))
			{
				def today = new Date()
				def job2 = new Throughput(process: process1,datefinished: today,jobname: jobInstance.jobname,companyname: jobInstance.companyname,totalvalue: jobInstance.totalvalue,workorder: jobInstance.workorder)
				saveOrThrow(job2)
			}
            if (!jobInstance.hasErrors() && jobInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'job.label', default: 'Job'), jobInstance.id])}"
                redirect(action: "show", id: jobInstance.id)
            }
            else {
                render(view: "edit", model: [jobInstance: jobInstance])
				
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
            redirect(action: "list")
        }
		
	}
	
	
	def delete = {
        def jobInstance = Job.get(params.id)
        if (jobInstance) {
            try {
                jobInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
            redirect(action: "list")
        }
    }
}
