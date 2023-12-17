#!/bin/sh
# h8mail wrapper

_CPATH=/opt/h8mail
_PYVER=$(python3 -V | grep -Po '\d\.\d')
export PATH=$PATH:$_CPATH/bin
export PYTHONPATH=$_CPATH:$_CPATH/usr/lib/python$_PYVER/site-packages

python3 /opt/h8mail/usr/bin/h8mail $@

# End of file.
