zoidtorrent - A BitTorrent client in Qt
------------------------------------------

[![TravisCI Status](https://travis-ci.org/zoidtorrent/zoidtorrent.svg?branch=master)](https://travis-ci.org/zoidtorrent/zoidtorrent)
[![AppVeyor Status](https://ci.appveyor.com/api/projects/status/github/zoidtorrent/zoidtorrent?branch=master&svg=true)](https://ci.appveyor.com/project/zoidtorrent/zoidtorrent)
[![GitHub Actions CI Status](https://github.com/zoidtorrent/zoidtorrent/workflows/GitHub%20Actions%20CI/badge.svg)](https://github.com/zoidtorrent/zoidtorrent/actions)
[![Coverity Status](https://scan.coverity.com/projects/5494/badge.svg)](https://scan.coverity.com/projects/5494)
********************************
### Description:
zoidtorrent is a bittorrent client programmed in C++ / Qt that uses
libtorrent (sometimes called libtorrent-rasterbar) by Arvid Norberg.

It aims to be a good alternative to all other bittorrent clients
out there. zoidtorrent is fast, stable and provides unicode
support as well as many features.

The free [IP to Country Lite database](https://db-ip.com/db/download/ip-to-country-lite) by [DB-IP](https://db-ip.com/) is used for resolving the countries of peers. The database is licensed under the [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

### Installation:
For installation, follow the instructions from INSTALL file, but simple:

```
./configure
make && make install
zoidtorrent
```

will install and execute zoidtorrent hopefully without any problem.

### Public key:
Starting from v3.3.4 all source tarballs and binaries are signed.<br />
The key currently used is 4096R/[5B7CC9A2](https://pgp.mit.edu/pks/lookup?op=get&search=0x6E4A2D025B7CC9A2) with fingerprint `D8F3DA77AAC6741053599C136E4A2D025B7CC9A2`.<br />
You can also download it from [here](https://github.com/zoidtorrent/zoidtorrent/raw/master/5B7CC9A2.asc).<br />
**PREVIOUSLY** the following key was used to sign the v3.3.4 source tarballs and v3.3.4 Windows installer **only**: 4096R/[520EC6F6](https://pgp.mit.edu/pks/lookup?op=get&search=0xA1ACCAE4520EC6F6) with fingerprint `F4A5FD201B117B1C2AB590E2A1ACCAE4520EC6F6`.<br />

### Misc:
For more information please visit:
https://www.zoidtorrent.org

or our wiki here:
http://wiki.zoidtorrent.org

Use the forum for troubleshooting before reporting bugs:
http://forum.zoidtorrent.org

Please report any bug (or feature request) to:
http://bugs.zoidtorrent.org

You can also meet me (sledgehammer_999) on IRC:
`#zoidtorrent on irc.freenode.net`

------------------------------------------
sledgehammer999 <sledgehammer999@zoidtorrent.org>


### Build Notes:

Run 'x64 Native Tools Command Prompt for VS 2019'<br />

Upgrade vcpkg:<br />
cd D:\Repos\vcpkg<br />
git pull<br />
.\bootstrap-vcpkg.bat -disableMetrics<br />
.\vcpkg integrate install<br />

Upgrade vcpkg packages (VERY LONG OPERATION):<br />
cd D:\Repos\vcpkg<br />
vcpkg upgrade --no-dry-run<br />

Build:<br />
cd D:\repos\zoidtorrent<br />
cmake -G "Ninja" -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE="D:/Repos/vcpkg/scripts/buildsystems/vcpkg.cmake" -DVCPKG_TARGET_TRIPLET="x64-windows-static" -DMSVC_RUNTIME_DYNAMIC=OFF<br />

cmake --build build<br />

### Icons:
https://derivv.com/<br />

https://imagemagick.org/script/download.php<br />
D:\repos\zoidtorrent\src\icons\zoidberg\main> magick convert 16.png 20.png 24.png 28.png 30.png 31.png 32.png 40.png 42.png 47.png 48.png 56.png 60.png 63.png 64.png 72.png 84.png 96.png 128.png 180.png 255.png 256.png -colors 256 -transparent white zicon.ico<br />
