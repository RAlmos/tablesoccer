import QtQuick 2.0
import Felgo 3.0

EntityBase {

    entityId: "entity"
    entityType: "dummy"

    Rectangle {
        id: rectangle
        width: 10
        height: 20
        color: "red"
    }

    BoxCollider {
        id: boxCollider

        width: 10
        height: 20
        bodyType: Body.Static
    }

}
