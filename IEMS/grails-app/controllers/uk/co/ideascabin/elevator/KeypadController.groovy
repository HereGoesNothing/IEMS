package uk.co.ideascabin.elevator

import org.springframework.dao.DataIntegrityViolationException

class KeypadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [keypadInstanceList: Keypad.list(params), keypadInstanceTotal: Keypad.count()]
    }

    def create() {
        [keypadInstance: new Keypad(params)]
    }

    def save() {
        def keypadInstance = new Keypad(params)
        if (!keypadInstance.save(flush: true)) {
            render(view: "create", model: [keypadInstance: keypadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'keypad.label', default: 'Keypad'), keypadInstance.id])
        redirect(action: "show", id: keypadInstance.id)
    }

    def show(Long id) {
        def keypadInstance = Keypad.get(id)
        if (!keypadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'keypad.label', default: 'Keypad'), id])
            redirect(action: "list")
            return
        }

        [keypadInstance: keypadInstance]
    }

    def edit(Long id) {
        def keypadInstance = Keypad.get(id)
        if (!keypadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'keypad.label', default: 'Keypad'), id])
            redirect(action: "list")
            return
        }

        [keypadInstance: keypadInstance]
    }

    def update(Long id, Long version) {
        def keypadInstance = Keypad.get(id)
        if (!keypadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'keypad.label', default: 'Keypad'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (keypadInstance.version > version) {
                keypadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'keypad.label', default: 'Keypad')] as Object[],
                          "Another user has updated this Keypad while you were editing")
                render(view: "edit", model: [keypadInstance: keypadInstance])
                return
            }
        }

        keypadInstance.properties = params

        if (!keypadInstance.save(flush: true)) {
            render(view: "edit", model: [keypadInstance: keypadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'keypad.label', default: 'Keypad'), keypadInstance.id])
        redirect(action: "show", id: keypadInstance.id)
    }

    def delete(Long id) {
        def keypadInstance = Keypad.get(id)
        if (!keypadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'keypad.label', default: 'Keypad'), id])
            redirect(action: "list")
            return
        }

        try {
            keypadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'keypad.label', default: 'Keypad'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'keypad.label', default: 'Keypad'), id])
            redirect(action: "show", id: id)
        }
    }
}
