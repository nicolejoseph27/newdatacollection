package magnetboard

class NonBusinessDayController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [nonBusinessDayInstanceList: NonBusinessDay.list(params), nonBusinessDayInstanceTotal: NonBusinessDay.count()]
    }

    def create = {
        def nonBusinessDayInstance = new NonBusinessDay()
        nonBusinessDayInstance.properties = params
        return [nonBusinessDayInstance: nonBusinessDayInstance]
    }

    def save = {
        def nonBusinessDayInstance = new NonBusinessDay(params)
        if (nonBusinessDayInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay'), nonBusinessDayInstance.id])}"
            redirect(action: "show", id: nonBusinessDayInstance.id)
        }
        else {
            render(view: "create", model: [nonBusinessDayInstance: nonBusinessDayInstance])
        }
    }

    def show = {
        def nonBusinessDayInstance = NonBusinessDay.get(params.id)
        if (!nonBusinessDayInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay'), params.id])}"
            redirect(action: "list")
        }
        else {
            [nonBusinessDayInstance: nonBusinessDayInstance]
        }
    }

    def edit = {
        def nonBusinessDayInstance = NonBusinessDay.get(params.id)
        if (!nonBusinessDayInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [nonBusinessDayInstance: nonBusinessDayInstance]
        }
    }

    def update = {
        def nonBusinessDayInstance = NonBusinessDay.get(params.id)
        if (nonBusinessDayInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (nonBusinessDayInstance.version > version) {
                    
                    nonBusinessDayInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay')] as Object[], "Another user has updated this NonBusinessDay while you were editing")
                    render(view: "edit", model: [nonBusinessDayInstance: nonBusinessDayInstance])
                    return
                }
            }
            nonBusinessDayInstance.properties = params
            if (!nonBusinessDayInstance.hasErrors() && nonBusinessDayInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay'), nonBusinessDayInstance.id])}"
                redirect(action: "show", id: nonBusinessDayInstance.id)
            }
            else {
                render(view: "edit", model: [nonBusinessDayInstance: nonBusinessDayInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def nonBusinessDayInstance = NonBusinessDay.get(params.id)
        if (nonBusinessDayInstance) {
            try {
                nonBusinessDayInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'nonBusinessDay.label', default: 'NonBusinessDay'), params.id])}"
            redirect(action: "list")
        }
    }
}
