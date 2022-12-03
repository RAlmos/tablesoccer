import QtQuick 2.0
import Felgo 3.0

EntityBase {
    id: dummy
    entityType: "dummy"

    Rectangle {
        id: rectangle
        width: 10
        height: 20
        color: "red"
    }
    TwoAxisController {
        id: twoAxisController

        // whenever the thumb position changes, update the twoAxisController
        xAxis: joystickP1L.controllerXPosition
        yAxis: joystickP1L.controllerYPosition
    }

    BoxCollider {
        id: boxCollider

        width: 10
        height: 20
        bodyType: Body.Static
    }

}
