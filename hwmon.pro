QT       += core gui
QT       += charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
CONFIG += warn_off

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Process.cpp \
    details.cpp \
    list_proc.cpp \
    main.cpp \
    systemmonitor.cpp \
    files.cpp \
    memorymap.cpp \
    properties.cpp \
    FileSystem.cpp \
    cpugraph.cpp \
    memorygraph.cpp \
    networkgraph.cpp \
    resource_usage.cpp

HEADERS += \
    Process.hpp \
    details.hpp \
    list_proc.hpp \
    systemmonitor.h \
    files.h \
    memorymap.h \
    properties.h \
    FileSystem.hpp \
    cpugraph.hpp \
    memorygraph.hpp \
    networkgraph.hpp \
    resource_usage.hpp

FORMS += \
    systemmonitor.ui \
    files.ui \
    memorymap.ui \
    properties.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
