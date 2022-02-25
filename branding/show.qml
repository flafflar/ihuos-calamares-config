import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Slide {
        anchors.fill: parent
        Image {
            source: "slide.png"
            width: presentation.width
            height: presentation.height
            fillMode: Image.PreserveAspectCrop
            anchors.centerIn: parent
            anchors.fill: parent
        }
    }

    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
