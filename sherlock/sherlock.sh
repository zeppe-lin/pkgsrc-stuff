#!/bin/sh
# sherlock launcher

CPATH=/opt/sherlock
PYVER=$(python3 -V | grep -Po '\d\.\d')
export PATH=$PATH:$CPATH/bin
export PYTHONPATH=$CPATH:$CPATH/usr/lib/python$PYVER/site-packages
python3 /opt/sherlock/sherlock/sherlock.py "$@"

# End of file.
