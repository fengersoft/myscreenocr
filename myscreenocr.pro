QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include(src/api/ocrlib/ocrlib.pri)

SOURCES += \
    src/api/capture/capturewindow.cpp \
    src/api/ocr/ocrapi.cpp \
    src/main.cpp \
    src/mainwindow.cpp

HEADERS += \
    src/api/capture/capturewindow.h \
    src/api/ocr/ocrapi.h \
    src/mainwindow.h

FORMS += \
    src/api/capture/capturewindow.ui \
    src/mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DESTDIR=$$PWD/bin


