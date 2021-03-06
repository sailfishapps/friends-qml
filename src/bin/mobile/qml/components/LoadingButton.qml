/****************************************************************************************
 * Copyright (C) 2012 Lucien XU <sfietkonstantin@free.fr>                               *
 *                                                                                      *
 * This program is free software; you can redistribute it and/or modify it under        *
 * the terms of the GNU General Public License as published by the Free Software        *
 * Foundation; either version 3 of the License, or (at your option) any later           *
 * version.                                                                             *
 *                                                                                      *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY      *
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A      *
 * PARTICULAR PURPOSE. See the GNU General Public License for more details.             *
 *                                                                                      *
 * You should have received a copy of the GNU General Public License along with         *
 * this program.  If not, see <http://www.gnu.org/licenses/>.                           *
 ****************************************************************************************/

import QtQuick 1.1
import com.nokia.meego 1.0
import "../UiConstants.js" as Ui

Item {
    id: container
    property QtObject model
    property string text
    property bool haveMore: true
    signal clicked()
    visible: (haveMore && container.model.count > 0) || model.loading
    width: parent.width
    height: (haveMore && container.model.count > 0) || model.loading ? button.height : 0

    BusyIndicator {
        anchors.verticalCenter: button.verticalCenter
        anchors.right: button.left; anchors.rightMargin: Ui.MARGIN_DEFAULT
        visible: container.model.loading
        running: visible
    }

    Button {
        id: button
        visible: (container.model.haveNext && container.model.count > 0) || container.model.loading
        anchors.horizontalCenter: parent.horizontalCenter
        text: !container.model.loading ? container.text : qsTr("Loading")
        enabled: !container.model.loading
        onClicked: container.clicked()
    }
}
