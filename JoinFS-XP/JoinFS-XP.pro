QT += core

CONFIG += c++23
CONFIG += dll
CONFIG += build_all
CONFIG -= gui network debug_and_release debug_and_release_target

TEMPLATE = lib
DEFINES += JOINFS_XP_LIBRARY
TARGET = JoinFS-XP


XPSDK_BASE="$$PWD/../../xPlane/SDK"
XPMP2_BASE="$$PWD/../../LiveTraffic/Lib/XPMP2"

#versionAtLeast(QT_VERSION, 6.0.0)
#{
#}

macx {
    #QMAKE_APPLE_DEVICE_ARCHS = arm64
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 27.6
}

#LIBS += -F$${XPSDK_BASE}/Libraries/Mac -framework XPLM -framework XPWidgets
LIBS += -F/Users/christall/Development/xPlane/SDK/Libraries/Mac -framework XPLM -framework XPWidgets -framework XPMP2
LIBS += -F$${XPMP2_BASE}/lib/fmod
#LIBS += -F$${XPMP2_BASE}/build/Products/Debug -framework XPMP2
#LIBS += -F/Users/christall/Development/LiveTraffic/Lib/XPMP2

INCLUDEPATH += $${XPSDK_BASE}/CHeaders/XPLM $${XPSDK_BASE}/CHeaders/Widgets $${XPSDK_BASE}/inc $${XPSDK_BASE}/Libraries/Mac/XPMP2.framework/Headers
#DEFINES += QT_NO_CAST_FROM_BYTEARRAY
#DEFINES += QT_NO_CAST_TO_ASCII
DEFINES += XPLM440=1 XPLM420=1 XPLM411=1 XPLM400=1 XPLM303=1 XPLM301=1 XPLM300=1 XPLM210=1 XPLM200=1 APL=1 IBM=0 LIN=0

SOURCES += \
    Common.cpp \
    Link.cpp \
    JoinFS-XP.cpp

HEADERS += \
    Common.h \
    Link.h \
    JoinFS-XP.h

QMAKE_POST_LINK = ~/Development/JoinFS/JoinFS-XP/moveintoplace.zsh

# Default rules for deployment.
#unix {
#    target.path = /usr/lib
#}
#!isEmpty(target.path): INSTALLS += target