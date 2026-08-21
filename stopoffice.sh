#!/bin/sh

PIDFILE=/tmp/libreoffice-headless.pid

if [ -f $PIDFILE ]; then
    echo "Stopping LibreOffice server."
    kill `cat $PIDFILE`
    rm -f $PIDFILE
    echo "Done."
else
    echo "Not found PID file ($PIDFILE)"
fi

