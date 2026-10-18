
import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ShellRoot {
	id: root
	property int currentWorkspace: 1
	property string currentLayout: "stacking"

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
					left: parent.left
					verticalCenter: parent.verticalCenter
				}
				spacing: 8

				Rectangle {
					anchors.fill: parent
					anchors.topMargin: 8
					anchors.leftMargin: 8
					color: "#9E83B8"
					radius: 5
				}

				Repeater {
					model: 5

					Rectangle {
						id: rect
						property int workspaceIndex: (index + 1)
						property bool active: currentWorkspace == workspaceIndex
						property bool minimize: currentLayout != "stacking"

						Layout.preferredWidth: 32
						Layout.preferredHeight: 32
						Layout.alignment: Qt.AlignVCenter
						Layout.topMargin: 4
						Layout.rightMargin: 4
						Layout.leftMargin: 8 + 4
						Layout.bottomMargin: 4
						color: (active || area.containsMouse) ? "#CCBBDB" : "#A2ABA1"
						radius: 7

						Text {
							id: label

							anchors.centerIn: parent
							text: workspaceIndex
							color: "#000000"
							font.family: "JetBrainsMono Nerd Font"
							font.pointSize: 10
						}

						MouseArea {
							id: area
							anchors.fill: parent
							hoverEnabled: true
							acceptedButtons: Qt.LeftButton | Qt.RightButton
							onClicked: {
								var proc = Qt.createQmlObject('import Quickshell.Io; Process { }', parent);
								proc.command = ["swaymsg", "workspace", String(workspaceIndex)];
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

	Process {
		id: workspaceProcess
		command: ["sh", "-c", "swaymsg -t get_workspaces | jq -r '.[] | select(.focused == true) | .num'"]
		stdout: SplitParser {
			onRead: data => {
				if (data && data.trim()) {
					var num = parseInt(data.trim());
					if (!isNaN(num)) {
						currentWorkspace = num;
					}
				}
			}
		}
		Component.onCompleted: running = true
	}

	//NOTE: this is no longer working (at least on recent version of swaymsg)
	//However if you run swaymsg -t get_workspaces you'll see that in the representation
	//You can have H[S which stands for stacking
	//H[T which stands for tabbed
	//H[H which stands for splith
	//H[V which stands for splitv
	Process {
		id: layoutProcess
		command: ["sh", "-c", "swaymsg -t get_tree | jq -r '.. | select(.focused? == true) | .layout // empty' | head -1"]
		stdout: SplitParser {
			onRead: data => {
				if (data && data.trim()) {
					var layout = data.trim();
					currentLayout = layout;
				}
			}
		}
		Component.onCompleted: running = true
	}

	Timer {
		interval: 200
		running: true
		repeat: true
		onTriggered: {
			workspaceProcess.running = true;
			layoutProcess.running = true;
		}
	}
}
