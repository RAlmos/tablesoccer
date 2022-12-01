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
    Dummy {
        x: 100; y:200

    }

    Wall {
        id: border_bottom
        width: parent.width
        anchors {
            bottom: parent.bottom
        }
    }
    Wall {
        id: border_top
        width: parent.width
        anchors {
            top: parent.top
        }
    }
    Wall {
        id: border_left
        height: parent.height
        anchors {
            left: parent.left
        }
    }
    Wall {
        id: border_right
        height: parent.height
        anchors {
            right: parent.right
        }
    }
    Wall {
        id: goal_left
        height: parent.height/4
        y: 3*parent.height/8
        width: 2
        anchors {
            left: parent.left
        }
        entityType: "goal"
    }
    Wall {
        id: goal_right
        height: parent.height/4
        y: 3*parent.height/8
        width: 2
        anchors {
            right: parent.right
        }
        entityType: "goal"
    }
}
