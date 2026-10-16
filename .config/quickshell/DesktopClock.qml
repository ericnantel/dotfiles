
import Quickshell
import QtQuick
import QtQuick.Layouts

Item {
	id: root
	property real clockScale: 1.0
	property bool bgEnabled: false

	implicitWidth: layout.implicitWidth + 40 * clockScale
	implicitHeight: layout.implicitHeight + 20 * clockScale

	RowLayout {
		id: layout

		anchors.centerIn: parent
		spacing: 20 * clockScale

		RowLayout {
			spacing: 10 * clockScale

			Text {
				text: {
					var h = clock.date.getHours();
					return String(h).padStart(2, '0');
				}
				font.family: "JetBrainsMono Nerd Font"
				font.pointSize: 64 * clockScale
				font.weight: Font.Bold
				color: "#FFFFFF"
			}

			Text {
				text: ":"
				font.family: "JetBrainsMono Nerd Font"
				font.pointSize: 64 * clockScale
				color: "#AAAAAA"
				opacity: 0.8
				Layout.topMargin: -20 * clockScale
			}

			Text {
				text: {
					var m = clock.date.getMinutes();
					return String(m).padStart(2, '0');
				}
				font.family: "JetBrainsMono Nerd Font"
				font.pointSize: 64 * clockScale
				font.weight: Font.Bold
				color: "#FFFFFF"
			}
		}

		Rectangle {
			Layout.fillHeight: true
			Layout.preferredWidth: 4 * clockScale
			Layout.topMargin: 20 * clockScale
			Layout.bottomMargin: 20 * clockScale
			radius: 1000
			color: "#AAAAAA"
			opacity: 0.8
		}

		ColumnLayout {
			spacing: 0

			Text {
				text: {
					var days = [
						"Dimanche",
						"Lundi",
						"Mardi",
						"Mercredi",
						"Jeudi",
						"Vendredi",
						"Samedi"
					];
					const weekday = days[clock.date.getDay()];
					const monthday = clock.date.getDate();
					// return weekday;
					return weekday + " " + monthday;
				}
				font.family: "JetBrainsMono Nerd Font"
				font.pointSize: 18 * clockScale
				font.letterSpacing: 2
				color: "#CCCCCC"
			}
			
			Text {
				text: {
					var months = [
						"Janvier",
						"Février",
						"Mars",
						"Avril",
						"Mai",
						"Juin",
						"Juillet",
						"Âout",
						"Septembre",
						"Octobre",
						"Novembre",
						"Décembre"
					];
					const day = clock.date.getDate();
					const month = months[clock.date.getMonth()];
					const year = clock.date.getFullYear();
					// return day + " " + month + " " + year;
					return month + " " + year;
				}
				font.family: "JetBrainsMono Nerd Font"
				font.pointSize: 16 * clockScale
				font.weight: Font.Medium
				font.letterSpacing: 2
				color: "#FFFFFF"
			}
		}
	}

	SystemClock {
		id: clock
		precision: SystemClock.Minutes
	}
}
