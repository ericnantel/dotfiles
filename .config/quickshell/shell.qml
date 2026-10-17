
import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ShellRoot {
	Variants {
		model: Quickshell.screens
		delegate: PanelWindow {
			required property var modelData

			screen: modelData
			anchors {
				top: true
				left: true
				right: true
				bottom: true
			}
			color: "transparent"
			// mask: Region {}

			WlrLayershell.layer: WlrLayer.Bottom
			WlrLayershell.exclusionMode: ExclusionMode.Ignore

			//workspaces
			ColumnLayout {
				id: leftPanel

				anchors {
					top: parent.top
					left: parent.left
					
					topMargin: 360
				}
				spacing: 8

				Repeater {
					model: 9

					Rectangle {
						Layout.preferredWidth: 30
						Layout.preferredHeight: 30
						Layout.alignment: Qt.AlignVCenter
						Layout.leftMargin: 8
						color: "#AAAAAA"
						radius: 20

						Text {
							id: label
							anchors.centerIn: parent
							text: index + 1
							color: "#ABCDEF"
						}

						MouseArea {
							anchors.fill: parent
							onClicked: {
								var proc = Qt.createQmlObject('import Quickshell.Io; Process { }', parent);
								proc.command = ["swaymsg", "workspace", String(index + 1)];
								proc.running = true;
							}
						}
					}
				}
			}
			Row {
				anchors {
					right: parent.right
					bottom: parent.bottom
				}
				x: -30
				y: -30
				spacing: 30

				DesktopClock {
					clockScale: 1.0
					bgEnabled: false
				}
			}
		}
	}
}
