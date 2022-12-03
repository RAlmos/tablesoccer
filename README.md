# TableSoccer

------------

## Description

It'll be a multiplayer game, friends can play on one phone (or tablet). There are 4 joystick, each belong to 2 line of soccer figures.
Ball starts on top center and move randomly. In case of goal, ball is disapear.

### 20221203: 
_Although it wasn't uber-ambitious project, my schedule was bad, I'm not done. Sorry_
- plan:
  - after goal new ball
  - rectangle joysticks (with own design)
  - make all figure
  - connect figures to joysticks


## How to do

### Joystick

Based on Felgo tutorial about [JoystickControllerHUD](https://felgo.com/doc/felgo-joystickcontrollerhud/ "Best tutorial")
I don't use background image but either way there is it. It's weird but ok.

```javascript
    JoystickControllerHUD {
        id: joystickP1L

        joystickRadius: parent.height/8
        thumbRadius: 0.25*width
        x: 50; y: 50
        thumbSource: "../assets/joystick_thumb.png"

        property variant playerTwoxisController: table.player_red.getComponent("TwoAxisController")
        onControllerXPositionChanged: playerTwoxisController.xAxis = controllerXPosition;
        onControllerYPositionChanged: playerTwoxisController.yAxis = controllerYPosition;
    }
```
...
```javascript
    JoystickControllerHUD {
        id: joystickP2R

        joystickRadius: joystickP1L.joystickRadius
        thumbRadius: joystickP1L.thumbRadius

        x: parent.width - width - 50; y: parent.height - height - 50

        thumbSource: "../assets/joystick_thumb.png"
    }
```
In ID P1/P2 means player 1/2 and L/R means left/right.
Anchors didn't work with offset, so it needed little calculation.

### Table

It is a simple Rectangle.
What is on it, that's more interesting.
**It could be an Image, that'd look better.**

### Ball

It is an Entity, because of the disapear & respawn. One Image block makes it visible, and a CircleCollider makes it moveable.
Physical datas are in properties.

### Walls

That's a BoxCollider. While debugging colored Rectangle can help with visualization.
Behind keepers there are thicker wall, if ball collides with that it is goal. (It would be fancier with more walls, and deeper space behind goal line.)
They are static.
```javascript
EntityBase {
    ...
    BoxCollider {
        bodyType: Body.Static
        // the size of the collider is the same as the one from entity by default
    }
    ...
}
```

### Figures

In the files it is named Dummy. Like walls, they're statics too.