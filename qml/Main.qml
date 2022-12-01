import Felgo 3.0
import QtQuick 2.0

GameWindow {
    id: gameWindow

    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    activeScene: scene

    // the size of the Window can be changed at runtime by pressing Ctrl (or Cmd on Mac) + the number keys 1-8
    // the content of the logical scene size (480x320 for landscape mode by default) gets scaled to the window size based on the scaleMode
    // you can set this size to any resolution you would like your project to start with, most of the times the one of your main target device
    // this resolution is for iPhone 4 & iPhone 4S
    screenWidth: 760
    screenHeight: 320


    EntityManager {
        id: entityManager
        entityContainer: table
    }
    Scene {
        id: scene

        // the "logical size" - the scene content is auto-scaled to match the GameWindow size
        width: 480
        height: 320

        // background rectangle matching the logical scene size (= safe zone available on all devices)
        // see here for more details on content scaling and safe zone: https://felgo.com/doc/felgo-different-screen-sizes/

        Table {
            id: table
        }
        // use a physics world because we need collision detection
        PhysicsWorld {
            id: world
            updatesPerSecondForPhysics: 60
        }

    }

    JoystickControllerHUD {
        id: joystickP1L

        joystickRadius: parent.height/8
        thumbRadius: 0.25*width
        x: 50; y: 50
        thumbSource: "../assets/joystick_thumb.png"
    }

    JoystickControllerHUD {
        id: joystickP2L

        joystickRadius: joystickP1L.joystickRadius
        thumbRadius: joystickP1L.thumbRadius

        x: 50; y: parent.height - height - 50

        thumbSource: "../assets/joystick_thumb.png"
    }

    JoystickControllerHUD {
        id: joystickP1R

        joystickRadius: joystickP1L.joystickRadius
        thumbRadius: joystickP1L.thumbRadius

        x: parent.width - width - 50; y: 50

        thumbSource: "../assets/joystick_thumb.png"
    }

    JoystickControllerHUD {
        id: joystickP2R

        joystickRadius: joystickP1L.joystickRadius
        thumbRadius: joystickP1L.thumbRadius

        x: parent.width - width - 50; y: parent.height - height - 50

        thumbSource: "../assets/joystick_thumb.png"
    }

}
