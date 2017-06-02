/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.7
import QtQuick.Window 2.2


Window {
    id: win
    visible: true
    width: 640
    height: 640
    objectName: "win"

    property var matrixTest :
        Qt.matrix4x4(791089.5, 0, -320, -141719.703125,
                     0, 791089.5, -320, -104570.9375,
                     0, 0, -1, 770.54833984375,
                     0, 0, -1, 772.54833984375)

    property var matrixTestTilted:
        Qt.matrix4x4(791089.5, -247838.46875, -209.33607482910156, -18216.14453125,
                     0, 269672.6875, -793.6475830078125, 109700.953125,
                     0, -774.4952392578125, -0.6541752815246582, 1165.4876708984375,
                     0, -774.4952392578125, -0.6541752815246582, 1167.4876708984375)

    property var matrixXample: Qt.matrix4x4(10000,        0, 0, 200,
                                            0,        10000, 0, 200,
                                            0,           0,            1, 0,
                                            0,           0,            0, 1)
    Rectangle {
        id: rect
        objectName: "rect"
        color: "red"
        x: 160.4
        y: 160.4
//        width: 0.01
//        height: 0.01
        width: 0.3
        height: 0.2

        transform: Matrix4x4 {
            matrix: matrixTestTilted

        }


        MouseArea {
            id: maRect
            objectName: "maRect"
            anchors.fill: parent
            drag.target: parent

            onPressed: {
                console.log("pressed " + x + " " + y + " " + width + " " + height)
            }
        }
    }

}
