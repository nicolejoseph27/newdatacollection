package magnetboard

class ConstantsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [constantsInstanceList: Constants.list(params), constantsInstanceTotal: Constants.count()]
    }

    def create = {
        def constantsInstance = new Constants()
        constantsInstance.properties = params
        return [constantsInstance: constantsInstance]
    }

    def save = {
        def constantsInstance = new Constants(params)
        if (constantsInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'constants.label', default: 'Constants'), constantsInstance.id])}"
            redirect(action: "show", id: constantsInstance.id)
        }
        else {
            render(view: "create", model: [constantsInstance: constantsInstance])
        }
    }

    def show = {
        def constantsInstance = Constants.get(params.id)
        if (!constantsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'constants.label', default: 'Constants'), params.id])}"
            redirect(action: "list")
        }
        else {
            [constantsInstance: constantsInstance]
        }
    }

    def edit = {
        def constantsInstance = Constants.get(params.id)
        if (!constantsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'constants.label', default: 'Constants'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [constantsInstance: constantsInstance]
        }
    }

    def update = {
        def constantsInstance = Constants.get(params.id)
        if (constantsInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (constantsInstance.version > version) {
                    
                    constantsInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'constants.label', default: 'Constants')] as Object[], "Another user has updated this Constants while you were editing")
                    render(view: "edit", model: [constantsInstance: constantsInstance])
                    return
                }
            }
            constantsInstance.properties = params
            if (!constantsInstance.hasErrors() && constantsInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'constants.label', default: 'Constants'), constantsInstance.id])}"
                redirect(action: "show", id: constantsInstance.id)
            }
            else {
                render(view: "edit", model: [constantsInstance: constantsInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'constants.label', default: 'Constants'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def constantsInstance = Constants.get(params.id)
        if (constantsInstance) {
            try {
                constantsInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'constants.label', default: 'Constants'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'constants.label', default: 'Constants'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'constants.label', default: 'Constants'), params.id])}"
            redirect(action: "list")
        }
    }
}
