% zoidtorrent-NOX(1) Command line Bittorrent client written in C++ / Qt
% Christophe Dumez <chris@zoidtorrent.org>
% January 16th 2010

# NAME
zoidtorrent-nox - a command line Bittorrent client written in C++ / Qt


# SYNOPSIS
**zoidtorrent-nox** `[--d|--daemon] [--webui-port=x] [TORRENT_FILE | URL]...`

**zoidtorrent-nox** `--help`

**zoidtorrent-nox** `--version`


# DESCRIPTION
**zoidtorrent-nox** is an advanced command-line Bittorrent client written in C++ / Qt
using the **libtorrent-rasterbar** library by Arvid Norberg.
zoidtorrent-nox aims to be a good alternative to other command line bittorrent
clients and provides features similar to popular graphical clients.

zoidtorrent-nox is fast, stable, light and it supports unicode. It also comes with
UPnP port forwarding / NAT-PMP, encryption (Vuze compatible), FAST extension (mainline)
and PeX support (utorrent compatible).

zoidtorrent-nox is meant to be controlled via its feature-rich Web UI which is
accessible as a default on http://localhost:8080. The Web UI access is secured and
the default account user name is "admin" with "adminadmin" as a password.


# OPTIONS
**`--help`** Prints the command line options.

**`--version`** Prints zoidtorrent program version number.

**`--webui-port=x`** Changes Web UI port to x (default: 8080).


# BUGS
If you find a bug, please report it at http://bugs.zoidtorrent.org
