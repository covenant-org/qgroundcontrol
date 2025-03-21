#!/bin/sh

export LD_LIBRARY_PATH="$APPDIR/usr/lib:$APPDIR/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"

HERE="$(dirname "$(readlink -f "${0}")")"

# hack until icon issue with AppImage is resolved
mkdir -p ~/.icons && cp "${HERE}/qgroundcontrol.png" ~/.icons

export QT_QPA_PLATFORM="xcb"

"${HERE}/usr/bin/QGroundControl" "$@"
