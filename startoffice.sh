#!/bin/sh

SOFFICE_PATH=soffice
PID_FILE=/tmp/libreoffice-headless.pid

$SOFFICE_PATH --headless --pidfile=$PID_FILE --accept="socket,host=localhost,port=2002;urp;" &

echo "Started."
