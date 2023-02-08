import QtQuick
import QtQuick.Controls

TextField {
	property double value
    property int precision
	validator: DoubleValidator{}
	onEditingFinished: value = parseFloat(text)
	onValueChanged: text = value.toFixed(precision)
}