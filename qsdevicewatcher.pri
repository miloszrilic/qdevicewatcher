
unix {
  macx {
    SOURCES += $$PWD/src/qdevicewatcher_mac.cpp
    LIBS += -framework DiskArbitration -framework Foundation
  } else {
    SOURCES += $$PWD/src/qdevicewatcher_linux.cpp
  }
}
win32 {
  wince*: SOURCES += $$PWD/src/qdevicewatcher_wince.cpp
  else:  SOURCES += $$PWD/src/qdevicewatcher_win32.cpp
  LIBS *= -luser32
}

SOURCES += $$PWD/src/qdevicewatcher.cpp

HEADERS += \
    $$PWD/src/qdevicewatcher_p.h \
    $$PWD/src/qdevicewatcher.h

RESOURCES += \
    $$PWD/seq_skytek_qdevicewatcher.qrc

