#!/bin/sh
# holehe wrapper

_CPATH=/opt/holehe
_PYVER=$(python3 -V | grep -Po '\d\.\d')
export PATH=$PATH:$_CPATH/bin
export PYTHONPATH=$_CPATH:$_CPATH/usr/lib/python$_PYVER/site-packages

python3 -c 'from holehe import core; core.main()' $@

# End of file.
