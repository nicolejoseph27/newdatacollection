package magnetboard

class PrePregPartNumberController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [prePregPartNumberInstanceList: PrePregPartNumber.list(params), prePregPartNumberInstanceTotal: PrePregPartNumber.count()]
    }

    def create = {
        def prePregPartNumberInstance = new PrePregPartNumber()
        prePregPartNumberInstance.properties = params
        return [prePregPartNumberInstance: prePregPartNumberInstance]
    }

    def save = {
        def prePregPartNumberInstance = new PrePregPartNumber(params)
        if (prePregPartNumberInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber'), prePregPartNumberInstance.id])}"
            redirect(action: "show", id: prePregPartNumberInstance.id)
        }
        else {
            render(view: "create", model: [prePregPartNumberInstance: prePregPartNumberInstance])
        }
    }

    def show = {
        def prePregPartNumberInstance = PrePregPartNumber.get(params.id)
        if (!prePregPartNumberInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber'), params.id])}"
            redirect(action: "list")
        }
        else {
            [prePregPartNumberInstance: prePregPartNumberInstance]
        }
    }

    def edit = {
        def prePregPartNumberInstance = PrePregPartNumber.get(params.id)
        if (!prePregPartNumberInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [prePregPartNumberInstance: prePregPartNumberInstance]
        }
    }

    def update = {
        def prePregPartNumberInstance = PrePregPartNumber.get(params.id)
        if (prePregPartNumberInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (prePregPartNumberInstance.version > version) {
                    
                    prePregPartNumberInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber')] as Object[], "Another user has updated this PrePregPartNumber while you were editing")
                    render(view: "edit", model: [prePregPartNumberInstance: prePregPartNumberInstance])
                    return
                }
            }
            prePregPartNumberInstance.properties = params
            if (!prePregPartNumberInstance.hasErrors() && prePregPartNumberInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber'), prePregPartNumberInstance.id])}"
                redirect(action: "show", id: prePregPartNumberInstance.id)
            }
            else {
                render(view: "edit", model: [prePregPartNumberInstance: prePregPartNumberInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def prePregPartNumberInstance = PrePregPartNumber.get(params.id)
        if (prePregPartNumberInstance) {
            try {
                prePregPartNumberInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'prePregPartNumber.label', default: 'PrePregPartNumber'), params.id])}"
            redirect(action: "list")
        }
    }
}
