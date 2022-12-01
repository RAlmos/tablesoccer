import QtQuick 2.0
import Felgo 3.0

EntityBase {
    //make entity the same size as its representation
    //the image should be a circular image with squared dimensions (same width and height)
    width: circleImage.width
    height: circleImage.height

    entityId: "circle"
    entityType: "circle"

    Image {
        id: circleImage
        source: "../../assets/ball.png"
        width: 25
        height: width
    }

    CircleCollider {
        id: circleCollider

        // the CircleCollider will not be affected by gravity or other applied physics forces
        collisionTestingOnlyMode: true

        // approximate the collider with the image size - if the image is circular, this is a good approximation
        radius: circleImage.width/2

    }

}
