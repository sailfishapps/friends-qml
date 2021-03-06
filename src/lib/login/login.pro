include(../../globals.pri)

TEMPLATE = lib
VERSION = $${VERSION_MAJOR}.$${VERSION_MINOR}.$${VERSION_PATCH}

TARGET = $${NAME}login

QT = core

DEFINES += QFBLOGIN_LIBRARY

HEADERS +=  login_global.h \
            loginmanager.h \
            cookiejar.h
SOURCES +=  loginmanager.cpp \
            cookiejar.cpp



# Deployment
target.path = $${LIBDIR}

headers.path = $${INCLUDEDIR}/login
headers.files = $${HEADERS}

INSTALLS += target
contains(CONFIG, dev): INSTALLS += headers
