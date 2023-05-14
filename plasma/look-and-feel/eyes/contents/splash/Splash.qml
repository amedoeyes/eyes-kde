import QtQuick 2.5
import QtQuick.Window 2.2

AnimatedImage {
    id: root
    source : "eyes.gif"
    fillMode: Image.PreserveAspectCrop
    visible: true
    paused: false
    smooth: true

    property int stage

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true;
        }
    }

    OpacityAnimator {
        id: introAnimation
        running: false
        target: content
        from: 0
        to: 1
        duration: 1000
        easing.type: Easing.InOutQuad
    }
}

