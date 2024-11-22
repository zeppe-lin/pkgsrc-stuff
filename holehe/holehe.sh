#!/bin/sh
# holehe wrapper

export PATH=$PATH:/opt/holehe/bin
export PYTHONPATH=/opt/holehe/bin:/opt/holehe:/opt/holehe$(python3 -c 'import site; print(site.getsitepackages()[0])')
python3 -c 'from holehe import core; core.main()' "$@"

# End of file.
