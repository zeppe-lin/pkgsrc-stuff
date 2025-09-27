#!/bin/sh
# Launch Sherlock from /opt

CPATH=/opt/sherlock
PYVER=$(python3 -V 2>&1 | grep -Po '\d+\.\d+')

export PATH=$PATH:$CPATH/bin
export PYTHONPATH=$CPATH:$CPATH/usr/lib/python$PYVER/site-packages

exec python3 $CPATH/bin/sherlock "$@"

# End of file.
