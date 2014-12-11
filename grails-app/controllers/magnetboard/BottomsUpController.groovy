package magnetboard

class BottomsUpController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [bottomsUpInstanceList: BottomsUp.list(params), bottomsUpInstanceTotal: BottomsUp.count()]
    }

    def create = {
        def bottomsUpInstance = new BottomsUp()
        bottomsUpInstance.properties = params
        return [bottomsUpInstance: bottomsUpInstance]
    }

    def save = {
        def bottomsUpInstance = new BottomsUp(params)
        if (bottomsUpInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), bottomsUpInstance.id])}"
            redirect(action: "quote", id: bottomsUpInstance.id)
        }
        else {
            render(view: "create", model: [bottomsUpInstance: bottomsUpInstance])
        }
    }

	 
	def oldSave = {
		def bottomsUpInstance = new BottomsUp(params)
		if (bottomsUpInstance.save(flush: true)) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), bottomsUpInstance.id])}"
			redirect(action: "show", id: bottomsUpInstance.id)
		}
		else {
			render(view: "create", model: [bottomsUpInstance: bottomsUpInstance])
		}
	}
	
	def quote = {
		Integer chemClean, totalNoOfCores, shear, innerLayerLamination, innerLayerFilms, innerLayerImage, NRE, postEtchPunch, laserSlots, 
		innerLayerAoiAfterEtch, innerLayerRework, diRinse, plasmaPressPrep, bondFilm, laserCoverlay, tackCoverlay, layup, press, breakdown, 
		innerLayerDevelop, innerLayerAoiBeforeEtch, innerLayerRepair,innerLayerEtchAndStrip,flashRoute, registration, drill2000, drillUniline, 
		drillC129, drillLaser, acidClean, deburrScrub, plasmaDesmear, chemicalDesmear, glassEtchOnly, pth, dcFlashPlate, pprFlashPlate, dcWrapPlate, 
		pprWrapPlate, inProcessCrossSection, outerLayerChemClean, outerLayerLamination
		
		//PPG
		Integer innerLayerPpgCoat, innerLayerPpgDevelop, innerLayerPpgStrip
		//Do we need Integer outerLayerPpgCoat, outerLayerPpgDevelop, outerLayerPpgStrip
		
		def bottomsUpInstance = BottomsUp.get(params.id)
		
		totalNoOfCores = bottomsUpInstance.noOfPanels * bottomsUpInstance.noOfCores
		
		if (bottomsUpInstance.newJob) {
			NRE = 85*(bottomsUpInstance.noOfLayers + bottomsUpInstance.noOfDrillPrograms + bottomsUpInstance.noOfRoutePrograms)
		}
		else {NRE = 0}
		
		shear = totalNoOfCores/2
		if (bottomsUpInstance.panelSize == '18 X 12') {
			shear = totalNoOfCores
		}
		if (bottomsUpInstance.maxCoreCuWeight == '0.5/1' || bottomsUpInstance.maxCoreCuWeight == '1/2' || bottomsUpInstance.maxCoreCuWeight == '2/3'){
			shear = shear + totalNoOfCores/3
		}
		
		chemClean = 5 + totalNoOfCores/3 
		if (bottomsUpInstance.minCoreThickness < 5) {
			chemClean = 5 + (totalNoOfCores * 2)/3  
		}
		
		innerLayerLamination = 5 + totalNoOfCores/2
		if (bottomsUpInstance.panelSize == '18 X 12') {
			innerLayerLamination = innerLayerLamination - totalNoOfCores/4
		}
		
		innerLayerFilms = bottomsUpInstance.noOfCores * 10
		
		innerLayerImage = totalNoOfCores * 0.6 + 5
		
		postEtchPunch = totalNoOfCores * 1/3
		
		//Laser slots if board is flex or core thickness < .003"/3 mils)
		if(bottomsUpInstance.typeOfBoard == 'Double-sided Flex' || bottomsUpInstance.typeOfBoard == 'Multi-layer Flex' || bottomsUpInstance.typeOfBoard == 'Rigid Flex' || bottomsUpInstance.typeOfBoard == 'Flex with stiffener' || bottomsUpInstance.minCoreThickness < 3){
			laserSlots = 2 * totalNoOfCores}
		else{laserSlots = 0}
		
		//NOT DEFINED
		innerLayerPpgCoat = 0
		innerLayerPpgDevelop = 0
		innerLayerPpgStrip = 0
		innerLayerAoiAfterEtch = 0
		innerLayerRework = 0
		diRinse = 0
		plasmaPressPrep = 0
		bondFilm = 0
		laserCoverlay = 0
		tackCoverlay = 0
		layup = 0
		innerLayerDevelop = 0
		innerLayerAoiBeforeEtch = 0
		innerLayerRepair = 0
		innerLayerEtchAndStrip = 0
		flashRoute = 0 
		registration = 0
		drill2000 = 0
		drillUniline = 0
		drillC129 = 0
		drillLaser = 0
		acidClean = 0
		deburrScrub = 0
		plasmaDesmear = 0
		chemicalDesmear = 0
		glassEtchOnly = 0
		pth = 1/3*bottomsUpInstance.noOfPanels
		dcFlashPlate = 0
		pprFlashPlate = 0
		dcWrapPlate = 0
		pprWrapPlate = 0
		inProcessCrossSection = 0
		outerLayerChemClean = 0
		outerLayerLamination = 0
		//Press is 20 minutes per book.  Breakdown is 10 minutes per book.  What is a book?
		press = 0
		breakdown = 0
		//END NOT DEFINED
		return [bottomsUpInstance: bottomsUpInstance,shear: shear,chemClean: chemClean,innerLayerLamination: innerLayerLamination,
			innerLayerFilms: innerLayerFilms,innerLayerImage: innerLayerImage,NRE: NRE, postEtchPunch: postEtchPunch, laserSlots: laserSlots, 
			innerLayerAoiAfterEtch: innerLayerAoiAfterEtch, innerLayerRework: innerLayerRework, diRinse: diRinse, plasmaPressPrep: plasmaPressPrep, 
			bondFilm:bondFilm, laserCoverlay:laserCoverlay, tackCoverlay:tackCoverlay, layup:layup, press:press, breakdown:breakdown, 
			innerLayerPpgCoat:innerLayerPpgCoat, innerLayerPpgDevelop:innerLayerPpgDevelop, innerLayerPpgStrip:innerLayerPpgStrip, 
			innerLayerDevelop:innerLayerDevelop, innerLayerAoiBeforeEtch:innerLayerAoiBeforeEtch, innerLayerRepair:innerLayerRepair, 
			innerLayerEtchAndStrip:innerLayerEtchAndStrip, flashRoute:flashRoute, registration:registration, drill2000:drill2000, 
			drillUniline:drillUniline, drillC129:drillC129, drillLaser:drillLaser, acidClean:acidClean, deburrScrub:deburrScrub, 
			plasmaDesmear:plasmaDesmear, chemicalDesmear:chemicalDesmear, glassEtchOnly:glassEtchOnly, pth:pth, dcFlashPlate:dcFlashPlate, 
			pprFlashPlate:pprFlashPlate, dcWrapPlate:dcWrapPlate, pprWrapPlate:pprWrapPlate, inProcessCrossSection:inProcessCrossSection, 
			outerLayerChemClean:outerLayerChemClean, outerLayerLamination:outerLayerLamination]
	}
	
	
    def show = {
        def bottomsUpInstance = BottomsUp.get(params.id)
        if (!bottomsUpInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), params.id])}"
            redirect(action: "list")
        }
        else {
            [bottomsUpInstance: bottomsUpInstance]
        }
    }

    def edit = {
        def bottomsUpInstance = BottomsUp.get(params.id)
        if (!bottomsUpInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [bottomsUpInstance: bottomsUpInstance]
        }
    }

    def update = {
        def bottomsUpInstance = BottomsUp.get(params.id)
        if (bottomsUpInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (bottomsUpInstance.version > version) {
                    
                    bottomsUpInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'bottomsUp.label', default: 'BottomsUp')] as Object[], "Another user has updated this BottomsUp while you were editing")
                    render(view: "edit", model: [bottomsUpInstance: bottomsUpInstance])
                    return
                }
            }
            bottomsUpInstance.properties = params
            if (!bottomsUpInstance.hasErrors() && bottomsUpInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), bottomsUpInstance.id])}"
                redirect(action: "show", id: bottomsUpInstance.id)
            }
            else {
                render(view: "edit", model: [bottomsUpInstance: bottomsUpInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def bottomsUpInstance = BottomsUp.get(params.id)
        if (bottomsUpInstance) {
            try {
                bottomsUpInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'bottomsUp.label', default: 'BottomsUp'), params.id])}"
            redirect(action: "list")
        }
    }
}
