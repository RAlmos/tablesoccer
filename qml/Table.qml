import QtQuick 2.0
import Felgo 3.0

import "Entities"

// COURT for Tablesoccer

Item {
    id: table
    width: parent.width
    height: parent.width/1.9
    anchors.verticalCenter: parent.verticalCenter

    Rectangle {
        width: parent.width
        height: parent.height
        color: 'green'

    }

    Ball {
        id: ball
    }
    Wall {
        id: border_bottom

        height: 2
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
    }

    Wall {
        id: border_top

        height: 2
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }
    }

    Wall {
        id: border_left
        width: 2
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
    }

    Wall {
        id: border_right
        width: 2
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
        }
    }
}
