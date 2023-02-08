import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        anchors.centerIn: parent

        Text { text: "Example 1" }

        Row {
            id: row1
            property double foo: 2.0
            spacing: 10
            Slider {
                id: slider1
                width: 200
                height: 20
                from: 0
                to: 100
                value: row1.foo
                onValueChanged: row1.foo = value
            }
            Slider {
                id: slider2
                width: 200
                height: 20
                from: 0
                to: 100
                value: row1.foo
                onValueChanged: row1.foo = value
            }
        }

        Item { implicitHeight: 50; implicitWidth: 1}

        Text { text: "Example 2" }

        Row {
            id: row2
            property double foo: 2.0
            spacing: 10
            Slider {
                id: slider
                width: 200
                height: 20
                from: 0
                to: 100
                value: row2.foo
                onValueChanged: row2.foo = value
            }
            DoubleField {
                id: doubleField
                width: 40
                height: 20
                precision: 2
                value: row2.foo
                onValueChanged: row2.foo = value
            }
        }
    }
}
