# The first path is used when the source is being build by packagers (pbuilder/sbuild/etc)
# The second path is used when you manually run the configure script in the root folder (eg when using qt creator)
exists($$OUT_PWD/../conf.pri) {
    include($$OUT_PWD/../conf.pri)
}
else {
    include(conf.pri)
}

# COMPILATION SPECIFIC
!nogui:dbus: QT += dbus

QMAKE_CXXFLAGS += -Wall -Wextra -Wpedantic -Wformat-security
!haiku: QMAKE_LFLAGS_APP += -rdynamic

# Man page
nogui {
    man.files = ../doc/zoidtorrent-nox.1
}
else {
    man.files = ../doc/zoidtorrent.1
}

man.path = $$MANPREFIX/man1
INSTALLS += man

DIST_PATH = ../dist/unix

# Systemd Service file
nogui:systemd {
    systemdService.files = $$DIST_PATH/systemd/zoidtorrent-nox@.service
    systemdService.path = $$PREFIX/lib/systemd/system
    INSTALLS += systemdService
}

# Menu Icon
!nogui {
    desktopEntry.files = $$DIST_PATH/org.zoidtorrent.zoidtorrent.desktop
    desktopEntry.path = $$DATADIR/applications
    INSTALLS += desktopEntry

    appdata.files = $$DIST_PATH/org.zoidtorrent.zoidtorrent.appdata.xml
    appdata.path = $$DATADIR/metainfo
    INSTALLS += appdata

    menuicons.files = $$DIST_PATH/menuicons/*
    menuicons.path = $$DATADIR/icons/hicolor
    statusIconScalable.files = $$PWD/src/icons/zoidtorrent-tray.svg \
                               $$PWD/src/icons/zoidtorrent-tray-dark.svg \
                               $$PWD/src/icons/zoidtorrent-tray-light.svg
    statusIconScalable.path = $$DATADIR/icons/hicolor/scalable/status
    INSTALLS += \
        menuicons \
        statusIconScalable

    pixmap.files = $$DIST_PATH/menuicons/128x128/apps/zoidtorrent.png
    pixmap.path = $$DATADIR/pixmaps
    INSTALLS += pixmap
}

# INSTALL
target.path = $$PREFIX/bin
INSTALLS += target
