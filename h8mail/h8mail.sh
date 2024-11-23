#!/bin/sh
# h8mail wrapper

export PATH=$PATH:/opt/h8mail/bin:/opt/h8mail/usr/bin
export PYTHONPATH=/opt/h8mail/bin:/opt/h8mail/usr/bin:/opt/h8mail:/opt/h8mail$(python3 -c 'import site; print(site.getsitepackages()[0])')
python3 /opt/h8mail/usr/bin/h8mail "$@"

# End of file.
