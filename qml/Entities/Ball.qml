import QtQuick 2.0
import Felgo 3.0

EntityBase {
    //make entity the same size as its representation
    //the image should be a circular image with squared dimensions (same width and height)
    width: circleImage.width
    height: circleImage.height

    id: ball
    entityType: "circle"

    x: 100
    Component.onCompleted: {
        var mapped = mapToItem(world.debugDraw, x, y)
    }

    Image {
        id: circleImage
        source: "../../assets/ball.png"
        width: 25
        height: width
    }



    CircleCollider {
        id: circleCollider


        density: 10
        friction: 0
        restitution: 0.98

        // the CircleCollider will not be affected by gravity or other applied physics forces
        collisionTestingOnlyMode: false

        // approximate the collider with the image size - if the image is circular, this is a good approximation
        radius: circleImage.width/2
        linearVelocity: Qt.point(Math.random()*120-60, 450)

        fixture.onBeginContact: {
            var fixture = other;
            var body = other.getBody();
            var otherEntity = body.target

            // get the entityType of the colliding entity
            var collidingType = otherEntity.entityType
            if(collidingType === "goal") {
                ball.removeEntity()
                return
            }

        }
    }

}
