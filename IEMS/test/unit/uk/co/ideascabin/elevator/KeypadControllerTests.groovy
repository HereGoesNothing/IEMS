package uk.co.ideascabin.elevator



import org.junit.*
import grails.test.mixin.*

@TestFor(KeypadController)
@Mock(Keypad)
class KeypadControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/keypad/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.keypadInstanceList.size() == 0
        assert model.keypadInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.keypadInstance != null
    }

    void testSave() {
        controller.save()

        assert model.keypadInstance != null
        assert view == '/keypad/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/keypad/show/1'
        assert controller.flash.message != null
        assert Keypad.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/keypad/list'

        populateValidParams(params)
        def keypad = new Keypad(params)

        assert keypad.save() != null

        params.id = keypad.id

        def model = controller.show()

        assert model.keypadInstance == keypad
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/keypad/list'

        populateValidParams(params)
        def keypad = new Keypad(params)

        assert keypad.save() != null

        params.id = keypad.id

        def model = controller.edit()

        assert model.keypadInstance == keypad
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/keypad/list'

        response.reset()

        populateValidParams(params)
        def keypad = new Keypad(params)

        assert keypad.save() != null

        // test invalid parameters in update
        params.id = keypad.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/keypad/edit"
        assert model.keypadInstance != null

        keypad.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/keypad/show/$keypad.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        keypad.clearErrors()

        populateValidParams(params)
        params.id = keypad.id
        params.version = -1
        controller.update()

        assert view == "/keypad/edit"
        assert model.keypadInstance != null
        assert model.keypadInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/keypad/list'

        response.reset()

        populateValidParams(params)
        def keypad = new Keypad(params)

        assert keypad.save() != null
        assert Keypad.count() == 1

        params.id = keypad.id

        controller.delete()

        assert Keypad.count() == 0
        assert Keypad.get(keypad.id) == null
        assert response.redirectedUrl == '/keypad/list'
    }
}
